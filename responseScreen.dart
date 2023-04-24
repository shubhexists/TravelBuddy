// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:travell/Screens/HomeScreen/features/ScrollableSheet.dart';
import 'package:travell/Screens/ResponseScreen/responseLoadingScreen.dart';
import 'package:travell/models/gptModels.dart';

class ResponseScreen extends StatefulWidget {
  const ResponseScreen({super.key});

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Itinerary",
              style: TextStyle(fontSize: 25, color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: generateResponse(promptFinal),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: Text(snapshot.data.toString(),
                      style:
                          const TextStyle(fontSize: 25, color: Colors.black)),
                );
              } else {
                return const Center(
                  child: LoadingScreen(),
                );
              }
            },
          ),
        ));
  }
}
