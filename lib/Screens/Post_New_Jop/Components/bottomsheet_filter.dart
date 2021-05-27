import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/manpower_profile.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/Components/bottomsheet_filter_manpower.dart';
import 'package:tanta_task_app/consts.dart';
import 'package:tanta_task_app/enums.dart';

class BottomSheetFilter extends StatefulWidget {
  @override
  _BottomSheetFilterState createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  FilterState statefilter = FilterState.manPower;
  bool isManPower = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                  value: FilterState.manPower,
                  groupValue: statefilter,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isManPower = true;
                      statefilter = value;
                    });
                  },
                ),
                Text(
                  "ManPower",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: FilterState.equipment,
                  groupValue: statefilter,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isManPower = false;
                      statefilter = value;
                    });
                  },
                ),
                Text("Equipment",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
                child:
                    SingleChildScrollView(child: ManpowerFilter(isManPower))),
          ),
        )
      ],
    );
  }
}
