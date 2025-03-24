class ProductData {
  final int id;
  final int itemId;
  final String volumeName;
  final String product;
  final String image;
  final String ingredients;
  final int timePreparing;
  final double price;
  final int count;
  final double totalPrice;

  ProductData(
      {required this.id,
        required this.itemId,
      required this.volumeName,
      required this.product,
      required this.image,
      required this.ingredients,
      required this.timePreparing,
      required this.price,
      required this.count,
        required this.totalPrice
      });
}
