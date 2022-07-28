import 'package:flutter/material.dart';
import 'package:event_app/widgets/details_sliver_app_bar.dart';
import 'package:event_app/widgets/details_sliver_fill_reamaining.dart';
import 'package:stacked/stacked.dart';
import 'details_page_view_model.dart';

class DetailsPageView extends StatefulWidget {
  DetailsPageView({
    Key key,
    @required this.image,
    /*@required this.title*/
  }) : super(key: key);
  String image;
  // String title;

  @override
  State<DetailsPageView> createState() => _DetailsPageViewState();
}

class _DetailsPageViewState extends State<DetailsPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsPageViewModel>.reactive(
      builder:
          (BuildContext context, DetailsPageViewModel viewModel, Widget _) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              DetailSliverAppBar(widget.image),
              DetailSliverFillRemaining(),
            ],
          ),
        );
      },
      viewModelBuilder: () => DetailsPageViewModel(),
    );
  }
}
