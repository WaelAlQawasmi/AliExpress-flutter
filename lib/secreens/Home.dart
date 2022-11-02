import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> DrowerKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return Scaffold(
        key: DrowerKey,
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.redAccent),
                accountName: Text("user"),
                accountEmail: Text("user@exampel.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("U"),
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("shopping cart"),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text("history"),
              ),
              ListTile(
                leading: Icon(Icons.local_shipping_outlined),
                title: Text("shipping order"),
              ),
              Spacer(),
              Spacer(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(" logout"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.center,
            width: 300,
            height: 40,
            child: TextFormField(
                focusNode: myFocusNode,
                cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.white30
                            : Colors.grey),
                    prefixIcon: Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border:
                              Border.all(width: 2, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(50)),
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 15,
                        ),
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                        ),
                      ),
                    ),
                    labelText: 'shopping For',
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 2.0,
                      ),
                    ))),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                DrowerKey.currentState?.openDrawer();
              },
              icon: Icon(Icons.camera_alt),
              color: Colors.redAccent,
            )
          ],
        ),
        body: Container(
          height: 610,
          child: Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 50,
                alignment: Alignment.topLeft,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    // VerticalDivider(
                    //   width: 10,
                    //   thickness: 20,
                    // ),
                    Story(Icons.account_circle_sharp),
                    Story(Icons.info),
                    Story(Icons.category_outlined),
                    Story(Icons.ac_unit_rounded),
                    Story(Icons.money_outlined),
                    Story(Icons.info),
                    Story(Icons.category_outlined),
                    Story(Icons.ac_unit_rounded),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 520,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      Prodact(
                          "https://ae04.alicdn.com/kf/Sc5ebb18847c948f58163dac93f078ad9K.jpg_220x220.jpg_Q90.jpg_.webp",
                          "flash momery",
                          100),
                      Prodact(
                          "https://ae04.alicdn.com/kf/H7c1ec58354af48b4ba3590451bde53e1E.jpg_220x220.jpg_Q90.jpg_.webp",
                          " labtop",
                          800),
                      Prodact(
                          "https://ae04.alicdn.com/kf/Sca5233eaad8c4be193bc7f04d883e115L.jpg_220x220.jpg_Q90.jpg_.webp",
                          "Smart Watch",
                          120),
                      Prodact(
                          "https://ae04.alicdn.com/kf/S0c8c4552ae42413794daf7436b9fa02ax.jpg_220x220.jpg_Q90.jpg_.webp",
                          " Power Bank",
                          25),
                      Prodact(
                          "https://ae04.alicdn.com/kf/S7b95ab7250384301a9e12530d0558361A.jpg_220x220.jpg_Q90.jpg_.webp",
                          "Moobile phone",
                          320),
                      Prodact(
                          "https://ae04.alicdn.com/kf/H572e93f57c474838ba2d7573b22995c2v.jpg_220x220.jpg_Q90.jpg_.webp",
                          " Drone",
                          800),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  Container Prodact(var img, var name, var price) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(width:.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.fill),
            ),
          ),
          Expanded(
              child: ListTile(
            title: Text(name),
            subtitle: Text("${price} \$ "),
          ))
        ],
      ),
    );
  }

  Container Story(var iconD) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 50,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(
              color: Colors.transparent,
            ),
          ),
          onPressed: () {},
          child: Icon(
            iconD,
            color: Colors.white,
          ),
        ));
  }
}
