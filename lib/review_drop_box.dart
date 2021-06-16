import 'package:flutter/material.dart';

class ReviewDropDownWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ChangeBGColorDropdownState();
  }
}

class ChangeBGColorDropdownState extends State<ReviewDropDownWidget> {
  List<DropDownItemModel> _dropDownItemModelList = [
    DropDownItemModel(versionName: "Very Satisfied "),
    DropDownItemModel(versionName: "Satisfied"),
    DropDownItemModel(versionName: "Average"),
    DropDownItemModel(versionName: "Dissatisfied "),
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
