import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    print("build ${data.size.width} ${data.size.height}");

    Widget deviceWidget;
    if (data.size.width > 1024) {
      deviceWidget = desktop();
    } else if (data.size.width > 768) {
      deviceWidget = tablet();
    } else {
      deviceWidget = mobile();
    }

    return Scaffold(
      body: deviceWidget,
    );
  }

  Widget desktop() {
    return Text("TestPage desktop");
  }

  Widget tablet() {
    return Text("TestPage tablet");
  }

  Widget mobile() {
    return Text("TestPage mobile");
  }
}
