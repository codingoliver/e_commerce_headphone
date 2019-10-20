// Flutter imports
import 'package:e_commerce_headphones/ui/icons/custom_search_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// My App imports
import 'package:e_commerce_headphones/ui/values/colors.dart';

getAppBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Icon(
        Icons.dashboard,
        color: PRIMARY_COLOR,
      ),
    ),
    elevation: 0.0,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Icon(
          CustomSearchIcon.search,
          color: Colors.grey,
        ),
      )
    ],
    backgroundColor: Colors.white,
  );
}
