import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  bool menuOpened = false;

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInput(
          controller: _controller,
        ),
        Container(
          height: 50,
          width: 60,
          child: FlatButton(
            onPressed: () {
              !menuOpened ? _controller.forward() : _controller.reverse();
              menuOpened = !menuOpened;
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
              semanticLabel: 'Open Menu',
            ),
          ),
        ),
      ],
    );
  }
}
