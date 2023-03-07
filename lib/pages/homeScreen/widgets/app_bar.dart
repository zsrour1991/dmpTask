import 'package:dmptask/core/staticImages.dart';
import 'package:flutter/material.dart';
class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 5,),
            CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white70,
                child:
                CircleAvatar(
                    radius: 30,
                    child:
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(StaticImages.profileImage,),
                            fit: BoxFit.cover,
                          )
                      ),
                    )

                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("مرحبا بك",style: TextStyle(color: Color(0xff7b838b)),),
                  Text("محمد القحطاني",
                    style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child:
                      Stack(
                        children: [
                          Center(child: Icon(Icons.shopping_bag_rounded,color: Colors.black,)),
                          Align(
                            alignment: Alignment(0.7,-0.7),
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.orange,
                              child: Text('2',style: TextStyle(color: Colors.white,fontSize: 10),),
                            ),
                          )
                        ],
                      )

                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.notifications,color: Colors.black,),
                  ),
                ],
              ),
            ),





          ],
        )
    );
  }
}

