// import 'package:calculator/feature/home/presentation/views/widgets/symbols_list.dart';
// import 'package:flutter/material.dart';

// class CustomCalculate extends StatelessWidget {
//   const CustomCalculate({super.key, required this.input, required this.output});
//   final String input;
//   final String output;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             child: Text(
//               input,
//               style: const TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height / 30),
//           SizedBox(
//             width: double.infinity,
//             child: Text(
//               output,
//               textAlign: TextAlign.right,
//               style: const TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.redAccent,
//               ),
//             ),
//           ),
//           const SymbolsList(),
//         ],
//       ),
//     );
//   }
// }
