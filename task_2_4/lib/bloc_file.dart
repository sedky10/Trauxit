import 'package:flutter_bloc/flutter_bloc.dart';


enum CartEvent { addToCart, removeFromCart }

class CartBloc extends Bloc<CartEvent, List<String>> {
  CartBloc() : super([]);

  Stream<List<String>> mapEventToState(CartEvent event) async* {
    switch (event) {
      case CartEvent.addToCart:
        state.add("Item"); // Replace with your item data model
        yield List.from(state);
        break;
      case CartEvent.removeFromCart:
        if (state.isNotEmpty) {
          state.removeLast();
          yield List.from(state);
        }
        break;
    }
  }
}
