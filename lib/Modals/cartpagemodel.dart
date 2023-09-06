class CartModel{
 final String? productName;
 final String? productImage;
 final int? productPrice;
 final String? color;
 final String? size;
 final int? id;
  CartModel(
      {required this.productName,
        required this.productImage,
        required this.productPrice,
        required this.color,
        this.id ,
        required this.size});
}