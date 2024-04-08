import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../Tab/Shop/Data/Phone/Iphone_data.dart';
import '../../Customer/buy_product.dart';

class IPhoneDetailsPage extends StatelessWidget {
  final IPhoneProduct_Data phone;

  const IPhoneDetailsPage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phone.name),
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
                    color: Color.fromARGB(255, 230, 215, 245),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        phone.condition,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: phone.condition == "New"
                              ? Colors.green
                              : Colors.pink,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  phone.imageUrl.isNotEmpty
                      ? Image.asset(
                          phone.imageUrl,
                          // width: 500.0,
                          fit: BoxFit.cover,
                          height: 350.0,
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
                        phone.name,
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
                              phone.price.toStringAsFixed(2),
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
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Text(
                          phone.description,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 253, 198, 250),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "x1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 253, 198, 250),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 179, 124, 235),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 255, 244, 125),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 245, 85, 226),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 169, 82, 255),
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.greenAccent,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 186, 218, 235)),
                child: const Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BuyProducts();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 71, 172, 255),
                        Color.fromARGB(255, 246, 72, 197),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 255, 188, 252),
                ),
                child: const Icon(
                  Icons.store_mall_directory,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
