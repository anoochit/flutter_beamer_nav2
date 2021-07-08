class Menu {
  final String title;
  final String link;

  Menu(this.title, this.link);
}

final listMenu = [
  Menu("Home", "/"),
  Menu("Product", "/product"),
  Menu("Article", "/article"),
  Menu("Blog", "/blog"),
  Menu("Contact", "/contact"),
];
