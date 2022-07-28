import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Description',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              'Electroic music festival hald in Belgium.\nTomorrowland was first held in 2005 and has... ',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Read More',
              style: TextStyle(color: Colors.purple),
            ),
          ),
        )
      ],
    );
  }
}
