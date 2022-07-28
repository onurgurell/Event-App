import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'ticket_page_view_model.dart';
          
class TicketPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketPageViewModel>.reactive(
      builder: (BuildContext context, TicketPageViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('TicketPage View'),
          ),
        );
      },
      viewModelBuilder: () => TicketPageViewModel(),
    );
  }
}
