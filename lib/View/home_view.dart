import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> projectNames = [
    "TaskMaster",
    "CodeNest",
    "DataForge",
    "SparkleWorks",
    "NexusHub",
    "ByteBloom",
    "EchoSphere",
    "SwiftCraft",
    "Visionary Ventures",
    "QuantumQuest",
  ];
  List<String> filteredData = [];

  @override
  void initState() {
    filteredData = projectNames;
    super.initState();
  }

  void filter(String query) {
    setState(() {
      filteredData = projectNames.where((data) {
        return data.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.04.sw),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0.025.sh),
            child: TextField(
              onChanged: (val) {
                filter(val.toString().toLowerCase());
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 0.05.sw),
                hintText: 'Search a project',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.01.sh),
                    borderSide: const BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.01.sh),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: List.generate(filteredData.length, (index) {
                  return card(filteredData[index]);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
