import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Colors.blueGrey[700],
          borderRadius: BorderRadius.circular(22),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintStyle: const TextStyle(fontSize: 17),
            hintText: 'Search',
            // ignore: unnecessary_const
            suffixIcon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.grey,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
