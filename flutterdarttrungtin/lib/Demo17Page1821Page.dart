import 'package:flutter/material.dart';

class Demo171821PageIT extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo171821PageITState();
  }
}

class Demo171821PageITState extends State<Demo171821PageIT> {
  bool isChecked = false;
  int selectedRadioValue = 1;
  String selectedDropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selection Widgets Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CheckboxListTile
              CheckboxListTile(
                title: Text('Checkbox 1'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Lưu giá trị checkbox ở đây
                  print('Checkbox value: $isChecked');
                },
                child: Text('Save Checkbox'),
              ),
              SizedBox(height: 20),
              // RadioListTile
              RadioListTile(
                title: Text('Radio 1'),
                value: 1,
                groupValue: selectedRadioValue,
                onChanged: (value) {
                  setState(() {
                    selectedRadioValue = value as int;
                  });
                },
              ),
              RadioListTile(
                title: Text('Radio 2'),
                value: 2,
                groupValue: selectedRadioValue,
                onChanged: (value) {
                  setState(() {
                    selectedRadioValue = value as int;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Lưu giá trị radio ở đây
                  print('Selected radio value: $selectedRadioValue');
                },
                child: Text('Save Radio'),
              ),
              SizedBox(height: 20),
              // DropdownMenuItem
              DropdownButton<String>(
                value: selectedDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDropdownValue = newValue!;
                  });
                },
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Lưu giá trị dropdown ở đây
                  print('Selected dropdown value: $selectedDropdownValue');
                },
                child: Text('Save Dropdown'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
