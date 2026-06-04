import 'package:flutter/material.dart';

class CounterFunctionsWidget extends StatefulWidget {
  const CounterFunctionsWidget({super.key});

  @override
  State<CounterFunctionsWidget> createState() => _CounterFunctionsWidgetState();
}

class _CounterFunctionsWidgetState extends State<CounterFunctionsWidget> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Function"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: TextStyle(fontSize: 160, fontWeight: FontWeight(100)),
            ),
            Text(
              "Click${clickCounter == 1 ? '' : 's'}",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              clickCounter += 1;
              setState(() {});
            },
          ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
