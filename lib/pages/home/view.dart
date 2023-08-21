import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/view.dart';
import 'package:sora/pages/home/view_model.dart';

class Home extends HookConsumerWidget {
  const Home({
    required this.tab,
    super.key,
  });

  final int tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider(tab).notifier);
    final model = ref.watch(homeViewModelProvider(tab));
    final currentTab = model.currentTab;

    return Scaffold(
      body: _getBody(currentTab),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: viewModel.updateCurrentTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'メッセージ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'チャンネル管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'オプション',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const Center(child: Text('メッセージタブの内容'));
      case 1:
        return const ChannelManagePage();
      case 2:
        return const Center(child: Text('オプションタブの内容'));
      default:
        return const Center(child: Text('メッセージタブの内容'));
    }
  }
}
