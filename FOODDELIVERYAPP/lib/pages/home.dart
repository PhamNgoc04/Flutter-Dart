import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

// "Home" là một StatefulWidget, cho phép nó có trạng thái có thể thay đổi
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  //createState() trả về một thể hiện của _HomeState.
  State<Home> createState() => _HomeState();
}

//Khai báo 1 _HomeState của Home là nơi để quản lý trạng thái của widget
class _HomeState extends State<Home> {
  /*
  Khai báo các biến iceream, pizza, salad, burger để lưu trữ trạng thái của các loại thức ăn.
  Ban đầu, chúng được đặt là false.
   */
  bool iceream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    // Scaffold là một layout cơ bản cho ứng dụng Flutter.
    return Scaffold(
      // Container để chứa nội dung của trang chính.
      body: Container(
        // EdgeInsets để thiết lập khoảng cách lề.
        margin: EdgeInsets.only(top: 50.0, left: 20.0),

        // Column để xếp các widget dọc theo trục chính.
        child: Column(
          // Children : Danh sách các widget con.
          children: [
            // Row để xếp các widget theo chiều ngang.
            Row(
              // Sắp xếp các widget con theo không gian giữa chúng.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Widget Text để hiển thị văn bản.
                Text(
                  "Hello Phạm Ngọc,",
                  // Sử dụng phương thức boldTextFeildStyle() để định dạng văn bản
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3), //Khoảng cách lề bên trong
                  // BoxDecoration để thiết lập hình dạng, màu sắc của container.
                  decoration: BoxDecoration(
                      color: Colors.black,
                      // BorderRadius để làm tròn góc container.
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    // Widget Icon để hiển thị biểu tượng.
                    Icons.shopping_cart,
                    // Màu sắc của biểu tượng.
                    color: Colors.white,
                  ),
                )
              ],
            ),
            // SizedBox để tạo một khoảng cách dọc giữa hai widget.
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Delicious Food",
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            Text("Discover and Get Great Food",
                style: AppWidget.LightlineTextFeildStyle()),
            SizedBox(
              height: 20.0,
            ),
            Container(
                margin: EdgeInsets.only(right: 20),
                // Hiển thị danh sách các món ăn.
                child: showItem()),

            // SizedBox để tạo một khoảng cách dọc giữa hai widget.
            SizedBox(
              height: 30.0,
            ),
            // SingleChildScrollView để cho phép cuộn nếu nội dung vượt quá kích thước màn hình.
            SingleChildScrollView(
              // Cuộn theo chiều ngang.
            scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Danh sách các widget con trong hàng ngang.
                  // Các widget này là các món ăn.
                  // Mỗi món ăn được hiển thị dưới dạng một Container.
                  // Mỗi Container chứa một hình ảnh, tên món ăn, mô tả và giá tiền của món ăn.
                  Container( //Chứa thông tin
                    margin: EdgeInsets.all(4), //Khoảng cách lề của Container
                    child: Material(  //Dùng để tạo hiệu ứng đổ bóng
                      elevation: 5.0, //Độ nâng của đổ bóng
                      borderRadius: BorderRadius.circular(20),
                      child: Container(  // Độ cong của các cạnh của Container.
                      padding: EdgeInsets.all(14), //Khoảng cách lề bên trong của Container
                        child: Column(   // Xếp các widget con theo chiều dọc.
                        crossAxisAlignment: CrossAxisAlignment.start,  // Căn chỉnh các widget con theo phương thức dọc.
                          children: [
                            Image.asset( //Hiển thị hình ảnh
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Veggie Taco Hash", //Hiển thị hình ảnh
                                style: AppWidget.semiBooldTextFeildStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Fresh and Healthy", //Hiển thị hình ảnh
                                style: AppWidget.LightlineTextFeildStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text( //Hiển thị giá tiền
                              "\$25",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text("Mix Veg Salad",
                                style: AppWidget.semiBooldTextFeildStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Spicy with Onion",
                                style: AppWidget.LightlineTextFeildStyle()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$25",
                              style: AppWidget.semiBooldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //
  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Danh sách các widget hiển thị các loại thức ăn.
        // Mỗi widget là một GestureDetector để cho phép nhận sự kiện khi người dùng chạm vào.
        // Khi người dùng chạm vào một loại thức ăn, biến tương ứng sẽ được đặt thành true và cập nhật giao diện.
        //GestureDetector để bắt sự kiện khi người dùng chạm vào widget, và khi đó sẽ thực hiện một hành động nhất định
        GestureDetector(
          onTap: () {
            iceream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          //Material: Widget này tạo một hiệu ứng vật liệu đổ bóng cho widget con của nó.
          child: Material(
            elevation: 5.0, //Xác định độ nâng trong giao diện
            borderRadius: BorderRadius.circular(10),//xác định độ cong của các góc của container thành một giá trị cố định là 10.
            child: Container(
                decoration: BoxDecoration(
                    color: iceream ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset("images/ice-cream.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: iceream ? Colors.white : Colors.black)),
          ),
        ),

        GestureDetector(
          onTap: () {
            iceream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset("images/pizza.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: pizza ? Colors.white : Colors.black)),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: salad ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset("images/salad.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: salad ? Colors.white : Colors.black)),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: burger ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset("images/burger.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                    color: burger ? Colors.white : Colors.black)),
          ),
        ),
      ],
    );
  }
}
