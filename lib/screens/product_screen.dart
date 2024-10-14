import 'package:flutter/material.dart';
import 'package:grocery_app/screens/detail_screen.dart';

import '../models/product_model.dart';
import '../widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final List<Product> products = [
      Product(
        title: "Colour Sweets",
        image: "assets/images/sweets1.png",
        price: 15.99,
        discountOffer: "Offer: 43% flat",
        description:
            "A vibrant and delightful treat, Colour Sweets are perfect for adding a splash of excitement to any occasion. These sweets come in a rainbow of colors, each bite bursting with unique flavors. Whether you're hosting a party or celebrating a festival, these bright and sugary delights are sure to grab attention and satisfy your sweet cravings.",
      ),
      Product(
        title: "Desert Sweets",
        image: "assets/images/sweets2.png",
        price: 29.97,
        discountOffer: "Offer: 12% flat",
        description:
            "Inspired by the rich flavors of traditional desert cuisines, Desert Sweets offer a perfect blend of exotic spices and sweetened goodness. Crafted with ingredients like dates, honey, and nuts, these treats are a burst of earthy flavors that transport you to the heart of desert culture. Perfect for indulging in a unique and flavorful dessert.",
      ),
      Product(
        title: "Diwali Sweets",
        image: "assets/images/sweets3.png",
        price: 35.22,
        discountOffer: "Offer: 20% flat",
        description:
            "A festive favorite, Diwali Sweets bring the joy of India's most celebrated festival to your taste buds. Made with a blend of classic ingredients like ghee, sugar, nuts, and aromatic spices, these sweets are rich, decadent, and full of the warmth of tradition. Perfect for gifting or enjoying with family during Diwali celebrations.",
      ),
      Product(
        title: "Ladoo Berfi",
        image: "assets/images/sweets4.png",
        price: 22.17,
        discountOffer: "Offer: 37% flat",
        description:
            "Laddoo Sweets are a quintessential Indian delicacy known for their round, bite-sized shape and rich taste. Made from ingredients like gram flour, sugar, and ghee, and often garnished with nuts, these laddoos are a must-have at celebrations. Their melt-in-the-mouth texture and delightful sweetness make them an irresistible treat for all ages.",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text(
            'All Product',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'IosFont'),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: w * .7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      child:const  Center(
                        child: Text("Search"),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: w * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      child:const  Center(
                        child: Icon(
                          Icons.accessibility_new_rounded,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns in the grid
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.7, // Adjust for image and text
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: products[index],
              onTap: () {
                // Navigate to the product detail screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(product: products[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
    ;
  }
}
