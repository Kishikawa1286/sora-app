import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:sora/components/back_navigation_button/view.dart';

Future<void> pushWebViewPage(BuildContext context, {required String url}) =>
    Navigator.of(context).push<void>(
      MaterialPageRoute(builder: (_) => _AppWebView(url: url)),
    );

class _AppWebView extends StatelessWidget {
  const _AppWebView({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          leading: const Padding(
            padding: EdgeInsets.all(16),
            child: BackNavigationButton(label: 'チャットアカウント管理'),
          ),
        ),
        body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(url)),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                userAgent:
                    // User agent of Desktop PC browser
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.4515.159 Safari/537.36',
                horizontalScrollBarEnabled: false,
                verticalScrollBarEnabled: false,
                javaScriptCanOpenWindowsAutomatically: true,
              ),
              ios: IOSInAppWebViewOptions(sharedCookiesEnabled: true),
            ),
            onLoadStop: (controller, uri) async {
              // Wait for 2 seconds to make sure the page is fully loaded
              await Future.delayed(const Duration(milliseconds: 400));
              const script = '''
                var loginButton = document.getElementById("google_login_button");
                if (loginButton) {
                  loginButton.style.display = "none";
                }
              ''';
              await controller.evaluateJavascript(source: script);
            },
          ),
        ),
      );
}
