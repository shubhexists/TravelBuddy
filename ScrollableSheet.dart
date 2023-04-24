// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:travell/Screens/ResponseScreen/responseScreen.dart';

TextEditingController placeController = TextEditingController();
TextEditingController durationController = TextEditingController();
TextEditingController budgetController = TextEditingController();

Widget bottomDetailsSheet() {
  return DraggableScrollableSheet(
      initialChildSize: 0.07,
      minChildSize: 0.07,
      // maxChildSize: .6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
            color: Colors.lightGreen[100],
            child: ListView(
              controller: scrollController,
              children: [
                const ListTile(
                  title: Center(child: Icon(Icons.drag_handle)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Plan My Trip",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "City/Country",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: placeController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Enter City/Country",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                const ListTile(
                  title: Text(
                    "Budget",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: budgetController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Enter Budget (in Rs.)",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                const ListTile(
                  title: Text(
                    "Duration(in days)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: durationController,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Enter Duration (in days)",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResponseScreen()));
                      },
                      child: const Text("Plan My Trip",
                          style: TextStyle(fontSize: 25))),
                ),
              ],
            ));
      });
}

String promptFinal =
    "Plan me an itinerary for ${placeController.text} for ${durationController.text} under a budget of ${budgetController.text}";
