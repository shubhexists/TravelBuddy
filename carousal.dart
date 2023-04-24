import 'package:bordered_text/bordered_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String tajMahalSpaces =
    "                                                                           ";
const String qutubMinarSpaces = "  ";

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.0,
      child: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Tajmahalagraindia1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(160, 160, 0, 10),
                  child: BorderedText(
                    child: Text("Taj Mahal$tajMahalSpaces",
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Pictureclickedatthe1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(160, 160, 0, 10),
                  child: BorderedText(
                    child: const Text(
                      "India Gate$tajMahalSpaces",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/images/Qutub_minar_in_the_monsoons_201709081152591(1).png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(110, 160, 10, 10),
                  child: BorderedText(
                    child: const Text(
                      "Qutub Minar$tajMahalSpaces",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 240.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
