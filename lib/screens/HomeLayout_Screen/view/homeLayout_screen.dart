import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/consts.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
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
        ],
      ),
    );
  }
}
