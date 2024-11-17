import 'package:flutter/material.dart';

class DropdownContainer extends StatefulWidget {
  const DropdownContainer({super.key});

  @override
  State<DropdownContainer> createState() => _DropdownContainerState();
}

class _DropdownContainerState extends State<DropdownContainer> {
  String selectedValue = 'USD';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 157, 122, 240),
            Color.fromARGB(255, 43, 7, 77),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },

//         onChanged: (String? newValue) {
//   setState(() {
//     if (newValue != null) {
//       selectedValue = newValue;  // Only assign if not null
//     }
//   });
// },

        items: <String>['USD', 'PKR'].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ).toList(),
        isExpanded: true,
        underline: Container(),
        dropdownColor: Color.fromARGB(255, 86, 13, 155),
      ),
    );
  }
}
