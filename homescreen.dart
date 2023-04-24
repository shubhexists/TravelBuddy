import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:travell/Screens/HomeScreen/features/ScrollableSheet.dart";
import "package:travell/Screens/HomeScreen/features/carousal.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Tour Buddy",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.2,
              ),
              const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.person_rounded,
                size: 30,
                color: Colors.black,
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Carousel(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Trending Searches',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 19,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 200,
                            height: 180,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/544pxcharminar_hyderabad_11.png'),
                                  fit: BoxFit.fill),
                            )),
                        Text("Char Minar",
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                            // TextStyle(
                            //     fontSize: 20, fontWeight: FontWeight.bold),
                            )
                      ],
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 200,
                            height: 180,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/National_war_memorial_on_the_21st_anniversary_of_kargil_vijay_diwas_20201.png'),
                                  fit: BoxFit.fill),
                            )),
                        const Text(
                          "War Memorial",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 200,
                            height: 180,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Ooty_town_winter_morning_from_gem_park_p1040150e1.png'),
                                  fit: BoxFit.fill),
                            )),
                        const Text(
                          "Ooty",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomDetailsSheet()
        ]),
      ),
    );
  }
}
