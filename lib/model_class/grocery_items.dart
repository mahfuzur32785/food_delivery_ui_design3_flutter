class GroceryItem{
  String? name,img,price;

  GroceryItem({this.name, this.img, this.price});

  static List<GroceryItem> itemList(){
    return[
      GroceryItem(img: 'images/grosary/rice.jpg',name: 'Rice',price: '58'),
      GroceryItem(img: 'images/grosary/onions.jpg',name: 'Onions',price: '40'),
      GroceryItem(img: 'images/grosary/oil.jpg',name: 'Oil',price: '157'),
      GroceryItem(img: 'images/grosary/meats.jpg',name: 'Meats',price: '580'),
      GroceryItem(img: 'images/grosary/lentils.jpg',name: 'Lentils',price: '1020'),
      GroceryItem(img: 'images/grosary/juces.jpg',name: 'Juces',price: '340'),
      GroceryItem(img: 'images/grosary/fruits.jpg',name: 'Fruits',price: '240'),
      GroceryItem(img: 'images/grosary/baverage.jpg',name: 'Baverage',price: '40'),
    ];
  }
}