
import 'package:flutter/material.dart';

import '../../../../../../Service/Detail_Page/Monitor/Asus.dart';
import '../../../../Data/Monitor/monitor_asus_data.dart';

class buildScreen_Asus_Monitor_Product_List extends StatefulWidget {
  const buildScreen_Asus_Monitor_Product_List({super.key});

  @override
  State<buildScreen_Asus_Monitor_Product_List> createState() =>
      _buildScreen_Asus_Monirtor_Product_ListState();
}

class _buildScreen_Asus_Monirtor_Product_ListState
    extends State<buildScreen_Asus_Monitor_Product_List> {
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
                      "Asus Monitor",
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
            spacing: 12.0,
            runSpacing: 8.0,
            children: monitor_asus
                .map(
                  (Monitor_Asus_Product_Data monitor_asus) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Monitor_AsusDetailsPage(monitor_asus: monitor_asus),
                      ),
                    ),
                    child: Container(
                      width: 170,
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
                                  monitor_asus
                                      .condition, // Display monitor_asus condition
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: monitor_asus.condition == "New"
                                        ? Colors.green
                                        : Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Image.asset(
                          //   monitor_asus.imageUrl,
                          //   width: 230.0,
                          //   height: 100.0,
                          //   // fit: BoxFit.cover,
                          // ),
                          monitor_asus.imageUrl.isNotEmpty
                              ? Image.asset(
                                  monitor_asus.imageUrl,
                                  width: 300.0,
                                  height: 150.0,
                                  // fit: BoxFit.cover,
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
                                monitor_asus.name,
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
                                      monitor_asus.price.toStringAsFixed(2),
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
