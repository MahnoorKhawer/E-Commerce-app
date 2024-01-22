import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_development/config/colors.dart';
import 'package:ui_development/screens/favorite/favorite_screen.dart';
class FavoriteGrid extends StatefulWidget {
  const FavoriteGrid({super.key});

  @override
  State<FavoriteGrid> createState() => _FavoriteGridState();
}

class _FavoriteGridState extends State<FavoriteGrid> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();


  List<String> imagePaths = [
  'assets/images/favorite1.png',
  'assets/images/favorite2.png',
  'assets/images/favorite3.png',
  'assets/images/orderdetail.png',
  'assets/images/bag2.png',
  'assets/images/favorite1.png',
    'assets/images/favorite2.png',
    'assets/images/favorite3.png',
    'assets/images/orderdetail.png',
    'assets/images/bag2.png',
  ];
  List<String> text=[
    'Lime',
    'Mango',
    '&Berries',
    'Dorothy Perkins',
    'Olivier',
    'Lime',
    'Mango',
    '&Berries',
    'Dorothy Perkins',
    'Olivier',
  ];
  List<String> text2=[
    'Shirt',
    'Longsleeve Violeta',
    'T-Shirt',
    'Blouse',
    'Shirt',
    'Shirt',
    'Longsleeve Violeta',
    'T-Shirt',
    'Blouse',
    'Shirt',
  ];
  List<String> text3=[
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
    'Color:',
  ];
  List<String> text4=[
    'Blue',
    'Orange',
    'Black',
    'Black:',
    'Grey',
    'Blue',
    'Orange',
    'Black',
    'Black:',
    'Grey',
  ];
  List<String> text5=[
    'Size: L',
    'Size: S',
    'Size: S',
    'Size: M',
    'Size: L',
    'Size: L',
    'Size: S',
    'Size: S',
    'Size: M',
    'Size: L',
  ];
  List<String> text6=[
    '10 dollars',
    '46 dollars',
    '39 dollars',
    '14 dollars',
    '52 dollars',
    '10 dollars',
    '46 dollars',
    '39 dollars',
    '14 dollars',
    '52 dollars',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: AppColors.black),
          ),
          onChanged: (value) {},
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Favorites',style: TextStyle(color: AppColors.black,fontSize: 20),),
            IconButton(
              onPressed: () {
                setState(() {
                  isSearching = true;
                });
              },
              icon: Icon(Icons.search, color: AppColors.black),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          isSearching
              ? IconButton(
            onPressed: () {
              setState(() {
                isSearching = false;
                searchController.clear();
              });
            },
            icon: Icon(Icons.close, color: AppColors.black),
          )
              : Container(),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          ),
                          child: Text(
                            'Summer',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          ),
                          child: Text(
                            'T-Shirts',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          ),
                          child: Text(
                            'Shirts',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.black,
                            onPrimary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          ),
                          child: Text(
                            'Fashion',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_sharp,color: AppColors.black,)),
                        SizedBox(width: 5,),
                        Text('Filters',style: TextStyle(color: AppColors.black,fontSize: 12),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.compare_arrows,color: AppColors.black,)),
                        SizedBox(width: 5,),
                        Text('Price: lowest to high',style: TextStyle(color: AppColors.black,fontSize: 12),),
                      ],
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>MyFavorites()));
                    }, icon: Icon(Icons.grid_on_sharp,color: AppColors.black,))
                  ],
                ),
              ),
              SizedBox(height: 5,),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: Image(
                            image: AssetImage(imagePaths[index],),
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 12,
                            initialRating: 5,
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
                        ],
                      ),
                      Text(text[index],style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                      Text(text2[index],style: TextStyle(color: AppColors.black,fontSize: 12),),
                      Row(
                        children: [
                          Text(text3[index],style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                          SizedBox(width: 3,),
                          Text(text4[index],style: TextStyle(color: AppColors.black,fontSize: 12),),
                          SizedBox(width: 10,),
                          Text(text5[index],style: TextStyle(color: AppColors.black,fontSize: 12),),
                        ],
                      ),
                      Text(text6[index],style: TextStyle(color: AppColors.black,fontSize: 12),),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
