import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/dashboard.dart';
import 'package:uts/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                          Container(
                             margin: EdgeInsets.all(4),
                              height: 45,
                              width: 225,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Center(
                                child: Text("My Profile",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                                )
                              ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              height: 45,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Center(
                                child:
                                  Text("Logout",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/saya.jpeg"),
            ),
            SizedBox(
              height: 15,
            ),
            itemProfile('Nama', 'Zaenal Abidin', CupertinoIcons.person),
            SizedBox(
              height: 15,
            ),
            itemProfile('NPM', '21670079', CupertinoIcons.number),
            SizedBox(
              height: 15,
            ),
            itemProfile('Kelas', 'Informatika 5B', Icons.class_outlined),
            SizedBox(
              height: 15,
            ),
            itemProfile('Email', 'zaenal7518@gmail.com', Icons.email_outlined),
          ],
        ),
      ),
    );
  }
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 10,
          )
        ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      tileColor: Colors.blueGrey,
    ),
  );
}
