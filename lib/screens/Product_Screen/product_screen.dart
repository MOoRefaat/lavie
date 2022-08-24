import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/di/getit.dart';
import 'package:lavie/network/api.dart';
import 'package:lavie/screens/Product_Screen/bloc/products_bloc.dart';

import '../../components/components.dart';
import '../../components/widgets/default_btn.dart';
import '../../const/consts.dart';
import '../../models/products/products_model.dart';
import '../Cart_Search/cart_screen.dart';
import '../Search_Screen/search_screen.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int number = 10;
  // final TabController _tabController = TabController(length: 4, vsync: this);
  @override
  void initState() {
    getIt.get<ProductsBloc>().add(GetProductsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
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
                    width: 160,
                    height: 50,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(9))),
                    child: Image(
                      image: AssetImage('assets/images/Splash.png'),
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
              BlocConsumer<ProductsBloc, ProductsState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state is ProductsSuccessState
                      ? Container(
                          // color: Colors.grey[400],
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.products?.length,
                            // crossAxisCount: 2,
                            // mainAxisSpacing: 2,
                            // crossAxisSpacing: 2,
                            // childAspectRatio: 1 / 1.56,
                            itemBuilder: (BuildContext context, int index) =>
                                ProductListBuilder(
                                    context, index, state.products),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: .7,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            //     List.generate(number, (index) => ProductListBuilder(context))
                          ),
                        )
                      : Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ProductListBuilder(context, index, List<ProductData>? model) => Column(
        children: [
          // Container(
          //   child: TabBar(
          //     tabs: [
          //       Tab(text: 'All'),
          //       Tab(
          //         text: 'Planets',
          //       ),
          //       Tab(
          //         text: 'Seeds',
          //       ),
          //       Tab(
          //         text: 'Tools',
          //       )
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            color: Colors.white,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height(context) * .14,
                  width: width(context) * .30,
                  child:
                      Image.network(LaVieApi.baseUrl + model![index].imageUrl),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  model![index].name!,
                  style: TextStyle(
                      fontFamily: 'Roboto', fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  model![index].price.toString(),
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
                    onPressed: () {},
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
          ),
        ],
      );
}
