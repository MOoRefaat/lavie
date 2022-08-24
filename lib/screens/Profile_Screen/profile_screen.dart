import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie/components/components.dart';
import 'package:lavie/screens/Login_Screen/view/login_screen_imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 30),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(40))),
            child: Image(
              image: AssetImage('assets/images/av.jpg'),
              //height: 100,
              // width: 100,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 40),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
            width: 300,
            // color: Colors.yellow[100],
            padding: EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/star.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'You Have 0 Points',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            'Edit Profile',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_downward),
          SizedBox(
            height: 15,
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
            height: 70,
            width: 350,
            // color: Colors.white,
            padding: EdgeInsetsDirectional.only(start: 10, top: 5),
            child: ListTile(
              leading: Image(
                image: AssetImage('assets/images/ICON.png'),
              ),
              title: Text('Change Name',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
            height: 70,
            width: 350,
            // color: Colors.white,
            padding: EdgeInsetsDirectional.only(start: 10, top: 5),
            child: ListTile(
              leading: Image(
                image: AssetImage('assets/images/ICON.png'),
              ),
              title: Text('Change Email',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 280,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.circular(20)),
            child: MaterialButton(
              onPressed: () {
                navigateToAndErase(context, LoginScreen());
              },
              child: Text(
                'Log Out',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
