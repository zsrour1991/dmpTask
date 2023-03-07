import 'package:dmptask/pages/homeScreen/widgets/data.dart';
import 'package:flutter/material.dart';

class MachinesWidget extends StatefulWidget {
  final List<dataEntity>? data;
  const MachinesWidget({Key? key, required this.data}) : super(key: key);

  @override
  _MachinesWidgetState createState() => _MachinesWidgetState();
}

class _MachinesWidgetState extends State<MachinesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
          itemCount: widget.data!.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xffffffff),
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                //set border radius more than 50% of height and width to make circle
              ),
              child: Container(
                  height: 340,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffffffff)),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          widget.data![index].image!),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16)),
                                  color: Color(0xff2875ba)),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                          ),
                          Text(
                            widget.data![index].title!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                          ),
                          Text(
                            widget.data![index].description!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      widget.data![index].installments!
                          ? Row(
                              children: [
                                Container(
                                  width: 5,
                                ),
                                Text(
                                  "متوفر اقساط تابي وتمارا",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            )
                          : Container(
                              height: 27,
                            ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                          ),
                          Text(
                            widget.data![index].newPrice!.toInt().toString() +
                                " " +
                                "ر.س ",
                            style: TextStyle(
                                color: Color(0xff2a72b9),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Container(
                            width: 15,
                          ),
                          if (widget.data![index].oldprice != 0)
                            Text(
                              widget.data![index].oldprice!.toInt().toString() +
                                  " " +
                                  "ر.س ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff2a72b9),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'اضف الى السلة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
