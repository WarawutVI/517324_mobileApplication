import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/Homeworks/addProduct_page.dart';
import 'package:my_app/Homeworks/editProduct.dart';
import 'dart:convert';

import 'package:my_app/models/product_data.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  
  List<Product> products=[];
   void initState() {
    super.initState();
     fetchProduct();
  }
   var res;
  void fetchProduct() async {
    try {
      setState(() {products = [];});
       res = await http.get(Uri.parse("http://10.0.2.2:8001/products"));
      // print(res.statusCode);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        print(data);
        List<dynamic> jsonList = data;
        setState(() {
          products = jsonList.map((item) => Product.fromJson(item)).toList();
        });
        print(products[1]);
      }
      print(products);
    } catch (e) {
      print('$e');
    }
  }

 void goToADDPage(int long)async {
  final result=await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AddproductPage(many: long), // Use the name 'many'
    ),
  );
  if (result == true) {
    fetchProduct(); // Reload your list

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Complete: Product Added! ✅"),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating, 
        duration: Duration(seconds: 2),
      ),
    );
  }
}


  void goToEditPage(Product product) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Editproduct(
        id: product.id,
        initialName: product.name,
        initialPrice: product.price,
        initialDescription: product.description,
      ),
    ),
  );

  // If the Editproduct page returns 'true', refresh the list
  if (result == true) {
    fetchProduct();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Product Updated! ✨"), backgroundColor: Colors.orange),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product")),
      body:ListView.builder(
     itemCount: products.length,
     itemBuilder: (BuildContext context, int index) {
     return ListTile(
            leading: Text("${products[index].id}"),
            title: Text("${products[index].name}"),
            subtitle: Text("${products[index].description}"),
           trailing: Row(
        mainAxisSize: MainAxisSize.min, // Keep the row small
        children: [
          Text("${products[index].price} ฿"),
          const Icon(Icons.chevron_right), // Visual hint
        ],
      ),
      onTap: () {
        goToEditPage(products[index]); // <--- Trigger the edit navigation
      },

            );
  },
),
      floatingActionButton: ElevatedButton(onPressed: (){
        goToADDPage(products.length);
      },style: ElevatedButton.styleFrom(
    // Set border radius to 0 for a sharp square, or 8-10 for soft corners
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)), 
    ),
    padding: const EdgeInsets.all(15), // Adjust size
  ), child: Icon(Icons.add,size: 30,) ),
    );
  }
}