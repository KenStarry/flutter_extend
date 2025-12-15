enum CardType {
  visa,
  mastercard,
  amex,
  discover;

  String get label => switch (this) {
        visa => 'visa',
        mastercard => 'mastercard',
        amex => 'amex',
        discover => 'discover',
      };
}
