import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Demo23Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo23PageState();
  }
}

// Sử dụng màn hình chi tiết
class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productDescription;

  const ProductDetailPage({
    required this.productName,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Name: $productName',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Description: $productDescription',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Demo23PageState extends State<Demo23Page> {
  void _showProductDetail(String productName, String productDescription) {
    // Sử dụng Navigator.of(context).push để chuyển hướng đến màn hình mới (ProductDetailPage)
    //và truyền thông tin về sản phẩm tới màn hình đó thông qua các tham số productName và productDescription.
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProductDetailPage(
          productName: productName,
          productDescription: productDescription,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Demo 23 Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 5,
                color: Colors.lightBlue,
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.verified_user_rounded,
                  ),
                  title: Text("Product 1"),
                  subtitle: Text("Description 1"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () => _showProductDetail("Product 1", "Description 1"),
                  onLongPress: clickMeLongPress,
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.verified_user_rounded,
                  ),
                  title: Text("Product 2"),
                  subtitle: Text("Description 2"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () => _showProductDetail("Product 2", "Description 2"),
                  onLongPress: clickMeLongPress,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.verified_user_rounded,
                  ),
                  title: Text("Product 3"),
                  subtitle: Text("Description 3"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () => _showProductDetail("Product 3", "Description 3"),
                  onLongPress: clickMeLongPress,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void clickMeLongPress() {
    print("Click Me - Long Press");
  }
}
