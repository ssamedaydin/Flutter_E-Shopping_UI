class CartListModel {
  String imgUrl;
  String name;
  String ref;
  String price;
  String size;

  CartListModel({required this.imgUrl, required this.name, required this.ref, required this.price, required this.size});

  static List<CartListModel> cartList = [
    CartListModel(
        imgUrl: "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        name: "Snoopy T-shirt",
        ref: "04559812",
        price: "\₺95",
        size: "S"
    ),
    CartListModel(
        imgUrl: "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        name: "American",
        ref: "04459811",
        price: "\₺65",
        size: "M"
    ),

  ];

}