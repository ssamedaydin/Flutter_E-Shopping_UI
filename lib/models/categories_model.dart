class CategoriesModel{
  String title;
  String imgUrl;

  CategoriesModel({required this.title, required this.imgUrl});

  static List<CategoriesModel> categories = [
    CategoriesModel(
        title: "Yeni",
        imgUrl: "https://images.unsplash.com/photo-1578102718171-ec1f91680562?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=735&q=80"
    ),
    CategoriesModel(
        title: "Erkek",
        imgUrl: "https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
    ),
    CategoriesModel(
        title: "Kadın",
        imgUrl: "https://images.unsplash.com/photo-1583846783214-7229a91b20ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"
    ),
    CategoriesModel(
        title: "Moda",
        imgUrl: "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=670&q=80"
    ),
    CategoriesModel(
        title: "Çiftler",
        imgUrl: "https://images.unsplash.com/photo-1550614000-4895a10e1bfd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
    ),
  ];
}