import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller/product_controller.dart';

class ProductView extends StatelessWidget {
   ProductView({super.key});

  final ProductgetxController product=Get.put(ProductgetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(()=>Expanded(
        child: GridView.builder(
        itemCount: product.product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
            mainAxisSpacing: 10,


          ), itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 261,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: EdgeInsets.all(5),
                        height: 120,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          image: DecorationImage(

                              image: NetworkImage(
                                  "https://eplay.coderangon.com/public/storage/${product.product[index]["image"]}"
                              ),

                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${product.product[index]["title"]}",
                          style: TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Row(
                          spacing: 5,
                          children: [
                            Text(
                              "${product.product[index]["price"]}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${product.product[index]["old_price"]}",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration:
                                TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 88,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            child: Center(
                              child: Text("Add To Cart"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    top: 5,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "OFFER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },),
      )),

            ],
          ),
        ),
      ),
    );;
  }
}

