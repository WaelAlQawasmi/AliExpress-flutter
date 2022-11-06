import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(
      {Key? key,
      required this.prodactname,
      required this.prodacImg,
      required this.prodacPrice})
      : super(key: key);
  final String prodactname;
  final int prodacPrice;
  final String prodacImg;
  var number = 1;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(widget.prodactname),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "overview",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Reviews",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.reviews,
                      color: Colors.white,
                    )
                  ],
                )),
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    )
                  ],
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 220,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(widget.prodacImg),
                            fit: BoxFit.cover),
                      ),
                    ),

                    Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              // Shadow position
                            ),
                          ],
                          border:
                              Border.all(color: Colors.transparent, width: .4),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 190),
                                child: Text(
                                  "${widget.prodactname}  ",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontFamily: "ElMessiri-VariableFont",
                                      color: Colors.black54),
                                ),
                              ),
                              Expanded(
                                child: Container(

                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.redAccent,
                                    )),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  child: Text("Description",
                                      style: TextStyle(fontSize: 20)))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width: 400,
                                  height: 100,
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  child: Text(
                                      " A product description is the marketing copy that explains what a product is and why it's worth purchasing. The purpose of a product description is to supply customers with important information about the features and key benefits of the product ",
                                      style: TextStyle(
                                          overflow: TextOverflow.fade,
                                          fontSize: 15)))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.number++;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.redAccent,
                                        size: 35,
                                      )),
                                  Text('${widget.number}'),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.number--;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_circle_outline,
                                        size: 35,
                                        color: Colors.redAccent,

                                      ))
                                ],
                              ),
                              Text(
                                "${widget.prodacPrice*widget.number} \$ ",
                                style: TextStyle(
                                     fontSize: 25),
                              ),
                            ],
                          ),
                          Container(
                            width: 300,
                            height: 40,
                               alignment: Alignment.center,

                               child: ElevatedButton(onPressed: (){}, child: Text("Add to cart"),style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),)

                          )
                        ])),
                  ],
                ),
              ),
              Container(
                child: Text("22222"),
              ),
              Container(
                child: Text("33333"),
              )
            ],
          ),
        ));
  }
}
