// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

class Androidlarge1Widget extends StatefulWidget {
  const Androidlarge1Widget({super.key});

  @override
  _Androidlarge1WidgetState createState() => _Androidlarge1WidgetState();
}

class _Androidlarge1WidgetState extends State<Androidlarge1Widget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: 360,
          height: 800,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: -87,
                left: -175,
                child: Container(
                    width: 389,
                    height: 384,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 152, 0, 0.75),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(389, 384)),
                    ))),
            Positioned(
                top: 518,
                left: 149,
                child: Container(
                    width: 364,
                    height: 370,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(61, 255, 57, 0.75),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(364, 370)),
                    ))),
            Positioned(
                top: 753,
                left: 122,
                child: Container(
                    width: 160,
                    height: 55,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color: Color.fromRGBO(21, 21, 21, 1),
                    ))),
            const Positioned(
                top: 765,
                left: 160,
                child: Text(
                  'NEXT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 28,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 161,
                left: -47,
                child: Container(
                    width: 481,
                    height: 477,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/Theredforteuclideanvectorfortificationrockpalacea3afcaa16923955fa1b35194402496d31.png'),
                          fit: BoxFit.fill),
                    ))),
            const Positioned(
                top: 123,
                left: 26,
                child: Text(
                  'where the journey begins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            const Positioned(
                top: 64,
                left: 15,
                child: Text(
                  'Tour Buddy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 48,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
          ])),
    );
  }
}
