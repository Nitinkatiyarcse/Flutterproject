import 'package:flutter/material.dart';
import 'package:loginproject/Json_list/home_page.dart';
import 'package:loginproject/Setting_Page/setting_page.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';
//import '../widget/maps_widget.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Sheet'),
          onPressed: () {
            showModalBottomSheet(
                elevation: 0,
                isDismissible: false,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('About',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 2, 9, 105),
                                  fontSize: 21)),
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SettingUiPage()));
                        },
                        subtitle: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Select an item',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'About The Trust',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => HomePageJson()));
                        },
                      ),
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Board of Directors',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            'Welcome Message from\n the Chairman',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
