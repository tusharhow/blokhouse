import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Rating',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(children: [
        SizedBox(height: 150),
        Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Container(
                          height: 350,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < 6; i++)
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff9AF6FF),
                                          size: 35,
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Rate our app',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 50,
                                width: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff00A9FF),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Don’t like the app? Let us know.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff00A9FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ));
            },
            child: Text('Rate this app'),
          ),
        ),
      ]),
    );
  }
}
