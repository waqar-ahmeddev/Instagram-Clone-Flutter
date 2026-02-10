import 'package:flutter/material.dart';
class SCreen extends StatefulWidget {
  const SCreen({super.key});

  @override
  State<SCreen> createState() => _SCreenState();
}

class _SCreenState extends State<SCreen> {
  List<String> profileImage = [
      "images/post_1.png",
     "images/post_2.png",
     "images/post_3.png",
     "images/post_4.png",
     "images/post_5.png",
     "images/post_6.png",
     "images/post_7.png",
    " images/post_8.png",
     "images/post_9.png",
  ];
     List<String> profilePost = [
     "images/post_3.png",
     "images/post_9.png",
     "images/post_6.png",
     "images/post_1.png",
     "images/post_8.png",
     "images/post_2.png",
     "images/post_4.png",
     "images/post_5.png",
     "images/post_7.png",
  ];
    List<String> Profilename =[
      "Hoorain",
      "Waqar",
      "Digital Marketer",
      "Ayesha",
      "Hina",
      "Ahmed",
      "Noor",
    ];
    List<String> Names =[
      "Nawab",
      "Ayesha",
      "Hamza",
      "Nawal",
      "Kiran",
      "Luqman",
      "Laeeq",
    ];
    List<String> CommentBold = [
      "Ayesha",
      "Hamza",
      "Hoorain",
      "luqman",
      "Laeeq",
      "Nawal",
      "Qaisar",
    ];
     List<String> Comments = [
      " This is the Amazing pic Keep it up, keep going, Best of luck.",
      " Nice Pic Boy",
      " is ? Digital Marketing course is Available",
      " Nice pic Where Are you Nowadays",
      " Gorgeous",
      " Beautiful bro",
      " Maasha Allah",
    ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
       AppBar(
      title: Image.asset("images/instaTT.png",height: 50,),
      actions: [
        IconButton(
          onPressed : ()
          {}, 
        icon: Icon(Icons.add_circle_outline)),

        IconButton(
          onPressed : ()
          {}, 
        icon: Icon(Icons.favorite_border)),

        IconButton(
          onPressed : ()
          {}, 
        icon: Icon(Icons.chat_bubble_outline)),
        
        ],
       ),
       body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(7, (index) => Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 46,
                        backgroundImage:AssetImage("images/instaPP.png"),
                        child: CircleAvatar(
                          radius: 31,
                           backgroundImage:AssetImage(profileImage[index]),
                        ),
                      ),
                      SizedBox(height: 10,),
                       Text("Profile picture",style: TextStyle(fontSize: 12,color: Colors.black87),)
                    ],
                  ),
                ),
                ),
              ),            
            ),
                Divider(),
                Column(children: List.generate(7, (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage:AssetImage("images/instaPP.png"),
                        child: CircleAvatar(
                          radius: 12,
                           backgroundImage:AssetImage(profileImage[index]),               
                           ),
                        ), 
                      ),
                        Text(Profilename[index]),
                        Spacer(),
                        IconButton(
                          onPressed: (){

                          }, 
                          icon: Icon(Icons.more_vert)
                          ),
                  ],
                ),
                 Image.asset(
                   profilePost[index],
                    width: double.infinity,
                     height: 300,
                      fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                    IconButton(onPressed: (){

                    },
                     icon: Icon(Icons.favorite_border)
                     ),

                      IconButton(onPressed: (){

                    },
                     icon: Icon(Icons.chat_bubble_outline)
                     ),

                      IconButton(onPressed: (){

                    },

                     icon: Icon(Icons.label_outline)
                     ),

                   Spacer(),

                   IconButton(onPressed: (){

                    },
                     icon: Icon(Icons.bookmark_border)
                     ),
                     
                  ],
                  ),
                       SizedBox(height: 1),
                      Container(
                         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children:
                             [
                              TextSpan(
                              text: 'Liked bye ',
                            ),
                            TextSpan(
                              text: Names[index],style: TextStyle(fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                              text: ' and others ',
                            ),                  
                            
                            ],
                            ),
                            ),
                            SizedBox(height: 6),
                            RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children:
                             [
                            TextSpan(
                              text: CommentBold[index],style: TextStyle(fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                              text: Comments[index],
                            ),                                        
                            ],                   
                            ),
                            ),
                            SizedBox(height: 6),
                            RichText(text: TextSpan(
                              children:
                             [
                              TextSpan(
                              text: 'View All 12 comments',style: TextStyle(color: Colors.black38),
                            ),
                          ],      
                        )
                      )
                   ],
                        
                  ),
                ),
                    ],
                  ),                      ),
              ),
            ],
         ),
      ),
    );
  }
}