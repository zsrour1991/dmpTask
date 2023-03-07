import 'package:flutter/material.dart';

class ReservationWidget extends StatefulWidget {
  const ReservationWidget({Key? key}) : super(key: key);

  @override
  _ReservationWidgetState createState() => _ReservationWidgetState();
}

class _ReservationWidgetState extends State<ReservationWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Container(
        // height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffceecfb)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 10,
                ),
                Icon(
                  Icons.lightbulb,
                  color: Color(0xfff99f1b),
                  size: 70,
                ),
                Container(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "هل حجزت جلستك الجديدة؟",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 190,
                      child: Text(
                        "سارع الان وقم بالتسجيل لكي تحجز جلستك القادمة, سوف نقوم بتوفير كل ما يلزم لك لا تقلق!!",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff174896),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  gradient: new LinearGradient(
                    colors: [
                      // const Color(0xFF2E469E),
                      const Color(0xFF253473),
                      const Color(0xFF253473),
                      const Color(0xFF2a71b8),
                      const Color(0xFF2a71b8),
                      // const Color(0xFFCEE2F0),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    // stops: [0.0, 1.0, 0.2,],
                    // tileMode: TileMode.clamp
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "احجز الان",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Container(
                    width: 3,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Center(
                      child: RotatedBox(
                          quarterTurns: 2,
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF253473),
                            size: 18,
                          ))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
