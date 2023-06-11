// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DateTime Pickers',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   DateTime? selectedDate1;
//   DateTime? selectedDate2;
//   DateTime? selectedDate3;
//
//   Future<void> _selectDate(BuildContext context, int buttonIndex) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );
//
//     if (picked != null) {
//       setState(() {
//         switch (buttonIndex) {
//           case 1:
//             selectedDate1 = picked;
//             break;
//           case 2:
//             selectedDate2 = picked;
//             break;
//           case 3:
//             selectedDate3 = picked;
//             break;
//         }
//       });
//     }
//   }
//
//   String formatDate(DateTime date) {
//     final formatter = DateFormat('MMM dd, yyyy');
//     return formatter.format(date);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DateTime Pickers'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//            MaterialButton(
//               onPressed: () => _selectDate(context, 1),
//               child: Text(selectedDate1 != null
//                   ? formatDate(selectedDate1!)
//                   : 'Select Date 1'),
//             ),
//             MaterialButton(
//               onPressed: () => _selectDate(context, 2),
//               child: Text(selectedDate2 != null
//                   ? formatDate(selectedDate2!)
//                   : 'Select Date 2'),
//             ),
//             MaterialButton(
//               onPressed: () => _selectDate(context, 3),
//               child: Text(selectedDate3 != null
//                   ? formatDate(selectedDate3!)
//                   : 'Select Date 3'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DateTime Picker Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<dynamic> dataList = [];
//   DateTime? selectedDateTime;
//
//   Future<void> _selectDateTime(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2025),
//     );
//
//     if (pickedDate != null) {
//       final TimeOfDay? pickedTime = await showTimePicker(
//         context: context,
//         initialTime: TimeOfDay.now(),
//       );
//
//       if (pickedTime != null) {
//         setState(() {
//           selectedDateTime = DateTime(
//             pickedDate.year,
//             pickedDate.month,
//             pickedDate.day,
//             pickedTime.hour,
//             pickedTime.minute,
//           );
//         });
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DateTime Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             MaterialButton(
//               onPressed: () => _selectDateTime(context),
//               child: Text('Select DateTime'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Selected DateTime: ${selectedDateTime ?? "None"}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             MaterialButton(
//               onPressed: () {
//                 if (selectedDateTime != null) {
//                   dataList.add(selectedDateTime);
//                 }
//               },
//               child: Text('Add DateTime to List'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Data List: $dataList',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class DataModel {
//   final String eventName;
//   final String wish;
//   final DateTime dateTime;
//
//   DataModel({
//     required this.eventName,
//     required this.wish,
//     required this.dateTime,
//   });
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DateTime Picker Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<DataModel> dataList = [];
//   DateTime? selectedDateTime;
//   TextEditingController eventNameController = TextEditingController();
//   TextEditingController wishController = TextEditingController();
//
//   Future<void> _selectDateTime(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2025),
//     );
//
//     if (pickedDate != null) {
//       final TimeOfDay? pickedTime = await showTimePicker(
//         context: context,
//         initialTime: TimeOfDay.now(),
//       );
//
//       if (pickedTime != null) {
//         setState(() {
//           selectedDateTime = DateTime(
//             pickedDate.year,
//             pickedDate.month,
//             pickedDate.day,
//             pickedTime.hour,
//             pickedTime.minute,
//           );
//         });
//       }
//     }
//   }
//
//   void _addToDataList() {
//     if (selectedDateTime != null) {
//       final newData = DataModel(
//         eventName: eventNameController.text,
//         wish: wishController.text,
//         dateTime: selectedDateTime!,
//       );
//       setState(() {
//         dataList.add(newData);
//         eventNameController.clear();
//         wishController.clear();
//         selectedDateTime = null;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DateTime Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             InkWell(
//               onDoubleTap: () => _selectDateTime(context),
//               child: Text('Select DateTime'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Selected DateTime: ${selectedDateTime ?? "None"}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: TextField(
//                 controller: eventNameController,
//                 decoration: InputDecoration(
//                   labelText: 'Event Name',
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: TextField(
//                 controller: wishController,
//                 decoration: InputDecoration(
//                   labelText: 'Wish',
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             MaterialButton(
//               onPressed: _addToDataList,
//               child: Text('Add to List'),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dataList.length,
//                 itemBuilder: (context, index) {
//                   final data = dataList[index];
//                   return ListTile(
//                     title: Text(data.eventName),
//                     subtitle: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(data.wish),
//                         Text('Date & Time: ${data.dateTime}'),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//


// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//
// class Item {
//   final int id;
//   final String name;
//   final List<String> subItems;
//   String? selectedSubItem;
//   DateTime? selectedDateTime;
//
//   Item({
//     required this.id,
//     required this.name,
//     required this.subItems,
//     this.selectedSubItem,
//     this.selectedDateTime,
//   });
// }
//
// List<Item> yourDataList = [
//   Item(
//     id: 1,
//     name: 'Item 1',
//     subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
//   ),
//   Item(
//     id: 2,
//     name: 'Item 2',
//     subItems: ['Subitem 4', 'Subitem 5'],
//   ),
//   Item(
//     id: 3,
//     name: 'Item 3',
//     subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
//   ),
// ];
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _toggleSubItemSelection(Item item, String subItem) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         if (item.selectedSubItem == subItem) {
//           item.selectedSubItem = null;
//           item.selectedDateTime = null;
//         } else {
//           item.selectedSubItem = subItem;
//         }
//       }
//     });
//   }
//
//   void _selectDateTime(Item item) {
//     DatePicker.showDateTimePicker(
//       context,
//       showTitleActions: true,
//       onChanged: (date) {},
//       onConfirm: (date) {
//         setState(() {
//           item.selectedDateTime = date;
//         });
//       },
//     );
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 onTap: () => _toggleItemSelection(item),
//                 trailing: Icon(
//                   isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//                 ),
//               ),
//               if (isSelected)
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: item.subItems.length,
//                   itemBuilder: (context, subIndex) {
//                     final subItem = item.subItems[subIndex];
//                     final isSubItemSelected = item.selectedSubItem == subItem;
//                     return ListTile(
//                       title: Text(subItem),
//                       leading: Radio(
//                         value: subItem,
//                         groupValue: item.selectedSubItem,
//                         onChanged: (_) => _toggleSubItemSelection(item, subItem),
//                       ),
//                       trailing: IconButton(
//                         icon: Icon(Icons.calendar_today),
//                         onPressed: () => _selectDateTime(item),
//                       ),
//                     );
//                   },
//                 ),
//             ],
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
//
// class NextPage extends StatelessWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: ListView.builder(
//         itemCount: selectedItems.length,
//         itemBuilder: (context, index) {
//           final item = selectedItems[index];
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(item.selectedSubItem ?? 'No subitem selected'),
//                     if (item.selectedDateTime != null)
//                       Text('Selected Date & Time: ${item.selectedDateTime.toString()}'),
//                   ],
//                 ),
//               ),
//               Divider(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//
// class Item {
//   final int id;
//   final String name;
//   final List<String> subItems;
//   String? selectedSubItem;
//   DateTime? selectedDateTime;
//
//   Item({
//     required this.id,
//     required this.name,
//     required this.subItems,
//     this.selectedSubItem,
//     this.selectedDateTime,
//   });
// }
//
// List<Item> yourDataList = [
//   Item(
//     id: 1,
//     name: 'Item 1',
//     subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
//   ),
//   Item(
//     id: 2,
//     name: 'Item 2',
//     subItems: ['Subitem 4', 'Subitem 5'],
//   ),
//   Item(
//     id: 3,
//     name: 'Item 3',
//     subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
//   ),
// ];
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _toggleSubItemSelection(Item item, String subItem) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         if (item.selectedSubItem == subItem) {
//           item.selectedSubItem = null;
//           item.selectedDateTime = null;
//         } else {
//           item.selectedSubItem = subItem;
//         }
//       }
//     });
//   }
//
//   void _selectDateTime(Item item) {
//     DatePicker.showDateTimePicker(
//       context,
//       showTitleActions: true,
//       currentTime: item.selectedDateTime,
//       onChanged: (date) {},
//       onConfirm: (date) {
//         setState(() {
//           item.selectedDateTime = date;
//         });
//       },
//     );
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 onTap: () => _toggleItemSelection(item),
//                 trailing: Icon(
//                   isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//                 ),
//               ),
//               if (isSelected)
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: item.subItems.length,
//                   itemBuilder: (context, subIndex) {
//                     final subItem = item.subItems[subIndex];
//                     final isSubItemSelected = item.selectedSubItem == subItem;
//                     return ListTile(
//                       title: Text(subItem),
//                       leading: Radio(
//                         value: subItem,
//                         groupValue: item.selectedSubItem,
//                         onChanged: (_) => _toggleSubItemSelection(item, subItem),
//                       ),
//                       trailing: IconButton(
//                         icon: Icon(Icons.calendar_today),
//                         onPressed: () => _selectDateTime(item),
//                       ),
//                     );
//                   },
//                 ),
//             ],
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
//
// class NextPage extends StatefulWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   _NextPageState createState() => _NextPageState();
// }
//
// class _NextPageState extends State<NextPage> {
//   void _editDateTime(Item item) {
//     DatePicker.showDateTimePicker(
//       context,
//       showTitleActions: true,
//       currentTime: item.selectedDateTime,
//       onChanged: (date) {},
//       onConfirm: (date) {
//         setState(() {
//           item.selectedDateTime = date;
//         });
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: ListView.builder(
//         itemCount: widget.selectedItems.length,
//         itemBuilder: (context, index) {
//           final item = widget.selectedItems[index];
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(item.selectedSubItem ?? 'No subitem selected'),
//                     if (item.selectedDateTime != null)
//                       Row(
//                         children: [
//                           Text('Selected Date & Time: ${item.selectedDateTime.toString()}'),
//                           IconButton(
//                             icon: Icon(Icons.edit),
//                             onPressed: () => _editDateTime(item),
//                           ),
//                         ],
//                       ),
//                   ],
//                 ),
//               ),
//               Divider(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//
// class Item {
//   final int id;
//   final String name;
//   final List<String> subItems;
//   String? selectedSubItem;
//   DateTime? selectedDateTime;
//
//   Item({
//     required this.id,
//     required this.name,
//     required this.subItems,
//     this.selectedSubItem,
//     this.selectedDateTime,
//   });
// }
//
// List<Item> yourDataList = [
//   Item(
//     id: 1,
//     name: 'Item 1',
//     subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
//   ),
//   Item(
//     id: 2,
//     name: 'Item 2',
//     subItems: ['Subitem 4', 'Subitem 5'],
//   ),
//   Item(
//     id: 3,
//     name: 'Item 3',
//     subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
//   ),
// ];
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _toggleSubItemSelection(Item item, String subItem) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         if (item.selectedSubItem == subItem) {
//           item.selectedSubItem = null;
//           item.selectedDateTime = null;
//         } else {
//           item.selectedSubItem = subItem;
//         }
//       }
//     });
//   }
//
//   void _selectDateTime(Item item) {
//     DatePicker.showDateTimePicker(
//       context,
//       showTitleActions: true,
//       currentTime: item.selectedDateTime,
//       onChanged: (date) {},
//       onConfirm: (date) {
//         setState(() {
//           item.selectedDateTime = date;
//         });
//       },
//     );
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 onTap: () => _toggleItemSelection(item),
//                 trailing: Icon(
//                   isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//                 ),
//               ),
//               if (isSelected)
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: item.subItems.length,
//                   itemBuilder: (context, subIndex) {
//                     final subItem = item.subItems[subIndex];
//                     final isSubItemSelected = item.selectedSubItem == subItem;
//                     return ListTile(
//                       title: Text(subItem),
//                       leading: Radio(
//                         value: subItem,
//                         groupValue: item.selectedSubItem,
//                         onChanged: (_) => _toggleSubItemSelection(item, subItem),
//                       ),
//                       trailing: IconButton(
//                         icon: Icon(Icons.calendar_today),
//                         onPressed: () => _selectDateTime(item),
//                       ),
//                     );
//                   },
//                 ),
//             ],
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
//
// class NextPage extends StatelessWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             for (final item in selectedItems)
//               ListTile(
//                 title: Text(item.name),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     if (item.selectedSubItem != null)
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: Text(
//                           'Selected Subitem: ${item.selectedSubItem}',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     if (item.selectedDateTime != null)
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: Text(
//                           'Selected Date & Time: ${item.selectedDateTime.toString()}',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     Text('Additional item data goes here'),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }


/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: ListView.builder(
        itemCount: yourDataList.length,
        itemBuilder: (context, index) {
          final item = yourDataList[index];
          final isSelected = _selectedItems.contains(item);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(item.name),
                onTap: () => _toggleItemSelection(item),
                trailing: Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                ),
              ),
              if (isSelected)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.subItems.length,
                  itemBuilder: (context, subIndex) {
                    final subItem = item.subItems[subIndex];
                    final isSubItemSelected = item.selectedSubItem == subItem;
                    return ListTile(
                      title: Text(subItem),
                      leading: Radio(
                        value: subItem,
                        groupValue: item.selectedSubItem,
                        onChanged: (_) => _toggleSubItemSelection(item, subItem),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDateTime(item),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final List<Item> selectedItems;

  NextPage({required this.selectedItems});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController _dateTimeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _updateDateTimeController();
  }

  void _updateDateTimeController() {
    if (widget.selectedItems.length == 1) {
      final selectedDateTime = widget.selectedItems[0].selectedDateTime;
      _dateTimeController.text = selectedDateTime != null ? selectedDateTime.toString() : '';
    } else {
      _dateTimeController.text = '';
    }
  }

  void _editDateTime() {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: _parseDateTime(_dateTimeController.text),
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          _dateTimeController.text = date.toString();
        });
      },
    );
  }

  DateTime? _parseDateTime(String value) {
    try {
      return DateTime.parse(value);
    } catch (error) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _dateTimeController,
                decoration: InputDecoration(
                  labelText: 'Selected Date & Time',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: _editDateTime,
                  ),
                ),
                readOnly: true,
              ),
            ),
            for (final item in widget.selectedItems)
              ListTile(
                title: Text(item.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.selectedSubItem != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Selected Subitem: ${item.selectedSubItem}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: ListView.builder(
        itemCount: yourDataList.length,
        itemBuilder: (context, index) {
          final item = yourDataList[index];
          final isSelected = _selectedItems.contains(item);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(item.name),
                onTap: () => _toggleItemSelection(item),
                trailing: Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                ),
              ),
              if (isSelected)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.subItems.length,
                  itemBuilder: (context, subIndex) {
                    final subItem = item.subItems[subIndex];
                    final isSubItemSelected = item.selectedSubItem == subItem;
                    return ListTile(
                      title: Text(subItem),
                      leading: Radio(
                        value: subItem,
                        groupValue: item.selectedSubItem,
                        onChanged: (_) => _toggleSubItemSelection(item, subItem),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDateTime(item),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final List<Item> selectedItems;

  NextPage({required this.selectedItems});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController _dateTimeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _updateDateTimeController();
  }

  void _updateDateTimeController() {
    if (widget.selectedItems.length == 1) {
      final selectedDateTime = widget.selectedItems[0].selectedDateTime;
      _dateTimeController.text = selectedDateTime != null ? selectedDateTime.toString() : '';
    } else {
      _dateTimeController.text = '';
    }
  }

  void _editDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
          _updateDateTimeController();
        });
      },
    );
  }

  DateTime? _parseDateTime(String value) {
    try {
      return DateTime.parse(value);
    } catch (error) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _dateTimeController,
                decoration: InputDecoration(
                  labelText: 'Selected Date & Time',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _editDateTime(widget.selectedItems[0]),
                  ),
                ),
                readOnly: true,
              ),
            ),
            for (final item in widget.selectedItems)
              ListTile(
                title: Text(item.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.selectedSubItem != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Selected Subitem: ${item.selectedSubItem}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: ListView.builder(
        itemCount: yourDataList.length,
        itemBuilder: (context, index) {
          final item = yourDataList[index];
          final isSelected = _selectedItems.contains(item);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(item.name),
                onTap: () => _toggleItemSelection(item),
                trailing: Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                ),
              ),
              if (isSelected)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.subItems.length,
                  itemBuilder: (context, subIndex) {
                    final subItem = item.subItems[subIndex];
                    final isSubItemSelected = item.selectedSubItem == subItem;
                    return ListTile(
                      title: Text(subItem),
                      leading: Radio(
                        value: subItem,
                        groupValue: item.selectedSubItem,
                        onChanged: (_) => _toggleSubItemSelection(item, subItem),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDateTime(item),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final List<Item> selectedItems;

  NextPage({required this.selectedItems});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List<DateTime?> selectedDates = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.selectedItems.length; i++) {
      selectedDates.add(widget.selectedItems[i].selectedDateTime);
    }
  }

  void _editDateTime(int index) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: selectedDates[index],
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          selectedDates[index] = date;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < widget.selectedItems.length; i++)
              ListTile(
                title: Text(widget.selectedItems[i].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.selectedItems[i].selectedSubItem != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Selected Subitem: ${widget.selectedItems[i].selectedSubItem}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Selected Date & Time: ${selectedDates[i]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      child: Text('Edit Date & Time'),
                      onPressed: () => _editDateTime(i),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToAddPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: Column(
        children: [
          ItemList(
            items: yourDataList,
            selectedItems: _selectedItems,
            onItemTap: (item) => _toggleItemSelection(item),
          ),
          if (_selectedItems.isNotEmpty)
            Expanded(
              child: ItemData(
                selectedItem: _selectedItems[0],
                onSubItemTap: (subItem) =>
                    _toggleSubItemSelection(_selectedItems[0], subItem),
                onDateTap: () => _selectDateTime(_selectedItems[0]),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddPage,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Item> items;
  final List<Item> selectedItems;
  final Function(Item) onItemTap;

  ItemList({
    required this.items,
    required this.selectedItems,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (item) => InkWell(
            onTap: () => onItemTap(item),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedItems.contains(item)
                      ? Colors.blue
                      : Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                item.name,
                style: TextStyle(
                  fontWeight: selectedItems.contains(item)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  final Item selectedItem;
  final Function(String) onSubItemTap;
  final Function() onDateTap;

  ItemData({
    required this.selectedItem,
    required this.onSubItemTap,
    required this.onDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Item: ${selectedItem.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              if (selectedItem.selectedSubItem != null)
                Text(
                  'Selected Subitem: ${selectedItem.selectedSubItem}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              SizedBox(height: 10),
              if (selectedItem.selectedDateTime != null)
                Text(
                  'Selected Date & Time: ${selectedItem.selectedDateTime}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              SizedBox(height: 20),
              InkWell(
                onTap: onDateTap,
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                    Text(
                      'Select Date & Time',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        MaterialButton(
          child: Text('Add'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(
                  selectedItems: [selectedItem],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class AddPage extends StatelessWidget {
  final List<Item> selectedItems;

  AddPage({required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Added Items:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            for (var item in selectedItems)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item: ${item.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (item.selectedSubItem != null)
                      Text(
                        'Subitem: ${item.selectedSubItem}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    if (item.selectedDateTime != null)
                      Text(
                        'Date & Time: ${item.selectedDateTime}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];
  Item? _selectedItem;

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
        _selectedItem = null;
      } else {
        _selectedItems = [item];
        _selectedItem = item;
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToAddPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: Column(
        children: [
          ItemList(
            items: yourDataList,
            selectedItems: _selectedItems,
            onItemTap: (item) => _toggleItemSelection(item),
          ),
          if (_selectedItem != null)
            Expanded(
              child: ItemData(
                selectedItem: _selectedItem!,
                onSubItemTap: (subItem) =>
                    _toggleSubItemSelection(_selectedItem!, subItem),
                onDateTap: () => _selectDateTime(_selectedItem!),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddPage,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Item> items;
  final List<Item> selectedItems;
  final Function(Item) onItemTap;

  ItemList({
    required this.items,
    required this.selectedItems,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (item) => InkWell(
            onTap: () => onItemTap(item),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedItems.contains(item)
                      ? Colors.blue
                      : Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                item.name,
                style: TextStyle(
                  fontWeight: selectedItems.contains(item)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  final Item selectedItem;
  final Function(String) onSubItemTap;
  final Function() onDateTap;

  ItemData({
    required this.selectedItem,
    required this.onSubItemTap,
    required this.onDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Item: ${selectedItem.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              if (selectedItem.selectedSubItem != null)
                Text(
                  'Selected Subitem: ${selectedItem.selectedSubItem}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              SizedBox(height: 10),
              if (selectedItem.selectedDateTime != null)
                Text(
                  'Selected Date & Time: ${selectedItem.selectedDateTime}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              SizedBox(height: 20),
              InkWell(
                onTap: onDateTap,
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                    Text(
                      'Select Date & Time',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        MaterialButton(
          child: Text('Add'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(
                  selectedItems: [selectedItem],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class AddPage extends StatelessWidget {
  final List<Item> selectedItems;

  AddPage({required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Added Items:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            for (var item in selectedItems)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item: ${item.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (item.selectedSubItem != null)
                      Text(
                        'Subitem: ${item.selectedSubItem}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    if (item.selectedDateTime != null)
                      Text(
                        'Date & Time: ${item.selectedDateTime}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

List<Item> yourDataList = [
  Item(
    id: 1,
    name: 'Item 1',
    subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
  ),
  Item(
    id: 2,
    name: 'Item 2',
    subItems: ['Subitem 4', 'Subitem 5'],
  ),
  Item(
    id: 3,
    name: 'Item 3',
    subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
  ),
];

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _selectedItems = [];
  Item? _selectedItem;

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
        _selectedItem = null;
      } else {
        _selectedItems = [item];
        _selectedItem = item;
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
          item.selectedDateTime = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToAddPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddPage(selectedItem: _selectedItem!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: Column(
        children: [
          ItemList(
            items: yourDataList,
            selectedItems: _selectedItems,
            onItemTap: (item) => _toggleItemSelection(item),
          ),
          if (_selectedItem != null)
            Expanded(
              child: ItemData(
                selectedItem: _selectedItem!,
                onSubItemTap: (subItem) =>
                    _toggleSubItemSelection(_selectedItem!, subItem),
                onDateTap: () => _selectDateTime(_selectedItem!),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddPage,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Item> items;
  final List<Item> selectedItems;
  final Function(Item) onItemTap;

  ItemList({
    required this.items,
    required this.selectedItems,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (item) => InkWell(
            onTap: () => onItemTap(item),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedItems.contains(item)
                      ? Colors.blue
                      : Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                item.name,
                style: TextStyle(
                  fontWeight: selectedItems.contains(item)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  final Item selectedItem;
  final Function(String) onSubItemTap;
  final Function() onDateTap;

  ItemData({
    required this.selectedItem,
    required this.onSubItemTap,
    required this.onDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selected Item: ${selectedItem.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                if (selectedItem.selectedSubItem != null)
                  Text(
                    'Selected Subitem: ${selectedItem.selectedSubItem}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                SizedBox(height: 10),
                if (selectedItem.selectedDateTime != null)
                  Text(
                    'Selected Date & Time: ${selectedItem.selectedDateTime}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                SizedBox(height: 20),
                InkWell(
                  onTap: onDateTap,
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10),
                      Text(
                        'Select Date & Time',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            child: Text('Add'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPage(selectedItem: selectedItem),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AddPage extends StatelessWidget {
  final Item selectedItem;

  AddPage({required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Added Item:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item: ${selectedItem.name}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  if (selectedItem.selectedSubItem != null)
                    Text(
                      'Subitem: ${selectedItem.selectedSubItem}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  if (selectedItem.selectedDateTime != null)
                    Text(
                      'Date & Time: ${selectedItem.selectedDateTime}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Item {
  final String name;
  final List<String> subItems;
  String? selectedSubItem;
  DateTime? selectedDateTime;

  Item({
    required this.name,
    required this.subItems,
    this.selectedSubItem,
    this.selectedDateTime,
  });
}

class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> _items = [
    Item(
      name: 'Item 1',
      subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
    ),
    Item(
      name: 'Item 2',
      subItems: ['Subitem 4', 'Subitem 5', 'Subitem 6'],
    ),
    Item(
      name: 'Item 3',
      subItems: ['Subitem 7', 'Subitem 8', 'Subitem 9'],
    ),
  ];

  List<Item> _selectedItems = [];

  void _toggleSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _selectSubItem(Item item, String subItem) {
    setState(() {
      item.selectedSubItem = subItem;
    });
  }

  void _selectDateTime(Item item) {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      currentTime: item.selectedDateTime,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          item.selectedDateTime = date;
        });
      },
    );
  }

  void _navigateToAddPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                Item item = _items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: ListView.builder(
                    shrinkWrap: true,
                    itemCount: item.subItems.length,
                    itemBuilder: (context, subIndex) {
                      String subItem = item.subItems[subIndex];
                      return CheckboxListTile(
                        title: Text(subItem),
                        value: item.selectedSubItem == subItem,
                        onChanged: (value) {
                          _selectSubItem(item, subItem);
                        },
                      );
                    },
                  ),
                  trailing: Checkbox(
                    value: _selectedItems.contains(item),
                    onChanged: (value) {
                      _toggleSelection(item);
                    },
                  ),
                );
              },
            ),
          ),
          MaterialButton(
            child: Text('Next'),
            onPressed: _selectedItems.isEmpty ? null : _navigateToAddPage,
          ),
        ],
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  final Item selectedItem;
  final Function(Item, String) onSubItemTap;
  final Function(Item) onDateTap;

  ItemData({
    required this.selectedItem,
    required this.onSubItemTap,
    required this.onDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selected Item: ${selectedItem.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                if (selectedItem.selectedSubItem != null)
                  Text(
                    'Selected Subitem: ${selectedItem.selectedSubItem}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                SizedBox(height: 10),
                if (selectedItem.selectedDateTime != null)
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () => onDateTap(selectedItem),
                        child: Text(
                          'Selected Date & Time: ${selectedItem.selectedDateTime}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () => onDateTap(selectedItem),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10),
                      Text(
                        'Select Date & Time',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            child: Text('Add'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPage(selectedItems: [selectedItem]),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AddPage extends StatefulWidget {
  final List<Item> selectedItems;

  AddPage({required this.selectedItems});

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  List<Item> _addedItems = [];

  void _addItem(Item item) {
    setState(() {
      _addedItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Added Items:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            for (var item in widget.selectedItems)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item: ${item.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (item.selectedSubItem != null)
                      Text(
                        'Subitem: ${item.selectedSubItem}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              DatePicker.showDateTimePicker(
                                context,
                                showTitleActions: true,
                                currentTime: item.selectedDateTime,
                                onChanged: (date) {},
                                onConfirm: (date) {
                                  setState(() {
                                    item.selectedDateTime = date;
                                  });
                                },
                              );
                            },
                            child: Text(
                              'Date & Time: ${item.selectedDateTime}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            SizedBox(height: 20),
            MaterialButton(
              child: Text('Add All'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowDataPage(addedItems: _addedItems),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ShowDataPage extends StatelessWidget {
  final List<Item> addedItems;

  ShowDataPage({required this.addedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Added Items:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            for (var item in addedItems)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item: ${item.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    if (item.selectedSubItem != null)
                      Text(
                        'Subitem: ${item.selectedSubItem}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 10),
                    if (item.selectedDateTime != null)
                      Text(
                        'Date & Time: ${item.selectedDateTime}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Selection Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultipleSelectionPage(),
    );
  }
}



