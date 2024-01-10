class Item{
 final String id;
 final String name;
 final String desc;
 final int price;
 final String color;
 final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image}); 
 
}
final products=[Item(
  
  id: "Priyofash12", 
  name: "Iphone", 
  desc: "Apple 14 pro max", 
  price: 999, 
  color: "#33505a", 
  image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg",
  )];