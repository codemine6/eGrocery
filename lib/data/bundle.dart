final bundles = [
  Bundle(
    cover: 'https://i.imgur.com/Y0IFT2g.png',
    items: ['Onion, Oil, Salt'],
    mainPrice: 50.32,
    name: 'Bundle Pack',
    price: 35,
  ),
  Bundle(
    cover: 'https://i.postimg.cc/qtM4zj1K/packs-2.png',
    items: ['Onion, Oil, Salt'],
    mainPrice: 50.32,
    name: 'Medium Spices Pack',
    price: 35,
  ),
  Bundle(
    cover: 'https://i.postimg.cc/MnwW8WRd/pack-1.png',
    items: ['Onion, Oil, Salt'],
    mainPrice: 50.32,
    name: 'Bundle Pack',
    price: 35,
  ),
  Bundle(
    cover: 'https://i.postimg.cc/k2y7Jkv9/pack-4.png',
    items: ['Onion, Oil, Salt'],
    mainPrice: 50.32,
    name: 'Bundle Pack',
    price: 35,
  ),
];

class Bundle {
  final String cover;
  final List items;
  final double mainPrice;
  final String name;
  final double price;

  Bundle({
    required this.cover,
    required this.items,
    required this.mainPrice,
    required this.name,
    required this.price,
  });
}
