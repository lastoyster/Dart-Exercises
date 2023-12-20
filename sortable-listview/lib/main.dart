import 'package:flutter/foundation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
}
 
@override 
Widget build(BuildContext context){
  return const MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // the sort order
  // true: ascending, false: descending
  bool _sortAscending = true;

  // the list of products
  final List<Map<String, dynamic>> _products = [
    {'id': 1, 'name': 'Dragon Robot', 'price': 19.99},
    {'id': 2, 'name': 'Turtle Toy', 'price': 15.99},
    {'id': 3, 'name': 'White Board', 'price': 12.99},
    {'id': 4, 'name': 'KindaCode.com', 'price': 24.99},
    {'id': 5, 'name': 'Travel Bag', 'price': 17.99},
  ];

// the function that sorts the list of products
// this function is called when the user taps the sort button
  void _sortProducts(bool ascending) {
    setState(() {
      _sortAscending = ascending;
      _products.sort((a, b) => ascending
          ? a['price'].compareTo(b['price'])
          : b['price'].compareTo(a['price']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: Column(
        children: [
          // The header of the list
          Container(
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _sortAscending ? 'Price Low to High' : 'Price High to Low',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // the sort button
                InkWell(
                  onTap: () => _sortProducts(!_sortAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // The list of products
          Expanded(
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                // the list item - product
                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${_products[index]['id']}',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${_products[index]['name']}',
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        '\$${_products[index]['price']}',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}