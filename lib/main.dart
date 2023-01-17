import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
// import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}

// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(),
//     );
//   }
// }

// class Level2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(),
//         Level3(),
//       ],
//     );
//   }
// }

// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context).data);
//   }
// }

// class MyText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context, listen: false).data);
//   }
// }

// class MyTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newText) {
//         // Provider.of<Data>(context).changeString(newText);
//       },
//     );
//   }
// }

// class Data extends ChangeNotifier {
//   String data = 'Some data';

//   void changeString(String newString) {
//     data = newString;
//     notifyListeners();
//   }
// }