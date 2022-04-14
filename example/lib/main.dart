import 'package:flutter/material.dart';
import 'package:lean_slider/lean_slider/LeanSlider/lean_slider_main.dart';
import 'package:lean_slider/options/lean_slider_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Deneme());
  }
}

class Deneme2 extends StatelessWidget {
  const Deneme2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.red,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black,
                ),
              ),
            )),
      ),
    ));
  }
}

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Slide.lean(
            height: 0.35,
            width: 1,
            children: [
              Placeholder(),
              Placeholder(),
            ],
            sliderOptions: SliderOptions(   
              radius: 10,
              barHeight: 15,
              barColor: Colors.black,
              indicatorColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
