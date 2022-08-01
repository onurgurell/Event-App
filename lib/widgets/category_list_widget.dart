import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/categories_list.dart';
import '../view_model/home_view_model.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> _category = Categories.categories;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) => SafeArea(
          child: _chipArea(context, viewModel),
        ),
      ),
    );
  }

  SizedBox _chipArea(BuildContext context, HomeViewModel viewModel) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .05,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: _category.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 5,
          );
        },
        itemBuilder: (context, index) {
          return _chip(viewModel, index);
        },
      ),
    );
  }

  ChoiceChip _chip(HomeViewModel viewModel, int index) {
    return ChoiceChip(
      selectedColor:
          viewModel.selectedCategory == false ? Colors.purple : Colors.grey,
      selected: viewModel.selectedCategory,
      onSelected: (isSelected) {
        viewModel.selectedCategory = isSelected;
        // ignore: avoid_print
        print(viewModel.selectedCategory);
      },
      padding: EdgeInsets.all(6),
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
      ),
      label: Text(
        _category[index],
      ),
    );
  }
}

/*
Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: seletcedCatedgory == 1 ? Colors.purple : Colors.grey,
            ),
            child: Center(
              child: Text(
                _category[index],
                style: TextStyle(fontSize: 18),
              ),
            ),
          );*/
          