import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Item Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping Item Card'),
        ),
        body: Center(
          child: ShoppingItemCard(),
        ),
      ),
    );
  }
}

class ShoppingItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              'assets/b_0119493a-9927-4550-8323-baefe5f625c0.webp',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              'Stylish T-Shirt',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              'Comfortable and trendy cotton t-shirt',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Text(
              '\$29.99',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add to cart logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Added to Cart")),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
