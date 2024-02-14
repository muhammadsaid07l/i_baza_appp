part of 'catalog_bloc.dart';

sealed class ProductEvent {}


class ProductL extends ProductEvent {}


class Searching extends ProductEvent {
  final String query;

  Searching({required this.query});
}