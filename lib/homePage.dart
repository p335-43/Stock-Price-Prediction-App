import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_signin/pages/profile_page.dart';
import 'package:firebase_signin/searchbox.dart';
import 'cardDesign.dart';
import 'dataset.dart';
import 'investment.dart';
import 'lastInvestment.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'NavBar.dart';
import 'new.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:NavBar(),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blue[900],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          Icon(Icons.home, size: 25),
          Icon(Icons.search, size: 25),
          Icon(Icons.person, size: 25),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
          switch (index) { // Use switch statement to navigate to different pages based on the index
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => searchicon()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            default:
              break;
          }
        },
        // currentIndex: _currentIndex,
      ),

// class HomePage extends StatelessWidget {
//
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // drawer:NavBar(),
//       int _currentIndex = 0;
//       appBar: AppBar(
//         elevation: 10,
//         backgroundColor: Color(0xFF020063),
//         // leading:
//         //     IconButton(icon: Icon(Icons.menu), onPressed: () => print("menu")),
//         // actions: [
//         //   IconButton(icon: Icon(Icons.settings), onPressed: () => print("menu"))
//         // ],
//       ),
//
//       bottomNavigationBar: CurvedNavigationBar(
//           backgroundColor: Colors.blue,
//           items: [
//             Icon(Icons.home, size: 25),
//             Icon(Icons.search, size: 25),
//             Icon(Icons.person, size: 25),
//           ],
//           onTap: (index){
//             setState(() {
//               _currentIndex = index; // Update the current index
//             });
//             switch (index) { // Use switch statement to navigate to different pages based on the index
//               case 0:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomePage()),
//                 );
//                 break;
//               case 1:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SearchPage()),
//                 );
//                 break;
//               case 2:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProfilePage()),
//                 );
//                 break;
//               default:
//                 break;
//             }
//           },
//     ),


    //       Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),
      //       ),
      //       );
      //     }
      //   // onTap: (index) {
      //   //   //Handle button tap
      //   // },
      //
      // ),
      body:
      SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 4,
                color: Color(0xFF020063),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -700,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: CardList()
                ),
                Market(),
                Market2(),
                // LastInvestment(),
                // LasttInvestment(),
                Deposits(),
                // InfoPage(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Investment()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[600],
                    ),
                    // width: MediaQuery.of(context).size.width-50,
                    height: 50,
                    width:200,//see more height
                    child: Center(child: Text("See More",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),)),
                  ),
                ),
                SizedBox(height: 15,)
              ],
            ),
          ],
        ),

      ),


    );
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return CardDesign(
    //   card: cards[0],
    // );
    return Container(
      child: CarouselSlider.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int i, int itemIndex) {
          return CardDesign(
            card: cards[itemIndex], title: 'abs',
          );
        },
        options: CarouselOptions(
            initialPage: 0, enableInfiniteScroll: false,enlargeCenterPage: true),
      ),
    );
  }
}

class Deposits extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 30,bottom: 10,left: 35),
      margin: EdgeInsets.only(right: 20, left:10, bottom:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommendations",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),

              // SizedBox(height: 2,),
            ],
          ),
          // Text("Recommendations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),textAlign: TextAlign.start,),
          // Text("Open chart",style: TextStyle(color: Colors.black54),),
          // SizedBox(height: 9,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Container(
                //   width: 40,
                //   height: 40,
                //   margin: EdgeInsets.only(right: 15),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black,width: 0.2),
                //     borderRadius: BorderRadius.all(Radius.circular(10))
                //   ),
                //   // child: Center(child: Text("+",style: TextStyle(fontWeight: FontWeight.bold),)),
                // ),
                DepositItem(name: "Apple",detail: "169.59 -0.09(-0.05%)",icon: Icon(Icons.bar_chart,color: Colors.blue,),),
                DepositItem(name: "AMZN",detail: "102.05 -3.40(-3.22%)",icon: Icon(Icons.bar_chart,color: Colors.greenAccent,),),
                DepositItem(name: "AIM",detail: "831.72 +1.78(+0.21%)",icon: Icon(Icons.bar_chart,color: Colors.orangeAccent,),)

              ],
            ),
          )
        ],
      ),
    );
  }
}

class DepositItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String detail;
  DepositItem({required this.name,required this.icon,required this.detail});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black ,width: 0.2),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text("|",style: TextStyle(fontSize: 20,color: Colors.grey),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(detail,style: TextStyle(color: Colors.black54),),
            ],
          )
        ],
      ),
    );
  }
}


class Market extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Gainers ",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              // Text("Open chart",style: TextStyle(color: Colors.black54),)
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Currency(currency: "ASND",value: "  86.74  +16.78(23.99%)",),
                Currency(currency: "TGTX",value: "30.64  +5.81(23.40%)",),
                Currency(currency: "ISEE",value: "38.05  +5.16(15.69%)",)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Currency extends StatelessWidget {
  final String currency;
  final String value;
  Currency({required this.currency,required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 145,
      height: 90,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Color(0xFF333333).withOpacity(0.14),
              blurRadius: 2,
              offset: Offset(0,2))],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[200]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currency,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(value,style: TextStyle(fontSize: 12,color: Colors.green[500],fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class Market2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Losers",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              // Text("Open chart",style: TextStyle(color: Colors.black54),)
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Currency2(currency2: "VLY",value2: "  7.53  -1.85(19.72%)",),
                Currency2(currency2: "VLYPO",value2: " 16.50  -2.82(-14.60%)",),
                Currency2(currency2: "SOFI",value2: "  5.47  -0.76(-12.20%)",)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Currency2 extends StatelessWidget {
  final String currency2;
  final String value2;
  Currency2({required this.currency2,required this.value2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 145,
      height: 90,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Color(0xFF333333).withOpacity(0.14),
              blurRadius: 2,
              offset: Offset(0,2))],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[200]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currency2,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(value2,style: TextStyle(fontSize: 12,color: Colors.red[500],fontWeight: FontWeight.bold),)
        ],
      ),

    );
  }
}



