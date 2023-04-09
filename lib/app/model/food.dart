class FoodDetail {
  String name;
  String image;
  String cal;
  String protein;
  String desc;

  FoodDetail({
    required this.name,
    required this.image,
    required this.cal,
    required this.protein,
    required this.desc,
  });
}

var foodList = [
  FoodDetail(
      name: 'Ayam',
      image:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.av4L4KeN0jSKpw6l-0bEfQHaE8%26pid%3DApi%26h%3D160&f=1&ipt=4c9b5e2f6689a122b10e2930662b4021793e1852ce4d220fc746a906c7bd424b&ipo=images',
      cal: '100',
      protein: '120',
      desc: 'Daging Ayam'),
  FoodDetail(
      name: 'Sapi',
      image:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.1qxbQZRFZKXNcOeAMHLTMgHaE8%26pid%3DApi&f=1&ipt=0a18131bee1005182597e6897780cbda9b467bec5ae623bc3a607041019d383d&ipo=images',
      cal: '200',
      protein: '220',
      desc: 'Daging Sapi'),
  FoodDetail(
      name: 'Telur',
      image:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.P66niNz6qrh5s2ShbmBNjQHaE7%26pid%3DApi&f=1&ipt=6d08ef58e2920c7d6bab1f79a613a9d10cff1b03dfd7812788a3b87bd808b1b6&ipo=images',
      cal: '100',
      protein: '100',
      desc: 'Telur Ayam'),
  FoodDetail(
      name: 'Salmon',
      image:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.v5bOW-SQ7AQViTygHEIeswHaEK%26pid%3DApi&f=1&ipt=0cdda6b5ac1ce61acb8160820d45e738e4d4b6f17fc7d33f4e2eab7bda39cb5c&ipo=images',
      cal: '150',
      protein: '120',
      desc: 'Daging ikan salmon'),
];
