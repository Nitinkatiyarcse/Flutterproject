import 'package:flutter/material.dart';
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
                enableDrag: true,
                backgroundColor: Colors.green[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Nitin'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('Abhay'),
                      ),
                      ListTile(
                        title: Text('Banana'),
                        subtitle: Text('Ankesh'),
                      ),
                      ListTile(
                        title: Text('Lemon'),
                        subtitle: Text('Ram'),
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
