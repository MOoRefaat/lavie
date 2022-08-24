import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie/components/components.dart';
import 'package:lavie/screens/Cart_Search/cart_screen.dart';
import 'package:lavie/screens/Single_Blog_Screen/single_blog_screen.dart';

class ForumsScreen extends StatelessWidget {
  const ForumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Center(
            child: Text(
              'Blogs            ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 3,
        ),
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  // crossAxisCount: 2,
                  // mainAxisSpacing: 2,
                  // crossAxisSpacing: 2,
                  // childAspectRatio: 1 / 1.56,
                  itemBuilder: (BuildContext context, int index) =>
                      BlogBuilder(context, index),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 1),
                  //     List.generate(number, (index) => ProductListBuilder(context))
                ),
              ],
            ),
          ),
        ));
  }

  Widget BlogBuilder(context, index) => Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.white54, //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 2, // blur radius
            ),
          ],
        ),
        padding: EdgeInsets.only(
          left: 10,
          right: 5,
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/Blog.png'),
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5, top: 15, bottom: 10, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2 days ago',
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '5 Tips to treat plants',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                      child: Text(
                        'leaf, in botany, any usually flattened green outgrowth from the stem of  ',
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      onPressed: () {
                        navigateTo(context, Single_Blog_Screen());
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
