import 'package:flutter/material.dart';
import 'package:loginproject/Emp_Screen/emplist_details.dart';

class EmpListPage extends StatefulWidget {
  @override
  State<EmpListPage> createState() => _EmpListPageState();
}

class _EmpListPageState extends State<EmpListPage> {
  final itemKey = GlobalKey();

  Future scrollToItem() async {
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('Employee List'),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text('Employee $index'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.person),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListDetailsPage(index)));
              },
            ),
          ),
        );
      },
    );
  }
}
