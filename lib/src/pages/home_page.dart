import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Designs App'),
        ),
        body: _menuDesigns(context));
  }

  Widget _menuDesigns(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buttonDesign(context, 'Basic', 'basic'),
          SizedBox(
            height: 20.0,
          ),
          _buttonDesign(context, 'Scroll', 'scroll'),
          SizedBox(
            height: 20.0,
          ),
          _buttonDesign(context, 'Full', ''),
        ],
      ),
    );
  }

  Widget _buttonDesign(BuildContext context, String text, String route) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              child: Text(text),
              onPressed: () {
                Navigator.pushNamed(context, route);
              },
            ),
          )
        ],
      ),
    );
  }
}
