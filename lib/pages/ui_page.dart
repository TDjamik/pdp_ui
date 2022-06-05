import 'package:flutter/material.dart';

class UIPageTask extends StatefulWidget {
  static const id ="/ui_page";

  const UIPageTask({Key? key}) : super(key: key);

  @override
  State<UIPageTask> createState() => _UIPageTaskState();
}

class _UIPageTaskState extends State<UIPageTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UI",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "User",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
              ),
            ),
            SizedBox(width: 10,),
            Text(
              "Interface",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
