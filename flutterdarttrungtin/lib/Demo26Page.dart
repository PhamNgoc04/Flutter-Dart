import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterdarttrungtin/entity/Product.dart';
import 'package:flutterdarttrungtin/entity/ProductModel.dart';

class Demo26Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo26PageState();
  }
}

class Demo26PageState extends State<Demo26Page> {
  List<Product>? products;
  var keyword = TextEditingController(text: "");
  var min = TextEditingController(text: "");
  var max = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    var productModel = ProductModel();
    products = productModel.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 26 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: keyword,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Keyword..."),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => searchByKeyword(),
                    child: Text("Search By Keyword"),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => searchByPrices(),
                    child: Text("Search By Prices"),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: min,
                    decoration: InputDecoration(
                        hintText: "Min"
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: 7
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: max,
                    decoration: InputDecoration(
                        hintText: "Max"
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7),
            ),
            Expanded(
              child: products != null
                  ? ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: products!.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(10),
                          child: products![i].photo,
                        ),
                        title: Text(
                          products![i].name!,
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: Text("${products![i].price}"),
                        onTap: () => details(products![i]),
                      ),
                    ),
                  );
                },
              )
                  : Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void details(Product product) {
    print("Product Details");
    print("ID: ${product.id}");
  }

  void searchByKeyword() {
    var productModel = ProductModel();
    setState(() {
      products = productModel.searchByKeyword(keyword.text);
    });
  }

  void searchByPrices() {
    var productModel = ProductModel();
    double mi = double.parse(min.text);
    double ma = double.parse(max.text);
    setState(() {
      products = productModel.searchByPrices(mi, ma);
    });
  }
}
