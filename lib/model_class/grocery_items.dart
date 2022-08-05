class GroceryItem{
  String? name,img,price;
  double? quantity;

  GroceryItem({this.name, this.img, this.price,this.quantity});

  static List<GroceryItem> itemList(){
    return[
      GroceryItem(img: 'images/grosary/rice.jpg',name: 'Rice',price: '120',quantity: 2),
      GroceryItem(img: 'images/grosary/onions.jpg',name: 'Onions',price: '40',quantity: 1),
      GroceryItem(img: 'images/grosary/oil.jpg',name: 'Oil',price: '900',quantity: 5),
      GroceryItem(img: 'images/grosary/meats.jpg',name: 'Meats',price: '680',quantity: 3.5),
      GroceryItem(img: 'images/grosary/lentils.jpg',name: 'Lentils',price: '150',quantity: 0.2),
      GroceryItem(img: 'images/grosary/juces.jpg',name: 'Juces',price: '2000',quantity: 20),
      GroceryItem(img: 'images/grosary/fruits.jpg',name: 'Fruits',price: '490',quantity: 2),
      GroceryItem(img: 'images/grosary/baverage.jpg',name: 'Baverage',price: '400',quantity: 5),
    ];
  }
}