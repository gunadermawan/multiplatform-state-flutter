import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/provider/done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({super.key, required this.doneModuleList});

  final List<String> doneModuleList;

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(
          itemCount: doneModuleList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(doneModuleList[index]),
            );
          }),
    );
  }
}
