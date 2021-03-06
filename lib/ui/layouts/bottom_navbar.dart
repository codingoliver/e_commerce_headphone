// Flutter imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Third party imports
import 'package:badges/badges.dart';

// My App imports
import 'package:e_commerce_headphones/ui/icons/custom_bell_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_envelope_icon.dart';
import 'package:e_commerce_headphones/ui/icons/custom_heart_icon.dart';
import 'package:e_commerce_headphones/ui/values/colors.dart';

class BottomNavBar extends StatefulWidget {
  final Function onItemSelected;
  final int notificationsCount;

  BottomNavBar({this.onItemSelected, this.notificationsCount});

  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      margin: EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.all(4),
        color: PRIMARY_COLOR,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              child: Container(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.home,
                      color: this.selectedTabIndex == 0
                          ? Colors.grey.shade800
                          : Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 10),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RaleWay',
                            color: this.selectedTabIndex == 0
                                ? Colors.grey.shade800
                                : Colors.white),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: this.selectedTabIndex == 0 ? ACCENT_COLOR : null,
                    borderRadius: BorderRadius.circular(40)),
              ),
              onTap: () => this._onItemSelected(0),
            ),
            InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Icon(
                    CustomHeartIcon.heart,
                    color: this.selectedTabIndex == 1
                        ? Colors.grey.shade800
                        : Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: this.selectedTabIndex == 1 ? ACCENT_COLOR : null,
                      borderRadius: BorderRadius.circular(20)),
                ),
                onTap: () => this._onItemSelected(1)),
            InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Icon(
                    CustomEnvelopeIcon.envelope,
                    color: this.selectedTabIndex == 2
                        ? Colors.grey.shade800
                        : Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: this.selectedTabIndex == 2 ? ACCENT_COLOR : null,
                      borderRadius: BorderRadius.circular(20)),
                ),
                onTap: () => this._onItemSelected(2)),
            InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Badge(
                    badgeContent: Text(
                      '${this.widget.notificationsCount}',
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                    badgeColor: ACCENT_COLOR,
                    position: BadgePosition.topLeft(top: -10, left: -5),
                    showBadge: this.selectedTabIndex == 3 ? false : true,
                    child: Icon(
                      CustomBellIcon.notification,
                      color: this.selectedTabIndex == 3
                          ? Colors.grey.shade800
                          : Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: this.selectedTabIndex == 3 ? ACCENT_COLOR : null,
                      borderRadius: BorderRadius.circular(20)),
                ),
                onTap: () => this._onItemSelected(3)),
          ],
        ),
      ),
    );
  }

  _onItemSelected(int index) {
    this.setState(() => this.selectedTabIndex = index);
    this.widget.onItemSelected(index);
  }
}
