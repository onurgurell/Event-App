import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../view_model/ticket_view_model.dart';

class TicketPageView extends StatelessWidget {
  const TicketPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketPageViewModel>.reactive(
      builder: (BuildContext context, TicketPageViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text('TicketPage View'),
          ),
        );
      },
      viewModelBuilder: () => TicketPageViewModel(),
    );
  }
}
