import 'package:flutter/material.dart';
import 'package:event_app/core/models/events_list.dart';
import 'package:event_app/core/models/events_name.dart';

import 'detail_swipper_widget.dart';

class SwipperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _events = EventsList.events;
    //List<String> _eventsName = EventsName().eventsName;

    return Center(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textFestival(),
                  TextButton(onPressed: () {}, child: Text('see all'))
                ],
              ),
            ),
            _swipperArea(context, _events),
          ],
        ),
      ),
    );
  }

  SizedBox _swipperArea(BuildContext context, List<String> _events) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .4,
      child: DetailSwipper(
        events: _events,
        //eventsName: _eventsName,
      ),
    );
  }

  Text _textFestival() {
    return const Text(
      "Musical Festivals",
      style: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
