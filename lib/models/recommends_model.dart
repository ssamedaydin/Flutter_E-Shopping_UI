class RecommendsModel {
  String title;
  String price;
  String imgUrl;

  RecommendsModel(
      {required this.title, required this.price, required this.imgUrl});


  static List<RecommendsModel> recommends = [
    RecommendsModel(
      title: "Bol Kesim Beyaz Ceket Takım",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1587003484867-ba695bd4e4ac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
    ),
    RecommendsModel(
      title: "Yeni Yazlık Kore Versiyonu",
      price: "60",
      imgUrl: "https://images.unsplash.com/photo-1583002083769-0bd781675d2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
    ),
    RecommendsModel(
      title: "Yeni Yazlık Modern Elbise",
      price: "45",
      imgUrl: "https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
    ),
    RecommendsModel(
      title: "Kısa Kesim Cotton Elbise",
      price: "40",
      imgUrl: "https://images.unsplash.com/photo-1523259152673-944fc5106b60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
    ),
    RecommendsModel(
      title: "Yeni Spor Kore Versiyonu",
      price: "30",
      imgUrl: "https://images.unsplash.com/photo-1552902865-b72c031ac5ea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=688&q=80",
    ),
  ];
}