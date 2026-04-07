class Product {
  final String name;
  final double price;
  final String description;

  Product({
    required this.name,
    required this.price,
    this.description = 'No description available',
  });
}
