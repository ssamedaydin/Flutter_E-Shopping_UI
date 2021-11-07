class RecentlyModel{
  String title;
  String price;
  String imgUrl;

  RecentlyModel({required this.title, required this.price, required this.imgUrl});

  static List<RecentlyModel> recently =[
    RecentlyModel(
      title: "Sonbahar Kot Modern Ceket",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1551713816-fd3b4a889969?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80",
    ),
    RecentlyModel(
      title: "Yeni Yazlık Akdeniz Versiyonu",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1550928431-ee0ec6db30d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    ),
    RecentlyModel(
      title: "Yeni Spor Kore Versiyonu",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1590400516695-36708d3f964a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=735&q=80",
    ),
    RecentlyModel(
      title: "Bat Sleeve Student T-shirt Summer",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1588190464153-0b4082f4f923?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=767&q=80",
    ),
    RecentlyModel(
      title: "Yeni Yazlık Modern Elbise",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1553845911-9e88516bdcbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
    ),
    RecentlyModel(
      title: "Kısa Kesim Cotton Elbise",
      price: "25",
      imgUrl: "https://images.unsplash.com/photo-1494354145959-25cb82edf23d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
    ),
  ];
}