import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../components/widgets/default_btn.dart';
import '../../const/consts.dart';
import '../Cart_Search/cart_screen.dart';
import '../Search_Screen/search_screen.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
  int number = 10;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  width: 200,
                  height: 60,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(0))),
                  child: Image(
                    image: AssetImage('assets/images/BrandLogo.png'),
                    //alignment: ,
                    height: height(context) * 1,
                    width: width(context),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadiusDirectional.all(
                          Radius.elliptical(18, 18))),
                  child: IconButton(
                    onPressed: () {
                      navigateTo(context, SearchScreen());
                    },
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //color: Colors.green,
                  child: IconButton(
                    onPressed: () {
                      navigateTo(context, CartScreen());
                    },
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadiusDirectional.all(
                          Radius.elliptical(18, 18))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.grey[400],
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                // crossAxisCount: 2,
                // mainAxisSpacing: 2,
                // crossAxisSpacing: 2,
                // childAspectRatio: 1 / 1.56,
                itemBuilder: (BuildContext context, int index) =>
                    ProductListBuilder(context),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                //     List.generate(number, (index) => ProductListBuilder(context))
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ProductListBuilder(context) => Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height(context) * .13,
              width: width(context) * .35,
              child: Image(
                image: AssetImage('assets/images/planet2.png'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'GARDENIA PLANT',
              style:
                  TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '70EPG',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Container(
              width: width(context) * .7,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: MaterialButton(
                height: 35,
                onPressed: () {
                  ;
                },
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Colors.green,
              ),
            )
          ],
        ),
      );
}
