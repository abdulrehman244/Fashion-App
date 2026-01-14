import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
        "name": "Kristine Jones",
        "message": "It is a long established fact that a reader will be distracted...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
        "name": "Kay Hicks",
        "message": "There are many variations of passages of Lorem Ipsum...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2017/05/31/06/49/model-2359322_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "6 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/17/08/portrait-3637976_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "1 day ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
        "name": "Kristine Jones",
        "message": "It is a long established fact that a reader will be distracted...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
        "name": "Kay Hicks",
        "message": "There are many variations of passages of Lorem Ipsum...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2017/05/31/06/49/model-2359322_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "6 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/17/08/portrait-3637976_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "1 day ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
        "name": "Kristine Jones",
        "message": "It is a long established fact that a reader will be distracted...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
        "name": "Kay Hicks",
        "message": "There are many variations of passages of Lorem Ipsum...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2017/05/31/06/49/model-2359322_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "6 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/17/08/portrait-3637976_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "1 day ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
        "name": "Kristine Jones",
        "message": "It is a long established fact that a reader will be distracted...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
        "name": "Kay Hicks",
        "message": "There are many variations of passages of Lorem Ipsum...",
        "time": "2 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2017/05/31/06/49/model-2359322_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "6 hours ago"
      },
      {
        "ImageURL": "https://cdn.pixabay.com/photo/2018/08/28/17/08/portrait-3637976_1280.jpg",
        "name": "Cheryl Moretti",
        "message": "If you are going to use a passage of Lorem Ipsum...",
        "time": "1 day ago"
      },
      // ... (you can keep adding more)
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Custom Header (not AppBar)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                 
                  const Text(
                    "Notification",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      elevation: 3
                    ),
                    child: Icon(Icons.more_vert,color: Colors.black,)
                    )
                ],
              ),
            ),

            // Notification List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notif = notifications[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(notif['ImageURL'] ?? ''),
                      backgroundColor: Colors.grey[200],
                    ),
                    title: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: notif['name'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " ${notif['message']}"),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      notif['time'] ?? "",
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

















































//========================================================
// Real code
// import 'package:e_commerce_app/Widgets/CustomNotification.dart';
// import 'package:flutter/material.dart';

// class NotificationScreen extends StatefulWidget {
//   const NotificationScreen({super.key});

//   @override
//   State<NotificationScreen> createState() => _NotificationViewState();
// }

// class _NotificationViewState extends State<NotificationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.red,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 25,),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
            
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.black,
//                     ),
//                     Spacer(),
            
//                     ElevatedButton(
//                       onPressed: (){}, 
//                       child: Icon(Icons.more_vert))
//                   ],
//                 ),
            
//                 SizedBox(height: 25,),
//                 Text("Notification",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            
            
            
            
//                 SizedBox(
//                   height: 500,
//                   child: ListView.builder(
//                     physics: BouncingScrollPhysics(),
//                     itemCount: 20,
//                     itemBuilder: (context, index) {
//                       return CustomNotification(
//                         "https://cdn.pixabay.com/photo/2018/08/28/17/08/portrait-3637976_1280.jpg",
//                         "Steve Hicks",
//                         "Hey! I Want To Buy Something",
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
