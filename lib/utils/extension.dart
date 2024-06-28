import 'package:intl/intl.dart';

extension NumberFormatExtension on int {
  String getCurrency() {
    final tempPrice = NumberFormat('#,##0').format(this);
    final price = tempPrice.replaceAll(',', '.');
    return 'Rp. $price';
  }
}
