import 'package:flutter/material.dart';
import 'package:event_app/widgets/description.dart';
import 'package:event_app/widgets/description.dart';
import 'package:event_app/widgets/location.dart';
import 'package:event_app/widgets/ticket_button.dart';

class DetailSliverFillRemaining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String personUrl =
        'https://www.bumudurbudur.com/image/cache/data/Kara%20Kalem/kara-kalem-portre-tek-kisi-1-500x500.jpg';
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Description(),
            Gap(),
            Location(),
            const SizedBox(
              height: 15,
            ),
            _interestedText(),
            _listImage(personUrl),
            TicketButton(),
          ],
        ),
      ),
    );
  }

  Expanded _listImage(String personUrl) {
    return Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                backgroundImage: NetworkImage(personUrl),
              ),
            ),
          );
  }

  Container _interestedText() {
    return Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Interested',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}

class Gap extends StatelessWidget {
  const Gap({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}
