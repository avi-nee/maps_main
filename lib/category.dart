class Category {
  String label;
  String pending;
  String amount;

  Category(
    this.label,
    this.pending,
    this.amount,
  );
  static List<Category> samples = [
    Category(
      'Service Tax',
      '10',
      '100',
    ),
    Category(
      'Central Excise',
      '8',
      '80',
    ),
    Category(
      'Goods and Services Tax',
      '6',
      '70',
    ),
    
  ];
}
