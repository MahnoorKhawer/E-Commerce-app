import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_development/config/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_development/config/styles.dart';
import 'dart:io';

import 'package:ui_development/screens/profile/profile_screen.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  TextEditingController _review=TextEditingController();
  bool isCheckedthree= false;
   String? selectedImagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfile()));
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating&Reviews',
                style: TextStyle(color: AppColors.black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('4.3', style: TextStyle(color: AppColors.black, fontSize: 24)),
                        SizedBox(height: 5),
                        Text('23 ratings', style: TextStyle(color: AppColors.hintTextColor, fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        buildRatingRow(5,'12'),
                        buildRatingRow(4,'5'),
                        buildRatingRow(3,'4'),
                        buildRatingRow(2,'2'),
                        buildRatingRow(1,'0'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text('8 reviews',style: TextStyle(color: AppColors.black,fontSize: 20),),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckedthree,
                        onChanged: (newValue) {
                          setState(() {
                            isCheckedthree = newValue!;
                          });
                        },
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                      ),

                      SizedBox(width: 5,),
                      Text('With photo'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
               children: [
                Stack(
                  alignment: Alignment.topLeft,
                 children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(33.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Helene Moore',style: TextStyle(color: AppColors.black,fontSize: 10),),
                          SizedBox(height: 3,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             RatingBar.builder(
                               initialRating: 4,
                               minRating: 0,
                               direction: Axis.horizontal,
                               itemCount: 5,
                               itemSize: 12.0,
                               itemBuilder: (context, _) => Icon(
                                 Icons.star,
                                 color: Colors.amber,
                               ),
                               onRatingUpdate: (rating) {
                                 print(rating);
                               },
                             ),
                             Text('June 5, 2019',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                           ],
                          ),
                          SizedBox(height: 5,),
                          Text('The dress is great! Very classy and\ncomfortable. it fit perfectly! I am 5.7 and\n130 pounds. I am 34B chest. This dress\nwould be loo long for those who are\nshorter but could be hemmed. I  would not\nrecommend it for those big chestedas\nI am smaller chested and it fit me perfectly.\nThe underarms were not too wide\nand the dress was made well.',style: TextStyle(color: AppColors.black,fontSize: 10),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Text('Helpful',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                             SizedBox(width: 4,),
                             IconButton(
                                 onPressed: (){},
                                 icon: Icon(Icons.thumb_up),
                             color: AppColors.hintTextColor,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 20,
                     backgroundImage: AssetImage('assets/images/Avatarr.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
              SizedBox(height: 10,),
              SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(33.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kim Shine', style: TextStyle(color: AppColors.black, fontSize: 10)),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 12.0,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text('August 13, 2019', style: TextStyle(color: AppColors.hintTextColor, fontSize: 10)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'I loved this dress so much as soon as I tried\nit on I knew I had to buy it in another color.\nI am 5.3 about 155lbs and I carry all my\nweight in my upper body. When I put it on\n I felt like it thinned me put and I got\nso many compliments.',
                              style: TextStyle(color: AppColors.black, fontSize: 10),
                            ),
                            SizedBox(height: 5),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: AssetImage('assets/images/small.png')),
                                  SizedBox(width: 5,),
                                  Image(image: AssetImage('assets/images/smalll.png')),
                                  SizedBox(width: 5,),
                                  Image(image: AssetImage('assets/images/small1.png')),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Helpful', style: TextStyle(color: AppColors.hintTextColor, fontSize: 10)),
                                SizedBox(width: 4),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.thumb_up),
                                  color: AppColors.hintTextColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/Avatarr.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
              SizedBox(height: 10,),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(33.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Matilda Brown',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              SizedBox(height: 3,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 12.0,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text('August 14, 2019',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('The dress is great! Very classy and\ncomfortable. it fit perfectly! I am 5.7 and\n130 pounds. I am 34B chest. This dress\nwould be loo long for those who are\nshorter but could be hemmed. I  would not\nrecommend it for those big chestedas\nI am smaller chested and it fit me perfectly.\nThe underarms were not too wide\nand the dress was made well.',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Helpful',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                  SizedBox(width: 4,),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.thumb_up),
                                    color: AppColors.hintTextColor,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 150,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text('What is your rate?', style: text1TextStyle16,),
                          SizedBox(height: 10,),
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Colors.amber,
                             ),
                             onRatingUpdate: (rating) {
                             print(rating);
                             },
                             ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Please share your opinion\n about the product'),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            controller: _review,
                            maxLines: null,
                            decoration: InputDecoration(
                              labelText: 'Your review',
                              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0), // Adjust padding as needed
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                          children: [
                          Container(
                            width: 70,
                            height: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: IconButton(
                                    onPressed: () async {
                                      final picker = ImagePicker();
                                      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

                                      if (pickedFile != null) {
                                        setState(() {
                                          selectedImagePath = pickedFile.path;
                                        });
                                        print('Image selected: ${pickedFile.path}');
                                      } else {
                                        print('No image selected.');
                                      }
                                    },
                                    icon: Icon(
                                      Icons.camera_alt,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Text(
                                    'Add your photo',
                                    style: TextStyle(color: AppColors.black, fontSize: 8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (selectedImagePath != null)
                            SizedBox(
                              width: 70,
                              height: 80,
                              child: Image.file(
                                File(selectedImagePath!),
                                fit: BoxFit.cover,
                              ),
                            ),
                        ],
                      ),
                          SizedBox(height: 15,),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Send Review'),
                                    content: Text('Your review has been send successfully!.'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder:(context)=>ReviewPage()));
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColor,
                            ),
                            child: Text('SEND REVIEW', style: TextStyle(color: AppColors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          mini: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.edit, color: AppColors.white, size: 16),
                SizedBox(width: 5),
                Text(
                  'Write a review',
                  style: TextStyle(color: AppColors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  Widget buildRatingRow(int rating, String text) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: rating.toDouble(),
          minRating: 0,
          direction: Axis.horizontal,
          itemCount: rating,
          itemSize: 20.0,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(width: 10),
        Container(
          width: 100,
          child: LinearProgressIndicator(
            value: rating / 5.0,
            backgroundColor: AppColors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
        ),
        SizedBox(width: 10),
        Text(text, style: TextStyle(color: AppColors.black, fontSize: 12)),
      ],
    );
  }
}

