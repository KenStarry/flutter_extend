part of '../flutter_extend.dart';

extension CurrencyExtensions on String {
  String get thousandNumberFormat {
    String amountString = "0";

    if (isEmpty) {
      amountString = "0";
    } else {
      amountString = this;
    }
    amountString = amountString.cleanNumbers;
    double? amount = double.tryParse(amountString);

    amount ??= 0;

    var formatter = NumberFormat("#,##0.##########");
    String convertedAmount = formatter.format(amount);

    return convertedAmount;
  }

  String get cleanNumbers {
    return replaceAll(",", "");
  }
}
