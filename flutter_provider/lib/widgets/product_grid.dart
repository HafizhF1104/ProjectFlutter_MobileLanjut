import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/all_product.dart';
import 'package:flutter_provider/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allproduct = productData.allproducts;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allproduct.length,
      itemBuilder: (ctx, i) => ProductItem(
        allproduct[i].id!,
        allproduct[i].title!,
        allproduct[i].imageUrl!,
        allproduct[i].price!,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
