class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    name: 'Banana Cake',
    price: '2500',
    imageUrl: 'assets/box1.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 2,
    name: 'Aranygaluska',
    price: '1500',
    imageUrl: 'assets/box2.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 5,
    name: ' Flourless chocolate cake',
    price: '2000',
    imageUrl: 'assets/box5.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 6,
    name: 'Brownies Almond',
    price: '3000',
    imageUrl: 'assets/box6.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 3,
    name: 'Coffee Cake',
    price: '1000',
    imageUrl: 'assets/box3.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 4,
    name: ' Chocolate mud',
    price: '1200',
    imageUrl: 'assets/box4.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
];