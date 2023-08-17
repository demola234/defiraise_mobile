import 'package:intl/intl.dart';

extension EndDateTimeExtension on DateTime {
  String endTime({bool numericDates = true}) {
    final date2 = DateTime.now();
    final formatDateTime = DateFormat('yyyy-MM-dd HH:mm:ss');
    final date1 = formatDateTime.parse(toString());
    final difference = date1.difference(date2);
    // check for more than 1 year
    if (difference.inDays >= 365) {
      return (numericDates) ? 'Ends in 1 year' : 'Last year';
    }
    // check for more than 1 month
    else if (difference.inDays <= 30) {
      return (numericDates) ? 'Ends in 1 month' : 'Last month';
    } else if (difference.inDays <= 60) {
      return (numericDates) ? 'Ends in 2 months' : 'Ends in 2 months';
    } else if (difference.inDays <= 90) {
      return (numericDates) ? 'Ends in 3 months' : '3 months';
    } else if (difference.inDays <= 120) {
      return (numericDates) ? 'Ends in 4 months' : 'Ends in 4 months';
    } else if (difference.inDays <= 150) {
      return (numericDates) ? 'Ends in 5 months' : 'Ends in 5 months';
    } else if (difference.inDays <= 180) {
      return (numericDates) ? 'Ends in 6 months' : 'Ends in 6 months';
    } else if (difference.inDays <= 210) {
      return (numericDates) ? 'Ends in 7 months' : 'Ends in 7 months';
    } else if (difference.inDays <= 240) {
      return (numericDates) ? 'Ends in 8 months' : 'Ends in 8 months';
    } else if (difference.inDays <= 270) {
      return (numericDates) ? 'Ends in 9 months' : 'Ends in 9 months';
    } else if (difference.inDays <= 300) {
      return (numericDates) ? 'Ends in 10 months' : 'Ends in 10 months';
    } else if (difference.inDays <= 330) {
      return (numericDates) ? 'Ends in 11 months' : 'Ends in 11 months';
    } else if (difference.inDays <= 360) {
      return (numericDates) ? 'Ends in 12 months' : 'Ends in 12 months';
    } else if ((difference.inDays / 7).floor() >= 4) {
      return (numericDates) ? 'Ends in 4 weeks' : 'Ends in 4 weeks';
    } else if ((difference.inDays / 7).floor() >= 3) {
      return (numericDates) ? 'Ends in 3 weeks' : 'Ends in 3 weeks';
    } else if ((difference.inDays / 7).floor() >= 2) {
      return (numericDates) ? 'Ends in 2 weeks' : 'Ends in 2 weeks';
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? ' Ends in 1 week' : 'Ends in Last week';
    } else if (difference.inDays >= 2) {
      return ' Ends in ${difference.inDays} days';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? 'Ends in 1 day' : 'Tomorrow';
    } else if (difference.inHours >= 2) {
      return 'Ends in ${difference.inHours} hours';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? 'Ends in 1 hour' : 'An hour';
    } else if (difference.inMinutes >= 2) {
      return 'Ends in ${difference.inMinutes} minutes';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? 'Closing soon' : 'A minute';
    } else if (difference.inSeconds >= 3) {
      return 'Donation has Closed';
    } else {
      return 'Donation has Closed';
    }
  }
}

// Set DateTime
extension TimePassed on DateTime {
  String timePass({bool numericDates = true}) {
    final date2 = DateTime.now();
    final formatDateTime = DateFormat('yyyy-MM-dd HH:mm:ss');
    final date1 = formatDateTime.parse(toString());
    final dur = date2.difference(date1);
    int days = dur.inDays;
    int years = days ~/ 365;
    int months = (days - (years * 365)) ~/ 30;
    int weeks = (days - (years * 365 + months * 30)) ~/ 7;
    int rdays = days - (years * 365 + months * 30 + weeks * 7).toInt();
    int hours = (dur.inHours % 24).toInt();
    int minutes = (dur.inMinutes % 60).toInt();
    int seconds = (dur.inSeconds % 60).toInt();
    var diff = {
      "d": rdays,
      "w": weeks,
      "m": months,
      "y": years,
      "s": seconds,
      "i": minutes,
      "h": hours
    };

    Map str = {
      'y': 'y',
      'mo': 'mo',
      'w': 'w',
      'd': 'd',
      'h': 'h',
      'm': 'm',
      's': 's',
    };

    str.forEach((k, v) {
      if (diff[k]! > 0) {
        str[k] = '${diff[k]}$v${diff[k]! > 1 ? '' : ''}';
      } else {
        str[k] = "";
      }
    });
    str.removeWhere((index, ele) => ele == "");
    List<String> tlist = [];
    str.forEach((k, v) {
      tlist.add(v);
    });
    if (numericDates) {
      return str.isNotEmpty ? "${tlist.join(", ")} " : "Just Now";
    } else {
      return str.isNotEmpty ? tlist[0] : "";
    }
  }
}
