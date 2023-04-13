final products = [
  Product(
    cover: 'https://i.imgur.com/6unJlSL.png',
    images: ['https://i.imgur.com/6unJlSL.png'],
    mainPrice: 15,
    name: 'Perry\'s Ice Cream Banana',
    price: 13,
    weight: '800 gm',
  ),
  Product(
    cover: 'https://i.imgur.com/oaCY49b.png',
    images: ['https://i.imgur.com/oaCY49b.png'],
    mainPrice: 15,
    name: 'Vanilla Ice Cream Banana',
    price: 12,
    weight: '500 gm',
  ),
  Product(
    cover: 'https://i.imgur.com/5wghZji.png',
    images: ['https://i.imgur.com/5wghZji.png'],
    mainPrice: 18,
    name: 'Meat',
    price: 15,
    weight: '1 kg',
  ),
];

class Product {
  final String cover;
  final List images;
  final int mainPrice;
  final String name;
  final int price;
  final String weight;

  Product({
    required this.cover,
    required this.images,
    required this.mainPrice,
    required this.name,
    required this.price,
    required this.weight,
  });
}
