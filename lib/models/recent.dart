class Recent {
  final String title, image, page;
  final int percent;

  Recent({
    required this.title,
    required this.image,
    required this.percent,
    required this.page,
  });
}

List<Recent> recents = [
  Recent(
      image: "assets/images/buku2.jpg",
      title: "Dilan",
      percent: 75,
      page: "279 / 333 Halaman"),
  Recent(
      image: "assets/images/buku8.jpg",
      title: "Buku Sakti",
      percent: 20,
      page: "25 / 216 Halaman"),
];
