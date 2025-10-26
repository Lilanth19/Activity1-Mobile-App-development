import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A9B8A), // Teal background
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D4E03AQFQunoBhhDo1g/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1666248829477?e=1762992000&v=beta&t=8i1YQxDXK2kWhNvK3X5o4im5zftNj4PvFxz4VFDfytk'), // Add your image in assets folder
            ),
            SizedBox(height: 15),
            Text(
              'Lucy Hazel',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal[50],
                fontSize: 18.0,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+94 908 890 90',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'lucy@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
