import 'package:flutter/material.dart';

enum Direction { vertical, horizontal }

typedef OnSelected = void Function(int? index);

class CategoryList extends StatefulWidget {
  int? initIndex;
  final int itemsCount;
  final List<Widget?> items;
  final OnSelected onSelected;
  final Color? activeBackgroundColor;
  final Color? inactiveBackgroundColor;
  final EdgeInsetsGeometry? itemPadding;
  final EdgeInsetsGeometry? itemMargin;
  final BorderRadius? itemBorderRadius;

  CategoryList({
    Key? key,
    required this.itemsCount,
    required this.items,
    required this.onSelected,
    this.initIndex = 0,
    this.activeBackgroundColor,
    this.inactiveBackgroundColor,
    this.itemPadding,
    this.itemMargin,
    this.itemBorderRadius,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int? _currentIndex;
  Color? activeBackgroundColor;
  Color? inactiveBackgroundColor;
  EdgeInsetsGeometry? itemPadding;
  EdgeInsetsGeometry? itemMargin;

  @override
  void initState() {
    _currentIndex = widget.initIndex;
    super.initState();
  }

  void _handleOnTap(int index) async {
    setState(() => _currentIndex = index);
    widget.onSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    activeBackgroundColor =
        widget.activeBackgroundColor ?? Theme.of(context).colorScheme.primary;

    inactiveBackgroundColor =
        widget.inactiveBackgroundColor ?? Theme.of(context).disabledColor;

    itemMargin = widget.itemMargin ?? const EdgeInsets.all(0.0);
    itemPadding = widget.itemPadding ?? const EdgeInsets.all(8.0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int index = 0; index < widget.itemsCount; index++)
          singleItem(index),
      ],
    );
  }

  GestureDetector singleItem(int index) {
    return GestureDetector(
      onTap: () => _handleOnTap(index),
      child: Container(
        margin: itemMargin,
        padding: itemPadding,
        decoration: BoxDecoration(
          borderRadius: widget.itemBorderRadius,
          color: _currentIndex == index
              ? activeBackgroundColor
              : inactiveBackgroundColor,
        ),
        child: widget.items[index],
      ),
    );
  }
}
