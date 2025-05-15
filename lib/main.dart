import 'package:flutter/material.dart';

void main() {
  runApp(CraftifyApp());
}

class CraftifyApp extends StatefulWidget {
  @override
  _CraftifyAppState createState() => _CraftifyAppState();
}

class _CraftifyAppState extends State<CraftifyApp> {
  List<Map<String, String>> cart = [];

  void addToCart(Map<String, String> product) {
    setState(() {
      cart.add(product);
    });
  }

  void removeFromCart(int index) {
    setState(() {
      cart.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechNest',
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: Color(0xFFC36A2D),
        scaffoldBackgroundColor: Color(0xFFF3E9DC),
      ),
      home: EntryScreen(
        cart: cart,
        addToCart: addToCart,
        removeFromCart: removeFromCart,
      ),
    );
  }
}

class EntryScreen extends StatelessWidget {
  final List<Map<String, String>> cart;
  final Function(Map<String, String>) addToCart;
  final Function(int) removeFromCart;

  EntryScreen({required this.cart, required this.addToCart, required this.removeFromCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.handyman, size: 80, color: Color(0xFFC36A2D)),
            SizedBox(height: 20),
            Text(
              'TechNest',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5B3924),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      cart: cart,
                      addToCart: addToCart,
                      removeFromCart: removeFromCart,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFC36A2D),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Enter Store',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> cart;
  final Function(Map<String, String>) addToCart;
  final Function(int) removeFromCart;

  HomeScreen({required this.cart, required this.addToCart, required this.removeFromCart});

  final List<Map<String, String>> products = [
    {'name': 'Laptop', 'price': '\$25.00', 'image': 'assets/images/lappy.jpg'},
    {'name': 'Cellphone', 'price': '\$18.00', 'image': 'assets/images/phone.jpg'},
    {'name': 'Speaker', 'price': '\$30.00', 'image': 'assets/images/speaker.jpg'},
    {'name': 'Tablet', 'price': '\$30.00', 'image': 'assets/images/tab.jpg'},
    {'name': 'Camera', 'price': '\$30.00', 'image': 'assets/images/cam.jpg'},
    {'name': 'GoPro', 'price': '\$30.00', 'image': 'assets/images/go.jpg'},
    {'name': 'Headphone', 'price': '\$30.00', 'image': 'assets/images/hp.jpg'},
    {'name': 'Smart Watch', 'price': '\$30.00', 'image': 'assets/images/watch.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TechNest'),
        backgroundColor: Color(0xFFC36A2D),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: cart, removeFromCart: removeFromCart),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(product: product, addToCart: addToCart),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          product['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product['name']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(product['price']!),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Map<String, String> product;
  final Function(Map<String, String>) addToCart;

  ProductDetailScreen({required this.product, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']!),
        backgroundColor: Color(0xFFC36A2D),
      ),
      body: Column(
        children: [
          Image.asset(product['image']!, height: 300, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product['name']!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(product['price']!, style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                SizedBox(height: 16),
                Text('High quality tech gadget perfect for daily use.', style: TextStyle(fontSize: 16)),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    addToCart(product);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFC36A2D)),
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> cart;
  final Function(int) removeFromCart;

  CartScreen({required this.cart, required this.removeFromCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Color(0xFFC36A2D),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final item = cart[index];
          return ListTile(
            leading: Image.asset(item['image']!, width: 50, height: 50),
            title: Text(item['name']!),
            subtitle: Text(item['price']!),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => removeFromCart(index),
            ),
          );
        },
      ),
    );
  }
}