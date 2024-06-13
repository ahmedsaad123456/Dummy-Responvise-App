// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: 
          
//           ),
//     );
//   }
// }



//=================================================================================================

// <------- IntrinsicHeight ---------->



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 250,
//             ),
//             // make the height as the largest height of the children of the Row
//             // it is expensive to performance especially with animations
//             IntrinsicHeight(
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       color: Colors.red,
//                       child: const Column(
//                         children: [
//                           SizedBox(
//                             height: 50,
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 18,
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             color: Colors.black,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Expanded(
//                           child: Container(
//                             color: Colors.blue,
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }






//=================================================================================================

// <------- Aspect Ratio ---------->



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // the ratio between the width and height is 5 to 1
//         body: AspectRatio(
//           aspectRatio: 5 / 1,
//           child: Container(
//             color: Colors.red,
//             width: MediaQuery.sizeOf(context).width,
            
//           ),
//         ),

//       ),
//     );
//   }
// }



//=================================================================================================

// <------- Flexiable & Fitted Box ---------->




//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             // use flexible to fit the size if the acutal size is too big
//             // if there is enough space with 300 pixels ok the size is 300
//             // if less than 300 pixels the size will be smaller than 300

//             const Flexible(
//                 // use fitted box to tell the child to fit in the size that
//                 // the parent (flexible in this case) allows to use it
//                 child: FittedBox(
//               child: Icon(
//                 Icons.ac_unit,
//                 size: 300,
//               ),
//             )),
//             Expanded(
//               child: Container(
//                 height: 150,
//                 color: Colors.red,
//                 // fit the icon in the size that the expanded allows to it
//                 child: const FittedBox(
//                   // to tell we want to make the icon small but if the size
//                   // becomes too big make the icon as it is 
//                   fit: BoxFit.scaleDown,
//                   child: Icon(Icons.abc),
//                 ),
//               ),
//             ),
//             Container(
//               height: 150,
//               color: Colors.green,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//=================================================================================================

// <------- Layout Builder ---------->

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(body: LayoutBuilder(builder: (context, constraints) {
//         // break point for layouts
//         if (constraints.maxWidth <= 500) {
//           return const MobileLayout();
//         } else if (constraints.maxWidth <= 800) {
//           return const DesktopLayout();
//         } else {
//           return const Text("tablet layout");
//         }
//       })),
//     );
//   }
// }

// class DesktopLayout extends StatelessWidget {
//   const DesktopLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return Container(
//                   color: Colors.green,
//                   margin: const EdgeInsets.only(bottom: 20),
//                   child: ListTile(
//                     title: Text('${index + 1}'),
//                   ));
//             },
//           ),
//         ),
//         Expanded(
//             child: Container(
//           child: const Center(
//             child: Text("qweqewqqwe"),
//           ),
//         ))
//       ],
//     );
//   }
// }

// class MobileLayout extends StatelessWidget {
//   const MobileLayout({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Container(
//             color: Colors.green,
//             margin: const EdgeInsets.only(bottom: 20),
//             child: ListTile(
//               title: Text('${index + 1}'),
//             ));
//       },
//     );
//   }
// }


//=================================================================================================




// <------- Media Query ---------->

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     return MaterialApp(
//       home: Scaffold(
//         body : Column(
//           children: [
//             Container(
//               height: height*0.2,
//               width: 200,
//               color: Colors.red,
//             ),
//             Container(
//               height: height*0.2,
//               width: 200,
//               color: Colors.black,
//             ),
//             Container(
//               height: height*0.2,
//               width: 200,
//               color: Colors.yellow,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }
