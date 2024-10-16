import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Details',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  'images/person.jpeg'), // Replace with your image asset
            ),
            SizedBox(height: 20),
            Text(
              "Ravindu Kavinda",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "ravindu@example.com",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color.fromARGB(255, 2, 137, 234),
              ),
              title: Text(
                "CU-00001",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Color.fromARGB(255, 2, 137, 234),
              ),
              title: Text(
                "+94 71 3300619",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: Color.fromARGB(255, 2, 137, 234),
              ),
              title: Text(
                "123 Street, Kegalle, Sri Lanka.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.car_repair_sharp,
                color: Color.fromARGB(255, 2, 137, 234),
              ),
              title: Text(
                "VE-00001",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.car_fill,
                color: Color.fromARGB(255, 2, 137, 234),
              ),
              title: Text(
                "Toyota Aqua",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Add more details as needed
            // Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ()),
                // );
              },
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.black
                    : Color.fromARGB(255, 124, 123, 123),
              ),
              label: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black
                      : Color.fromARGB(255, 124, 123, 123),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 2, 137, 234),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
