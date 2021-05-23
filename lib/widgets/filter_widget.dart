import 'package:flutter/material.dart';

import 'filter_item_widget.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
    required this.filters,
    required this.selectedFilterIndex,
  }) : super(key: key);

  final List<String> filters;
  final int selectedFilterIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: filters
            .map((filter) => FilterItemWidget(
                  title: filter,
                  isSelected: selectedFilterIndex == filters.indexOf(filter),
                ))
            .toList(),
      ),
    );
  }
}
