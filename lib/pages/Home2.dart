// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

// import 'package:flower_app/model/item.dart';
// import 'package:flower_app/pages/details_screen.dart';
// import 'package:flower_app/provider/cart.dart';
// import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:pro/Shared/AppBar.dart';
import 'package:pro/model/item.dart';
import 'package:pro/pages/CheckOut.dart';
import 'package:pro/pages/details_screen.dart';
import 'package:pro/provider/cart.dart';
import 'package:provider/provider.dart';


class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Cartt=Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Colors.orange,
      drawer: Drawer( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('android/assets/index.jpg'),
                    fit: BoxFit.cover,
                  )),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('android/assets/IMG_3503.JPG'),
                  ),
                  accountName: Text('NabehYousef'),
                  accountEmail: Text(
                    'NabehYousef@gmail.com',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: () {
                     Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context)=>Home2(),
                        ),);
                  },
                ), 
                ListTile(
                  title: Text('My products'),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {
                     Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context)=>Checkout(),
                        ),);
                  },
                ),
                ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
            Text('Developed by NabehYosef@2024'),
          ],
        ),
      ),
      appBar: AppBar( 
        backgroundColor: Colors.orange,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
              //AppBar
              ProductsAndPrice(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details(product: items[index])));
                },
                child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath)),
                    ),
                  ]),
                  footer: GridTileBar(
                    //backgroundColor: Color.fromARGB(66, 83, 127, 110),
                    trailing:  IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: (){
                            Cartt.add(items[index]);
                          },
                         icon: Icon(Icons.add),
                          ),
                    leading: Text('\$12.99'),
                    title: Text(
                      '',
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
