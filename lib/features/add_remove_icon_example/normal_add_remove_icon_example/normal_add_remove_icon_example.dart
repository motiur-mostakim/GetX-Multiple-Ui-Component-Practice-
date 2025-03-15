import 'package:flutter/material.dart';

class NormalAddRemoveIconExample extends StatefulWidget {
  const NormalAddRemoveIconExample({super.key});

  @override
  State<NormalAddRemoveIconExample> createState() =>
      _NormalAddRemoveIconExampleState();
}

class _NormalAddRemoveIconExampleState
    extends State<NormalAddRemoveIconExample> {
  final List<String> names = [
    "MR Mostakim",
    "Motiur Rahman Mostakim",
    "Motiur Rahman",
    "Motiur Mostakim",
    "MRM",
    "MD MR Mostakim",
    "MD Motiur Rahman Mostakim"
  ];

  final List<String> selectIcon = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Remve Icon "),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: ListTile(
                onTap: () {
                  if (selectIcon.contains(
                    names[index].toString(),
                  )) {
                    selectIcon.remove(names[index].toString());
                  } else {
                    selectIcon.add(names[index].toString());
                  }

                  setState(() {});
                },
                title: Text(names[index].toString()),
                trailing: Icon(
                  selectIcon.contains(
                    names[index].toString(),
                  )
                      ? Icons.favorite_outlined
                      : Icons.favorite_outline,
                  color: selectIcon.contains(
                    names[index].toString(),
                  )
                      ? Colors.red
                      : Colors.green,
                ),
              ),
            );
          }),
    );
  }
}
