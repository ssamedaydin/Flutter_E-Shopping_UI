class StoreListModel {
  String img;
  String name;
  int open;

  StoreListModel(
      {required this.img, required this.name, required this.open});

  static List<StoreListModel> storeList = [
    StoreListModel(
        img: "https://images.unsplash.com/photo-1507914372368-b2b085b925a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        name: "Nişantaşı - Semt, İstanbul",
        open: 1
    ),
    StoreListModel(
        img: "https://images.unsplash.com/photo-1546213290-e1b492ab3eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        name: "Tepebaşı - İlçe, Eskişehir",
        open: 0
    ),
    StoreListModel(
        img: "https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        name: "Kartal - Semt, İstanbul",
        open: 1
    ),
  ];
}