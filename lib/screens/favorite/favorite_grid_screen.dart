import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_development/config/colors.dart';
class FavoriteGrid extends StatefulWidget {
  const FavoriteGrid({super.key});

  @override
  State<FavoriteGrid> createState() => _FavoriteGridState();
}

class _FavoriteGridState extends State<FavoriteGrid> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 40,
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
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                      child: Text(
                        'Summer',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                      child: Text(
                        'T-Shirts',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                      child: Text(
                        'Shirts',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                      child: Text(
                        'Fashion',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                IconButton(onPressed: (){}, icon: Icon(Icons.grid_on_sharp,color: AppColors.black,))
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              children: [
                Stack(
                  children: [
                    Container(
                      color: AppColors.formColor,
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/favorite1.png'), fit: BoxFit.fill,),
                          SizedBox(height: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5,),
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
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                    SizedBox(width: 3,),
                                    Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                    SizedBox(width: 16,),
                                    Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('1000 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 15.0,
                        right: 8.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.red,
                            onPrimary: AppColors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Icon(Icons.shopping_bag,size: 18,),
                        )

                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      color: AppColors.formColor,
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/favorite2.png'), fit: BoxFit.fill,),
                          SizedBox(height: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 12,
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
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Mango',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Longsleeve Violeta',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                    SizedBox(width: 3,),
                                    Text('Orange',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                    SizedBox(width: 16,),
                                    Text('Size: S',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('4600 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 15.0,
                        right: 8.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.red,
                            onPrimary: AppColors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Icon(Icons.shopping_bag,size: 18,),
                        )

                    ),
                  ],
                ),
                Container(
                  color: AppColors.formColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/images/orderdetail.png'), fit: BoxFit.fill,),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5,),
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
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                SizedBox(width: 3,),
                                Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                SizedBox(width: 16,),
                                Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('1000 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: AppColors.formColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/images/bag2.png'), fit: BoxFit.fill,),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5,),
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
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                SizedBox(width: 3,),
                                Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                SizedBox(width: 16,),
                                Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('1000 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      color: AppColors.formColor,
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/favorite2.png'), fit: BoxFit.fill,),
                          SizedBox(height: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5,),
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
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                    SizedBox(width: 3,),
                                    Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                    SizedBox(width: 16,),
                                    Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text('1000 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 15.0,
                        right: 8.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.red,
                            onPrimary: AppColors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Icon(Icons.shopping_bag,size: 18,),
                        )

                    ),
                  ],
                ),
                Container(
                  color: AppColors.formColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/images/orderdetail.png'), fit: BoxFit.fill,),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5,),
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
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('LIME',style: TextStyle(color: AppColors.hintTextColor,fontSize: 12),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Shirt',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('Color:',style: TextStyle(color: AppColors.hintTextColor,fontSize: 10),),
                                SizedBox(width: 3,),
                                Text('Blue',style: TextStyle(color: AppColors.black,fontSize: 10),),
                                SizedBox(width: 16,),
                                Text('Size: L',style: TextStyle(color: AppColors.black,fontSize: 10),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text('1000 Rs.',style: TextStyle(color: AppColors.black,fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
