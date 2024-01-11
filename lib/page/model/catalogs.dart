class catalogModel{

static final items=[Item(
  
  id: 1, 
  name: "iPhone 14 Pro", 
  desc: "Apple iPhone 12th genaretion", 
  price: 999, 
  color: "#33505a", 
  image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg",
  )];


}





class Item{
 final int id;
 final String name;
 final String desc;
 final int price;
 final String color;
 final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image}); 
 
}
