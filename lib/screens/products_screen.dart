import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_app/widgets/navbar_roots.dart';
import 'package:vehicle_app/widgets/product_items.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'Fix Ride',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.bag_fill,
            color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.filter_list,
              size: 32,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 234, 237),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.black,
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search_sharp,
                      color:Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
          ItemsWidget(),
        ],
      ),
    )
   );
  }
}

