// ignore_for_file: unused_local_variable

//import 'package:flutter/cupertino.dart';
//import 'dart:ffi';
//import 'package:ffi/ffi.dart';

import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<String> _searchable = [
    'CodeLikeIce',
    'FlutterZone',
    'TraverseMedia',
    'Nitin',
    'Abhay',
    'Ram',
    'Praveen',
    'Sobhit',
    'Prashant',
    'Shayam',
    'Vanya',
    'Priya',
    'Komal',
    'Veer',
    'Vikas',
    'Katiyar',
    'Shivam',
    'Suresh',
  ];

  var items = <String>[];

  @override
  void initState() {
    super.initState();
    items.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.verified_user,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
        title: Text(
          'Contact List',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600),
        ),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                  prefix: Icon(Icons.search),
                  labelText: 'Search'),
              onChanged: (value) {
                filterContact(value.toLowerCase());
              },
            ),
          ),
          new Expanded(
            child: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: new Container(
                    margin: EdgeInsets.all(9.0),
                    padding: EdgeInsets.all(6.0),
                    child: new Row(
                      children: <Widget>[
                        new CircleAvatar(
                          child: new Text('${items[index][0]}'),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        new Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        new Text(
                          '${items[index]}',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(Icons.people),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }

  void filterContact(String searchTerm) {
    List<String> tmpSearchList = <String>[];

    tmpSearchList.addAll(_searchable);
    if (searchTerm.isEmpty) {
      List<String> tmpList = <String>[];
      tmpSearchList.forEach((element) {
        if (element.toLowerCase().contains(searchTerm)) {
          tmpList.add(element);
        }
      });

      setState(() {
        items.clear();
        items.addAll(tmpList);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(_searchable);
      });
    }
  }
}
