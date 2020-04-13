class Food {
  String name;
  double price;
  double rate;
  int rateCount;
  String image;
  String foodType;
  Food({this.name, this.price, this.image, this.rate, this.rateCount, this.foodType});
}

List<String> foodTypes = [
  'Salad',
  'All',
  'Pizza',
  'Asian',
  'Burger',
  'Dessert',
];

List<Food> foods = [
  Food(
    name: 'Vegetable and Poached Egg',
    price: 10,
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Avocado Salad With Mayonoise Soy Sauce',
    price: 20,
    image: 'https://ifoodreal.com/wp-content/uploads/2018/04/FG-avocado-salad.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Pancake With Orange Sauce',
    price: 30,
    image: 'https://iowagirleats.com/wp-content/uploads/2013/01/OrangePancakes_02_mini.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Vegetables Salad',
    price: 40,
    image: 'https://iowagirleats.com/wp-content/uploads/2016/06/Marinated-Vegetable-Salad-iowagirleats-03.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Vegetables Salad',
    price: 40,
    image: 'https://iowagirleats.com/wp-content/uploads/2020/02/Vegetable-Egg-Casserole-iowagirleats-Featured-300x300.jpg',
    foodType: foodTypes[0],
  ),
  Food(
    name: 'Vegetables Salad',
    price: 40,
    image: 'https://iowagirleats.com/wp-content/uploads/2019/12/Ham-and-Gnocchi-Mac-and-Cheese-iowagirleats-Featured2-300x300.jpg',
    foodType: foodTypes[0],
  ),
];
