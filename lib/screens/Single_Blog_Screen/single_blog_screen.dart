import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Single_Blog_Screen extends StatelessWidget {
  const Single_Blog_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(30))),
              child: Image(
                image: AssetImage('assets/images/Rectangle 15.png'),
                height: 350,
                width: 390,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '5 Simple Tips to treat plants!',
                    style: TextStyle(
                      fontSize: 27,
                      //letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'leaf, in botany, any usually flattened green outgrowth from the stem of ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'leaf, in botany, any usually flattened green outgrowth from the stem of ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'leaf, in botany, any usually flattened green outgrowth from the stem of ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
