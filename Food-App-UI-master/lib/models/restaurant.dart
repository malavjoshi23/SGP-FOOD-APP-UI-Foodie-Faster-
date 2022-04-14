import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant({
    required this.name,
    required this.waitTime,
    required this.distance,
    required this.label,
    required this.logoUrl,
    required this.desc,
    required this.score,
    required this.menu,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
        name: 'CHARUSAT',
        waitTime: "10-15min",
        distance: '10m',
        label: 'CANTEENS',
        logoUrl: 'assets/images/res_logo.png',
        desc: '>>>Hostel food',
        score: 4.7,
        menu: {
          'Dannys': Food.generateRecommendFoods(),
          'Iceberg': Food.generatePopularFood()!,
          'Shreeji': Food.generateShreeji()!,
          'Sweetspot': Food.generateSweetSpot()!,
        });
  }
}
