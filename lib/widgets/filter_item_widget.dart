import 'package:flutter/material.dart';

class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Theme.of(context).primaryColor : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      margin: const EdgeInsets.only(right: 7.5),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Color(0xFF383838),
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}
