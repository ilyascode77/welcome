import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignUp.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 399.0,
                width: double.infinity,
                child: Carousel(
                  dotSize: 5.0,
                  animationCurve: Curves.bounceInOut,
                  images: [
                    Image.asset(
                      'wlc.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'buvette2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'buve.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text('Find the best food',
                      style: GoogleFonts.aclonica(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 233, 211, 10),
                      )),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                      'Treat yourself to a delicious meal today'
                      '   Order now and enjoy',
                      style: GoogleFonts.abel(
                        backgroundColor: Color.fromARGB(255, 146, 184, 43),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 236, 116, 3),
                      )),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Join Now',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Foldit-VariableFont_wght',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 241, 140, 8),
                        onPrimary: Color.fromARGB(255, 242, 245, 247),
                      ),
                    ),
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
