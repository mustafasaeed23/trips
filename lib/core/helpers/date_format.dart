String tripDateformat(String? startDate, String? endDate) {
  if (startDate == null || endDate == null) return '';

  try {
    // Assuming your dates are in "dd-MM-yyyy" format
    final start = DateTime.parse(
      startDate.split('-').reversed.join('-'),
    );
    final end = DateTime.parse(
      endDate.split('-').reversed.join('-'),
    );

    final nights = end.difference(start).inDays;

    final monthNames = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];

    final startStr = '${start.day} ${monthNames[start.month - 1]}';
    final endStr = '${end.day} ${monthNames[end.month - 1]}, ${end.year}';

    return '$nights Nights ($startStr – $endStr)';
  } catch (e) {
    return '$startDate - $endDate';
  }
}
