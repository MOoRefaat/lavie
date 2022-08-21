import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:lavie/di/getit.dart';
import 'package:lavie/repository/main_repo.dart';

import '../../../models/products/products_model.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<GetProductsEvent>(fetchProducts);

  }
  Future<void> fetchProducts(ProductsEvent event,Emitter<ProductsState> emit) async{
    emit(ProductsLoadingState());
    try{
      final productsData= await getIt.get<MainRepo>().getProduct();
      emit(ProductsSuccessState(products:productsData ));
    }
    catch(e){
      debugPrint(e.toString());
      emit(ProductsErrorState());
    }
  }
}
