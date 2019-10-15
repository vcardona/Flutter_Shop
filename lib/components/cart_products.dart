import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var productos_on_the_car = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1
    },
    {
      "name": "Shoes",
      "picture": "images/products/blazer1.jpeg",
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productos_on_the_car.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: productos_on_the_car[index]["name"],
            cart_prod_color: productos_on_the_car[index]["color"],
            cart_prod_qty: productos_on_the_car[index]["quantity"],
            cart_prod_pictures: productos_on_the_car[index]["picture"],
            cart_prod_price: productos_on_the_car[index]["price"],
            cart_prod_size: productos_on_the_car[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pictures,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: new Image.asset(
          cart_prod_pictures,
          width: 70.0,
          height: 70.0,
        ),
        title: new Text(
          cart_prod_name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // === This section is for the product color ==
                new Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
