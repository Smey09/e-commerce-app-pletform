
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../Service/Detail_Page/Phone/Xiaomi.dart';
import '../../../../Data/Phone/Xiaomi_data.dart';

class buildScreen_XiaomiProduct_List extends StatefulWidget {
  const buildScreen_XiaomiProduct_List({super.key});

  @override
  State<buildScreen_XiaomiProduct_List> createState() => _XiaomiProductsState();
}

class _XiaomiProductsState extends State<buildScreen_XiaomiProduct_List> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: 2000,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft,
                  colors: [
                    Color.fromARGB(255, 159, 194, 255),
                    Color.fromARGB(255, 255, 156, 217),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 174, 139, 255),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Xiaomi",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "News & used",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 5.0,
            runSpacing: 6.0,
            children: phones
                .map(
                  (XiaomiProduct_Data phone) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => XiaomiDetailsPage(phone: phone),
                      ),
                    ), // Handle product tap
                    child: Container(
                      height: 160,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 241, 251, 255),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 174, 139, 255),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  phone.condition, // Display phone condition
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: phone.condition == "New"
                                        ? Colors.green
                                        : Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Image.asset(
                          //   phone.imageUrl,
                          //   width: 100.0,
                          //   height: 100.0,
                          //   // fit: BoxFit.cover,
                          // ),
                          phone.imageUrl.isNotEmpty
                              ? Image.asset(
                                  phone.imageUrl,
                                  width: 200.0,
                                  height: 100.0,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: const Color.fromARGB(
                                          255, 241, 251, 255),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(30.0),
                                      child: CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation<
                                                Color>(
                                            Color.fromARGB(255, 243, 0, 166)),
                                        backgroundColor: Colors.blue,
                                        strokeWidth: 5.0,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                phone.name,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      phone.price.toStringAsFixed(2),
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "USD",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
