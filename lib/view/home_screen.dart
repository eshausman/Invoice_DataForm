import 'package:dataform_invoice/widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
 

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: size.width / 1.5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CustomText(
                                "Invoices", 30, FontWeight.bold, Colors.black),
                            Spacer(),
                            Container(
                                height: 35,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: CustomIcon(
                                          Icons.add_circle_outline_outlined,
                                          15,
                                          Colors.white,
                                        ),
                                      ),
                                      CustomText(" Invoice", 15,
                                          FontWeight.bold, Colors.white)
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 560,
                        width: size.width / 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}