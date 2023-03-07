import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.7,
              child: TextFormField(
                //controller: ,
                decoration: InputDecoration(
                  hintText: "ابجث عن أفضل انواع لايزر ملاي",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff2a75bb)),
              child: Icon(
                Icons.sort_sharp,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ));
  }
}
