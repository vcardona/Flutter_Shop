import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom/components/horizontal_listview.dart';
import 'package:flutter_ecom/components/products.dart';
import 'package:flutter_ecom/pages/cart.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 7.0,
        dotBgColor: Colors.transparent,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text('Shopping App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ), //AppBar
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Comprador Ropa'),
              accountEmail: Text('compradorropa@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 45,
                  ), //Icon
                ), //CircleAvatar
              ), //GestureDetector
              decoration: new BoxDecoration(color: Colors.black),
            ), //UserAccountsDrawerHeader
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.amber,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                }
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.amber,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ), //ListView
      ), //Drawer
      body: new ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ), //Padding
          HorizontalList(),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ), //Padding
          Container(
            height: 320,
            child: Products(),
          ), //Container
        ],
      ),
    ); //Scaffold
  }
}
