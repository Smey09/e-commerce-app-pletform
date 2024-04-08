import 'package:flutter/material.dart';

import '../../../Tab/Shop/Data/Laptop/macbook_data.dart';

class Laptop_MacbookDetailsPage extends StatelessWidget {
  final MacBookProduct_Data macBooks;

  const Laptop_MacbookDetailsPage({Key? key, required this.macBooks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(macBooks.name),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Container(
              width: 6000,
              height: 600,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        macBooks.condition,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: macBooks.condition == "New"
                              ? Colors.green
                              : Colors.pink,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  macBooks.imageUrl.isNotEmpty
                      ? Image.asset(
                          macBooks.imageUrl,
                          width: 400.0,
                          // fit: BoxFit.cover,
                          height: 300.0,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 241, 251, 255),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(30.0),
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
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
                        macBooks.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              macBooks.price.toStringAsFixed(2),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "USD",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Text(
                          macBooks.description,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
