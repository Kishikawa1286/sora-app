import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/back_navigation_button/view.dart';
import 'package:sora/components/image_preview/view.dart';
import 'package:sora/components/message_list_tile/view.dart';
import 'package:sora/components/network_image/view.dart';
import 'package:sora/pages/message_detail/view_model.dart';
import 'package:url_launcher/link.dart';

class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({required this.messageId, super.key});

  final String messageId;

  @override
  Widget build(BuildContext context) => ProviderScope(
        overrides: [
          messageDetailPageMessageIdProvider.overrideWithValue(messageId),
        ],
        child: const _MessageDetailPage(),
      );
}

class _MessageDetailPage extends HookConsumerWidget {
  const _MessageDetailPage();

  static const double _carouselItemHeight = 100;
  static const double _imageCarouselItemWidth = 150;
  static const double _fileCarouselItemWidth = 150;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(messageDetailPageViewModelProvider);
    final message = model.message;
    final slackMessage = model.slackMessage;

    if (message == null || slackMessage == null) {
      return Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: const Padding(
            padding: EdgeInsets.all(16),
            child: BackNavigationButton(label: 'メッセージ一覧'),
          ),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.all(16),
          child: BackNavigationButton(label: 'メッセージ一覧'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text(
            message.summary,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          MessageListTile(
            message: message,
            subtitle: slackMessage.slackTeamName,
          ),
          const SizedBox(height: 8),
          Text(message.message, style: Theme.of(context).textTheme.bodyMedium),
          if (message.imageUrls.isNotEmpty) const SizedBox(height: 20),
          if (message.imageUrls.isNotEmpty)
            CarouselSlider(
              items: message.imageUrls
                  .map(
                    (url) => PlaceholdedNetworkImage(
                      onTap: () async {
                        await Future.microtask(
                          () => pushImagePreviewPage(
                            context,
                            image: Image.network(
                              url,
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                      url: url,
                      height: _carouselItemHeight,
                      width: _imageCarouselItemWidth,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: _carouselItemHeight,
                viewportFraction:
                    _imageCarouselItemWidth / MediaQuery.of(context).size.width,
                enableInfiniteScroll: false,
                padEnds: false,
              ),
            ),
          if (message.nonImageFileNames.isNotEmpty) const SizedBox(height: 20),
          if (message.nonImageFileNames.isNotEmpty)
            CarouselSlider(
              items: message.nonImageFileNames
                  .map(
                    (fileName) => SizedBox(
                      height: _carouselItemHeight,
                      width: _fileCarouselItemWidth,
                      child: Card(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Icon(Icons.insert_drive_file),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                fileName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: _carouselItemHeight,
                viewportFraction:
                    _fileCarouselItemWidth / MediaQuery.of(context).size.width,
                enableInfiniteScroll: false,
                padEnds: false,
              ),
            ),
          if (message.isScheduleAdjustment) const SizedBox(height: 20),
          if (message.isScheduleAdjustment)
            LayoutBuilder(
              builder: (context, constraints) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/slider-icon/calendar-icon.svg',
                      ),
                      Text(
                        '日程調整リンクを送信済み',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      child: Text(
                        message.botMessage,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (message.replied) const SizedBox(height: 20),
          if (message.replied)
            LayoutBuilder(
              builder: (context, constraints) => Column(
                children: [
                  Text(
                    '返信済み',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      child: Text(
                        message.reply,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (message.redirectUrl != null) const SizedBox(height: 24),
          if (message.redirectUrl != null)
            Link(
              // Null check is done in the if statement above
              uri: Uri.tryParse(message.redirectUrl!),
              builder: (context, followLink) => Center(
                child: GestureDetector(
                  onTap: followLink,
                  child: Text(
                    'Slackで開く',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
