import 'package:flutter/material.dart';
import 'package:event_app/views/help/color_helper.dart';

class TicketButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: ColorHelper.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        alignment: Alignment.center,
        width: double.infinity,
        child: Text('Buy Ticket'),
      ),
    );
  }
}
