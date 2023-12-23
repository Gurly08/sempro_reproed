import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                  child: Stack(
                    clipBehavior: Clip.none,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Positioned(
                      top: 1,
                      left: 0,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 120,
                        child: Image.asset('assets/images/frame1.png'),
                      ),
                    ),
         
                    Positioned(
                      bottom: 30,
                      right: 0,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 140, 
                        child: Image.asset('assets/images/frame2.png'),
                      ),
                    ),
        
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25, left: 25),
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hi!',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  ),
                                  Text('Bagas',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                foregroundImage:
                                    AssetImage('assets/images/ppaku.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
        
                    Positioned.fill(
                      bottom: -250,
                      left: 25,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 90,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5), // atur offset shadow sesuai kebutuhan
                                  ),
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Bagas Djunaedi', 
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '8', 
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '17 Tahun', 
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
        
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Container(
                                height: 90,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 5), // atur offset shadow sesuai kebutuhan
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '285', 
                                      style: TextStyle(
                                        fontSize: 25, 
                                        fontWeight: FontWeight.w500,
                                        color: Colors.green[600],
                                        ),
                                    ),
                                    const Text(
                                      'Point',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        
              // ignore: prefer_const_constructors
              SizedBox(height: 45),
              
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Sesuaikan dengan jumlah kolom yang diinginkan
                ),
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(color: Colors.green, height: 50),
                          Container(color: Colors.blue, height: 50),
                          Container(color: Colors.purple, height: 50),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Container(color: Colors.pink, height: 50),
                          Container(color: Colors.yellow, height: 50),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
        
        
            ],
          ),
        ),
      ),
    );
  }
}
