part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();
}
class GetProductsEvent extends ProductsEvent {
  @override
  List<Object?> get props => [];

}
