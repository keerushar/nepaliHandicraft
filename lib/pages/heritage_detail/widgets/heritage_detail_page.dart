import 'package:flutter/material.dart';
import 'package:flutter_meetup/pages/list_heritages/model/heritage_detail.dart';

class HeritageDetailPage extends StatelessWidget {
  final Product product;

  const HeritageDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Image.network(product.productImage!),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image.network(
                            product.productImage!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.productName ?? "-",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                    fontSize: 22),
                              ),
                              Text('Price:  Rs ${product.price ?? "-"}'),
                              Text(
                                  'Total available items: ${product.productCount ?? "-"}'),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.add_shopping_cart,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
