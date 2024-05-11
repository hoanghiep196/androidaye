class Recipe {
  String label;
  String imageUrl;

  Recipe (
    this.label,
    this.imageUrl,
  );

  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs',
            'assets/images/akali1.webp',),
    Recipe('STomato Soup',
      'assets/images/akali2.jpeg',),
    Recipe('Grilled Cheese',
      'assets/images/akali3.jpeg',),
    Recipe('Chocolate Chip Cookies',
      'assets/images/akali4.jpeg',),
    Recipe('Taco Salad',
      'assets/images/akali5.webp',),
  ];
}