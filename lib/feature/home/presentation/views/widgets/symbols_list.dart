// import 'package:flutter/material.dart';

// class SymbolsList extends StatelessWidget {
//  const  SymbolsList({super.key});

//   List<String> symbols = [
//     'C',
//     'Del',
//     '%',
//     '/',
//     '7',
//     '8',
//     '9',
//     '*',
//     '4',
//     '5',
//     '6',
//     '+',
//     '1',
//     '2',
//     '3',
//     '-',
//     '.',
//     '0',
//     'Ans',
//     '=',
//   ];

//  final String input = '5+2';

//  final String output = '7';

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: symbols.length,
//       shrinkWrap: true,
//       gridDelegate:
//           const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {
//             if (symbols[index] == 'C') {
             
          
            
//             }
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               color: mySymbolsColor(symbols[index]),
//               borderRadius: BorderRadius.circular(16),
//             ),
//             margin: const EdgeInsets.all(5),
//             alignment: Alignment.center,
//             child: Text(
//               symbols[index],
//               style: TextStyle(
//                 fontSize: 25,
//                 color: mySymbolsTextColor(symbols[index]),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Color mySymbolsColor(String symbol) {
//     if (symbol == 'C') {
//       return Colors.teal.shade200;
//     } else if (symbol == 'Del') {
//       return Colors.redAccent.shade100;
//     } else if (symbol == '%' ||
//         symbol == '/' ||
//         symbol == '*' ||
//         symbol == '+' ||
//         symbol == '-' ||
//         symbol == '=') {
//       return Colors.blue.shade300;
//     } else {
//       return Colors.grey.shade200;
//     }
//   }

//   Color mySymbolsTextColor(String symbol) {
//     if (symbol == 'C' ||
//         symbol == 'Del' ||
//         symbol == '%' ||
//         symbol == '/' ||
//         symbol == '*' ||
//         symbol == '+' ||
//         symbol == '-' ||
//         symbol == '=') {
//       return Colors.white;
//     } else {
//       return Colors.black;
//     }
//   }
// }
