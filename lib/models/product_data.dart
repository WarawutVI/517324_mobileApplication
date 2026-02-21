// Model Class
class Product {
  final String id;
  final String name;
  final String description;
  final String price;
  // Constructor
  Product(this.id, this.name,this.description,this.price);

  // แปลง JSON เป็น Object
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        price = json['price'];

  // แปลง Object เป็น JSON Map
  Map<String, dynamic> toJson() {
    return {
        "id" :id,
        "description" :description,
        "price":price
    };
  }
}
