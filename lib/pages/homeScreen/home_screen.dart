import 'package:carousel_slider/carousel_slider.dart';
import 'package:dmptask/core/CustomBottomNavigationBar.dart';
import 'package:dmptask/pages/homeScreen/widgets/Title_widget.dart';
import 'package:dmptask/pages/homeScreen/widgets/app_bar.dart';
import 'package:dmptask/pages/homeScreen/widgets/data.dart';
import 'package:dmptask/pages/homeScreen/widgets/dataModel.dart';
import 'package:dmptask/pages/homeScreen/widgets/reservation.dart';
import 'package:dmptask/pages/homeScreen/widgets/search.dart';
import 'package:dmptask/pages/homeScreen/widgets/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/staticImages.dart';
import 'widgets/machines.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int _selectedItem=0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffddedf4),
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.home,
            Icons.card_giftcard,
            Icons.description,
            Icons.person

          ],
          titleList:[
            'الرئيسية',
            'الطلبات',
            'الحجوزات',
            'حسابي'],
          onChange: (val) {
            setState(() {
              _selectedItem = val;
            });
          },
          defaultSelectedIndex: 1,
        ),
        body: SafeArea(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Appbar(),
                  Container(
                    height: 20,
                  ),
                  Search(),
                  Container(
                    height: 20,
                  ),
                  SliderWidget(),
                  Container(
                    height: 20,
                  ),
                  ReservationWidget(),
                  Container(
                    height: 20,
                  ),
                  TitleWidget(title: "اجهزة لايزر ملاي"),
                  Container(
                    height: 5,
                  ),
                  MachinesWidget(data: DataModel.machinesList,),
                  Container(
                    height: 15,
                  ),
                  TitleWidget(title: "ملحقات الاجهزة"),
                  Container(
                    height: 5,
                  ),
                  MachinesWidget(data: DataModel.accessoriesList,),
                  Container(
                    height: 15,
                  ),
                  TitleWidget(title: "أخرى"),
                  Container(
                    height: 5,
                  ),
                  MachinesWidget(data: DataModel.otherList,),
                ],
              ),
            ),
          ),
        )));
  }
}
