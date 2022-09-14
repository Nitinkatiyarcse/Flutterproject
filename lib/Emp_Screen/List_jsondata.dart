// // ignore_for_file: unused_local_variable,

// import 'package:flutter/material.dart';
// import 'dart:async';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class JsonListPage extends StatefulWidget {
//   //const JsonListPage({Key? key, required this.title}) : super(key: key);
//   //final String title;

//   @override
//   State<JsonListPage> createState() => _JsonListPageState();
// }

// class _JsonListPageState extends State<JsonListPage> {
//   Future<List<User>?> _getUsers() async {
//     var data = await http
//         .get("http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2");

//     var jsonData = json.decode(data.body);

//     List<User> users = [];

//     for (var u in jsonData) {
//       User user =
//           User(u["index"], u["about"], u["name"], u["email"], u["picture"]);

//       users.add(user);
//     }
//     print(users.length);
//     return users;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.greenAccent,
//         centerTitle: true,
//         title: Text('Json List'),
//       ),
//       body: Container(
//         child: FutureBuilder(
//           future: _getUsers(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.data == null) {
//               return Container(
//                 child: Center(child: Text("Loading..")),
//               );
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage:
//                           NetworkImage(snapshot.data[index].picture),
//                     ),
//                     title: Text(snapshot.data[index].name),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class User {
//   final int index;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;

//   User(
//     this.index,
//     this.about,
//     this.name,
//     this.email,
//     this.picture,
//   );
// }
