import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "My Order",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 214, 214, 214),
                          width: 2,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Ongoing",
                      style: TextStyle(
                        color: Color.fromARGB(255, 129, 129, 129),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Completed",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildOrderCard(
                "Axel Arigato",
                "Clean 90 Triple Sneakers",
                "42",
                "1",
                "Grey",
                "\$120.00",
                'assets/images/newarrival_shoes.png',
                
              ),
              const SizedBox(height: 12),
              _buildOrderCard(
                "The Marc Jacobs",
                "Traveler Tote",
                "M",
                "1",
                "Black",
                "\$50.00",
                'assets/images/newarrival_bag.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderCard(
    String title,
    String subtitle,
    String size,
    String quantity,
    String color,
    String price,
    String imagePath,
  ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                  Text(
                    "Qty: $quantity  Size: $size  Color: $color",
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}






























//=================================================================
// Real Code
// import 'package:flutter/material.dart';

// class AddtocartScreen extends StatefulWidget {
//   const AddtocartScreen({super.key});

//   @override
//   State<AddtocartScreen> createState() => _CartViewState();
// }

// class _CartViewState extends State<AddtocartScreen> {
//   final List carts = [
//     {
//       'title': 'The Enchanted Nightingale',
//       'subtitle': 'Music by Julie Gable. Lyrics by Sidney Stein.',
//       'price': 'Rs.200',
//       'img':
//           'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg',
//     },
//     {
//       'title': 'Mystic Sunrise',
//       'subtitle': 'Composed by Alan Walker. Lyrics by Nora Fatehi.',
//       'price': 'Rs.350',
//       'img':
//           'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
//     },
//     {
//       'title': 'Ocean Dreams',
//       'subtitle': 'Music by Aqua Wave. Lyrics by Deep Blue.',
//       'price': 'Rs.180',
//       'img':
//           'https://cdn.pixabay.com/photo/2016/11/29/03/53/beach-1867271_1280.jpg',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: carts.length,
//         itemBuilder: (context, index) {
//           final item = carts[index];
//           return Card(
//             margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//             elevation: 3,
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(item['img']),
//               ),
//               title: Text(item['title']),
//               subtitle: Text(item['subtitle']),
//               trailing: Text(
//                 item['price'],
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//               ),
//               onTap: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Tapped on ${item['title']}')),
//                 );
//               },
//             ),
//           );
//         },
//       ),

//       // Column(
//       //   mainAxisAlignment: MainAxisAlignment.center,
//       //   children: [
//       //     Card(
//       //       child: Column(
//       //         mainAxisSize: MainAxisSize.min,
//       //         children: <Widget>[
//       //           const ListTile(
//       //             leading: CircleAvatar(
//       //               backgroundImage: NetworkImage(
//       //                   'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg'),
//       //               //NetworkImage(carts[index]['img']
//       //             ),
//       //             //Icon(Icons.album),
//       //             title: Text('The Enchanted Nightingale'),
//       //             subtitle:
//       //                 Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//       //             trailing: Text(
//       //               'Rs.200',
//       //               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//       //             ),
//       //           ),
//       //         ],
//       //       ),
//       //     ),
//       //   ],
//       // ),

//       //-----
//       // ListView.builder(
//       //     itemCount: carts.length,
//       //     itemBuilder: (context, index) {
//       //       //                final item = carts[index];
//       //       return Card(
//       //         elevation: 3,
//       //         shadowColor: Colors.grey,
//       //         //                child: Column(
//       //         //                   children: [
//       //         //                     Row(
//       //         //                       mainAxisAlignment: MainAxisAlignment.end,
//       //         //                       children: [
//       //         //                         IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
//       //         //                         IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
//       //         //                       ],
//       //         //                     ),
//       //         //                     Text(
//       //         //                       "${posts[index]['content']}",
//       //         //                     ),
//       //         //                     Image.network(
//       //         //                       posts[index]['images'][0],
//       //         //                     ),
//       //         //
//       //         child: ListTile(
//       //           leading: Icon(Icons.add),
//       //           //                           leading: CircleAvatar(
//       //           //                             backgroundImage: NetworkImage(carts[index]['img']
//       //           // //                              'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_1280.jpg'
//       //           //                                 ),
//       //           //                           ),
//       //           title: //carts[index]['txt'],
//       //               Text(
//       //             'data2',
//       //             style: TextStyle(color: Colors.black),
//       //           ),
//       //           subtitle: //carts[index]['subtxt'],
//       //               Text('data2'),
//       //           trailing: //carts[index]['amont']
//       //               Text('Rs.data3'),
//       //         ),
//       //       );
//       //     }),
//     );
//   }
// }