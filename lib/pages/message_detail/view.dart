import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/components/back_navigation_button/view.dart';
import 'package:sora/components/image_preview/view.dart';
import 'package:sora/components/message_list_tile/view.dart';
import 'package:sora/components/network_image/view.dart';
import 'package:sora/pages/message_detail/model.dart';
import 'package:sora/pages/message_detail/view_model.dart';
import 'package:url_launcher/link.dart';

Future<void> pushReplyingMessageDetailPage(
  BuildContext context, {
  required String messageId,
  required String replyText,
}) =>
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProviderScope(
          overrides: [
            messageDetailPageMessageIdProvider.overrideWithValue(messageId),
            messageDetailPageViewModelProvider.overrideWith(
              (ref) => MessageDetailPageViewModel(
                ref,
                MessageDetailPageModel(
                  messageId: messageId,
                  replyText: replyText,
                  editingReplyText: true,
                  soraShown: true,
                ),
              ),
            )
          ],
          child: const _MessageDetailPage(),
        ),
      ),
    );

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
    final viewModel = ref.watch(messageDetailPageViewModelProvider.notifier);

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
      body: Stack(
        children: [
          ListView(
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
              Text(
                message.message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
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
                    viewportFraction: _imageCarouselItemWidth /
                        MediaQuery.of(context).size.width,
                    enableInfiniteScroll: false,
                    padEnds: false,
                  ),
                ),
              if (message.nonImageFileNames.isNotEmpty)
                const SizedBox(height: 20),
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
                    viewportFraction: _fileCarouselItemWidth /
                        MediaQuery.of(context).size.width,
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
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
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
              const SizedBox(height: 20),
              if (!message.replied)
                Align(
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.showSora();
                      if (model.replyText.isEmpty) {
                        viewModel.startSelectingReplyType();
                      } else {
                        viewModel.startEditingReplyText();
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '返信する',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          const SizedBox(width: 2),
                          const Icon(Icons.arrow_forward_ios, size: 14)
                        ],
                      ),
                    ),
                  ),
                ),
              if (message.replied)
                LayoutBuilder(
                  builder: (context, constraints) => Column(
                    children: [
                      Text(
                        '返信済み',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
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
          if (model.selectingReplyType || model.editingReplyText)
            GestureDetector(
              onTap: () {
                viewModel
                  ..stopSelectingReplyType()
                  ..stopEditingReplyText()
                  ..hideSora();
              },
              child: Container(color: const Color.fromARGB(5, 0, 0, 0)),
            ),
          if (model.selectingReplyType)
            Positioned(
              bottom: 120,
              left: 0,
              right: 0,
              child: Card(
                elevation: 6,
                surfaceTintColor: Theme.of(context).colorScheme.surface,
                margin: const EdgeInsets.symmetric(horizontal: 28),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Text(
                        '返信するニュアンスを選択してください',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              viewModel
                                ..stopSelectingReplyType()
                                ..startEditingReplyText()
                                ..updateReplyText(message.negativeReply)
                                ..replyTextControllerText =
                                    message.negativeReply;
                            },
                            style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 32),
                              ),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  color: Color.fromARGB(255, 0, 149, 255),
                                  width: 1.5,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Text(
                              '否定的',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color:
                                        const Color.fromARGB(255, 0, 149, 255),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              viewModel
                                ..stopSelectingReplyType()
                                ..startEditingReplyText()
                                ..updateReplyText(message.positiveReply)
                                ..replyTextControllerText =
                                    message.positiveReply;
                            },
                            style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 32),
                              ),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  color: Color.fromARGB(255, 255, 115, 0),
                                  width: 1.5,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            child: Text(
                              '肯定的',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color:
                                        const Color.fromARGB(255, 255, 115, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (model.editingReplyText)
            Positioned(
              bottom: 120,
              left: 0,
              right: 0,
              child: Card(
                elevation: 6,
                surfaceTintColor: Theme.of(context).colorScheme.surface,
                margin: const EdgeInsets.symmetric(horizontal: 28),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          controller: viewModel.replyTextController,
                          onChanged: viewModel.updateReplyText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                          ),
                          style: Theme.of(context).textTheme.labelMedium,
                          maxLines: 20,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () async {
                          viewModel
                            ..stopEditingReplyText()
                            ..hideSora();
                          await viewModel
                              .reply()
                              .then((_) => Navigator.of(context).pop());
                        },
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 64),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary,
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '送信',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.send_rounded,
                              size: 20,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: model.soraShown ? -100 : -195,
            left: 0,
            right: 0,
            child: IgnorePointer(
              child: Image.asset(
                'assets/images/sora/Sora-full.png',
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
