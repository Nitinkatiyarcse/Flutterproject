// ignore: file_names
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:loginproject/Bottom_bar/Fab_Page.dart';
import 'package:loginproject/Bottom_bar/bottom_sheet.dart';
import 'package:loginproject/Bottom_bar/chat.dart';
import 'package:loginproject/Bottom_bar/profile_Page.dart';
import 'package:loginproject/Charts/Barchart.dart';
import 'package:loginproject/Emp_Screen/Emp_form.dart';
import 'package:loginproject/Charts/Linechart.dart';
import 'package:loginproject/Charts/Piechart.dart';
import 'package:loginproject/Emp_Screen/List_jsondata.dart';
//import 'package:loginproject/Emp_Screen/List_jsondata.dart';
import 'package:loginproject/Emp_Screen/emp_listview.dart';
import 'package:loginproject/Json_list/home_page.dart';
import 'package:loginproject/Setting_Page/setting_page.dart';
import 'package:loginproject/contact_list.dart';
import 'package:loginproject/main.dart';

import 'Emp_Screen/emplist_details.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    FavoPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dashboard',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => debugPrint("item search"),
          ),
          IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: () => debugPrint("member added"),
          ),
          IconButton(
            icon: const Icon(Icons.add_call),
            onPressed: () => debugPrint("search member for call"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 14,
        unselectedFontSize: 11,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Message',
            backgroundColor: Colors.greenAccent,
          ),
        ],
      ),
      backgroundColor: Colors.green[100],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              accountName: Text(
                "NITIN KATIYAR",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C510BAQHrsrMaM-ABww/company-logo_200_200/0?e=2159024400&v=beta&t=1JPwil_fyOz2gO7dRIUNYtl4ueWs8wblWPdb9xdYnbI",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text(
                "Emp_Form",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EmployeeList()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text(
                "Emp_List",
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EmpListPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.border_bottom_outlined),
              title: const Text(
                "Bottom Sheet",
              ),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BottomSheetPage()));
              },
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text(
                "Contact List",
              ),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ContactListPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text(
                "Policies",
              ),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePageJson()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
              ),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SettingUiPage()));
              },
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text(
                "Exit",
              ),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyApp()));
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            elevation: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Charts_SVG_Example_5_-_Simple_Pie_Chart.svg/1200px-Charts_SVG_Example_5_-_Simple_Pie_Chart.svg.png",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 225, left: 85),
                    height: 26,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MyChartPage()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.greenAccent,
                                      Color.fromARGB(255, 252, 252, 172)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'PieChart',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            elevation: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/006/724/659/non_2x/bar-chart-logo-icon-sign-symbol-design-vector.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 225, left: 85),
                    height: 26,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MyBarchart()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.greenAccent,
                                      Color.fromARGB(255, 248, 248, 160)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'BarChart',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            elevation: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://thumbs.dreamstime.com/b/growing-graph-d-histogram-green-arrow-32612397.jpg",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 225, left: 85),
                    height: 26,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MyBarchart()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.greenAccent,
                                      Color.fromARGB(255, 250, 250, 142)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Histogram',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            elevation: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://images.edrawmax.com/images/knowledge/line-graph-1-what-is.jpg",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 135, left: 65),
                    height: 26,
                    width: 90,
                    child: Stack(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MyHomePage()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.greenAccent,
                                      Color.fromARGB(255, 247, 247, 154)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'LineChart',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MyCard extends StatelessWidget {
//   // ignore: use_key_in_widget_constructors
//   const MyCard({required this.title, required this.icon, required this.warna});

//   final String title;
//   final IconData icon;
//   final MaterialColor warna;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       margin: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {},
//         splashColor: Colors.green,
//         child: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Icon(
//               icon,
//               size: 70.0,
//               color: warna,
//             ),
//             Text(
//               title,
//               style:
//                   const TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
