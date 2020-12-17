import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Message',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(16, 87, 205, 1),
        centerTitle: false,
        title: Text("Sports Car"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.search, size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.login, size: 30,),
          SizedBox(width: 5,),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
        ),
        child: Stack(
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work),
                  label: 'Work',
                ),
                BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Message',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromRGBO(16, 87, 205, 1),
              onTap: _onItemTapped,
            ),
            Positioned(
              left: 190,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                    ),
                  ],
                    color: Color.fromRGBO(16, 87, 205, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              carCard(
                carName: "Audi TT",
                carDesc: "HYBRID",
                price: "\$89/hour",
                img: "https://stimg.cardekho.com/images/carexteriorimages/360x240/Audi/Audi-TT/1559294750431/047.jpg",
              ),
              SizedBox(height: 15,),
              carCard(
                carName: "Camaro",
                carDesc: "ECOBOOST",
                price: "\$172/hour",
                img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEOxvauTJodDQkG8uNgaAgTg0gT3E3RmG_mQ&usqp=CAU",
              ),
              SizedBox(height: 15,),
              carCard(
                carName: "Audi R8",
                carDesc: "DIESEL",
                price: "\$95/hour",
                img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQjH0VMdU0mx_I93KZvrbz8623Od2opCqQDg&usqp=CAU",
              ),
              SizedBox(height: 15,),
              carCard(
                carName: "Tigor XZ+",
                carDesc: "PETROL",
                price: "\$25/hour",
                img: "https://cars.tatamotors.com/images/menu/tigor.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class carCard extends StatelessWidget {
  String carName;
  String price;
  String carDesc;
  carCard({this.carName, this.price, this.carDesc, this.img});
  String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 10, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      carDesc,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          letterSpacing: 1
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.verified_rounded, color: Color.fromRGBO(16, 87, 205, 1),),
                    SizedBox(width: 6,),
                    Text(
                      "Safe Vehicle",
                      style: TextStyle(
                          color: Color.fromRGBO(16, 87, 205, 1),
                          fontSize: 17,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Expanded(
              child: Image(
                image: NetworkImage(
                  img
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
