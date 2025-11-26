extension DateTimeExtensions on DateTime {
  /// Format: dd-MM-yyyy
  String toFormattedDate() {
    return "${this.day.toString().padLeft(2, '0')}-"
           "${this.month.toString().padLeft(2, '0')}-"
           "${this.year}";
  }

  /// Format: HH:mm (24-hour)
  String toFormattedTime() {
    return "${this.hour.toString().padLeft(2, '0')}:"
           "${this.minute.toString().padLeft(2, '0')}";
  }

  /// Returns true if the date is today
  bool get isToday {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  /// Returns true if the date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  /// Returns only date part (time removed)
  DateTime get onlyDate => DateTime(year, month, day);

  /// Add days more easily
  DateTime addDays(int days) => this.add(Duration(days: days));

  /// Subtract days
  DateTime subtractDays(int days) => this.subtract(Duration(days: days));

  /// Difference in days
  int differenceInDays(DateTime other) {
    return this.difference(other).inDays;
  }

  /// Convert to "x min ago", "y hrs ago"
  String timeAgo() {
    final diff = DateTime.now().difference(this);

    if (diff.inSeconds < 60) {
      return "just now";
    } else if (diff.inMinutes < 60) {
      return "${diff.inMinutes} min ago";
    } else if (diff.inHours < 24) {
      return "${diff.inHours} hrs ago";
    } else if (diff.inDays < 7) {
      return "${diff.inDays} days ago";
    } else {
      return toFormattedDate();
    }
  }
}
