String formatWithWeekday(DateTime date) {
  final now = DateTime.now();
  final weekdays = ['月', '火', '水', '木', '金', '土', '日'];
  final weekday = weekdays[
      date.weekday - 1]; // DateTimeのweekdayは1から7の値を返すため、-1して配列のインデックスとして使用

  // 午前 or 午後の判断
  final ampm = date.hour < 12 ? '午前' : '午後';

  // 午前・午後表示のための時間調整（13時以降は1から数える）
  final adjustedHour = date.hour <= 12 ? date.hour : date.hour - 12;

  // 今日の日付と指定された日付が同じであるかどうかを確認
  if (date.year == now.year && date.month == now.month && date.day == now.day) {
    return '$ampm $adjustedHour:${date.minute.toString().padLeft(2, '0')}';
  } else {
    return '${date.month}/${date.day}($weekday)';
  }
}
