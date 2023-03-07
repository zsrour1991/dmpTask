import 'package:dmptask/core/trapezoid_demo.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  final List<String> titleList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange,
      required this.titleList});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];
  List<String> _titleList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
    _titleList = widget.titleList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i, _titleList[i]));
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: _navBarItemList,
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, String title) {
    return GestureDetector(
        onTap: () {
          widget.onChange(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        child: ClipPath(
          clipper: index == _selectedIndex ? ClipTrapezoid() : null,
          // child: Container(color: Colors.amber),
          child: Container(
            height: 75,
            width: MediaQuery.of(context).size.width / _iconList.length,
            decoration: index == _selectedIndex
                ? BoxDecoration(
                    color: Color(0xffdbf0fb),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(index == 0 ? 16 : 0),
                        topLeft: Radius.circular(
                            index == widget.iconList.length - 1 ? 16 : 0)),
                    gradient: LinearGradient(colors: [
                      Color(0xffdbf0fb),
                      Color(0xffdbf0fb).withOpacity(0.015),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter))
                : BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(index == 0 ? 16 : 0),
                        topLeft: Radius.circular(
                            index == widget.iconList.length - 1 ? 16 : 0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color:
                      index == _selectedIndex ? Color(0xff6fa7da) : Colors.grey,
                ),
                Container(
                  height: 3,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: index == _selectedIndex
                        ? Color(0xff6fa7da)
                        : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
