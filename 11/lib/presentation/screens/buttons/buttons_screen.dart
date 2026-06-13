import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons Screen")),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: double.infinity,
      child: Wrap(
        spacing: 10,
        // crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
          ElevatedButton(
            onPressed: null,
            child: Text("ElevatedButton Disabled"),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("ElevatedButton.icon"),
            icon: Icon(Icons.access_alarm_rounded),
          ),
          FilledButton(onPressed: () {}, child: Text("FilledButton")),
          FilledButton.icon(
            onPressed: () {},
            label: Text("FilledButton.icon"),
            icon: Icon(Icons.accessibility_new),
          ),
          OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text("OutlinedButton.icon"),
            icon: Icon(Icons.terminal),
          ),
          TextButton(onPressed: () {}, child: Text("TextButton")),
          TextButton.icon(
            onPressed: () {},
            label: Text("TextButton.icon"),
            icon: Icon(Icons.account_box_outlined),
          ),
          //  custom button
          CustomButton(),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration_rounded),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: MaterialStatePropertyAll(colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("CustomButton", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
