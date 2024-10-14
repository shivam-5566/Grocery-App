import 'package:flutter/material.dart';
import '../models/product_model.dart';
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Handle tap to navigate to details screen
      child:
          Card(
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text("Price: \$${product.price.toStringAsFixed(2)}"),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.0,),color: Colors.green),
                     padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        product.discountOffer,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}