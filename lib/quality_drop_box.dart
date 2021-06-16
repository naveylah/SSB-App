import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  @override
  ChangeBGColorDropdownState createState() {
    return new ChangeBGColorDropdownState();
  }
}

class ChangeBGColorDropdownState extends State<CustomDropDownWidget> {
  List<DropDownItemModel> _dropDownItemModelList = [
    DropDownItemModel(versionName: "Caring "),
    DropDownItemModel(versionName: "Honesty"),
    DropDownItemModel(versionName: "Transparency"),
    DropDownItemModel(versionName: "Openness "),
    DropDownItemModel(versionName: "Fairness"),
    DropDownItemModel(versionName: "Authenticity"),
    DropDownItemModel(versionName: "Skills"),
    DropDownItemModel(versionName: "Knowledge "),
    DropDownItemModel(versionName: "Experience"),
    DropDownItemModel(versionName: "Reputation"),
    DropDownItemModel(versionName: "Credibility "),
    DropDownItemModel(versionName: "Performance"),
  ];

  DropDownItemModel _dropDownItemModel;

  @override
  void initState() {
    super.initState();
    _dropDownItemModel = _dropDownItemModelList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          color: Colors.orange,
          child: DropdownButton<DropDownItemModel>(
            underline: Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.transparent))),
            ),
            iconEnabledColor: Colors.white,
            items: _dropDownItemModelList
                .map((dropDownItemModel) => DropdownMenuItem<DropDownItemModel>(
                      child: Text(dropDownItemModel.versionName),
                      value: dropDownItemModel,
                    ))
                .toList(),
            onChanged: (DropDownItemModel dropDownItemModel) {
              setState(() => _dropDownItemModel = dropDownItemModel);
            },
            hint: Text(
              _dropDownItemModel.versionName,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class DropDownItemModel {
  String versionName;

  DropDownItemModel({this.versionName});
}
