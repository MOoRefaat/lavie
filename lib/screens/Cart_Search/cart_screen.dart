import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/widgets/default_btn.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  final int? count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            'My Cart            ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                // crossAxisCount: 2,
                // mainAxisSpacing: 2,
                // crossAxisSpacing: 2,
                // childAspectRatio: 1 / 1.56,
                itemBuilder: (BuildContext context, int index) =>
                    CartBuilder(context, count!),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 1),
                //     List.generate(number, (index) => ProductListBuilder(context))
              ),
              SizedBox(height: 80),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    '180,00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green),
                  ),
                  Text('Egp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 60),
                width: 300,
                child: MaterialButton(
                  height: 50,
                  onPressed: () {},
                  child: Text('Checkout',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CartBuilder(context, int count) => Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
        color: Colors.grey[200],
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/planet2.png'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text('Cactus Planet',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '200 EPG',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.green),
                      )),
                ),
                Text(
                  '${count}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: TextButton(
                      onPressed: () {
                        count--;
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.green),
                      )),
                ),
                IconButton(
                  onPressed: () {
                    count--;
                  },
                  icon: Image.asset('assets/images/Vector.png'),
                  iconSize: 2,
                )
              ],
            ),
          ],
        ),
      );
}
