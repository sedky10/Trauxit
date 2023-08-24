import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CartBloc(),
        child: CartScreen(),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = BlocProvider.of<CartBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: BlocBuilder<CartBloc, List<String>>(
        builder: (context, cartItems) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cartItems[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      cartBloc.add(CartEvent.addToCart);
                    },
                    child: Text('Add to Cart'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      cartBloc.add(CartEvent.removeFromCart);
                    },
                    child: Text('Remove from Cart'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
