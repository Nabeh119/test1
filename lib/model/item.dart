class Item {
  String name;
  String imgPath;
  double price;
  String location;
  String description;
  Item(
      {
      required this.name,
      required this.imgPath,
      required this.price,
      required this.description,
      this.location = "main branch"});
}

final List<Item> items = [
  Item(
     name:"Product1",
      price: 12.99,
      imgPath: 'android/assets/1.webp',
      location: "Sahnaia",
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product2",
      price: 12.99,
      imgPath: 'android/assets/2.webp',
      location: 'Damascus',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product3",
      price: 12.99,
      imgPath: 'android/assets/3.webp',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product4",
      price: 12.99,
      imgPath: 'android/assets/4.webp',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product5",
      price: 12.99,
      imgPath: 'android/assets/5.webp',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product6",
      price: 12.99,
      imgPath: 'android/assets/6.webp',
      location: 'Aleppo',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product7",
      price: 12.99,
      imgPath: 'android/assets/7.webp',
      location: 'Latakia',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
  Item(
    name:"Product8",
      price: 12.99,
      imgPath: 'android/assets/8.webp',
      description:
          "======================================================================================================================================================================================The marketing concept proposes that to complete its organizational objectives, an organization should anticipate the needs and wants of potential consumers and satisfy them more effectively than its competitors. This concept originated from Adam Smith's book The Wealth of Nations but would not become widely used until nearly 200 years later.[26] Marketing and Marketing Concepts are directly related."),
];
