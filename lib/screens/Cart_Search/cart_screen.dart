import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  final int? count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          // crossAxisCount: 2,
          // mainAxisSpacing: 2,
          // crossAxisSpacing: 2,
          // childAspectRatio: 1 / 1.56,
          itemBuilder: (BuildContext context, int index) =>
              CartBuilder(context, count!),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 1),
          //     List.generate(number, (index) => ProductListBuilder(context))
        ),
      ),
    );
  }

  Widget CartBuilder(context, int count) => Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
        color: Colors.grey[100],
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
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Cactus Planet',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
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
                        '+',
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
                        '-',
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
            )
          ],
        ),
      );
}
