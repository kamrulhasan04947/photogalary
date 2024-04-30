import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:photogalary/commn/widgits/applicationbar.dart';

class SinglePhotos extends StatefulWidget {
  const SinglePhotos({super.key, required this.appBarTitle, required this.url,});
  final String appBarTitle;
  final String url;
  @override
  State<SinglePhotos> createState() => _SinglePhotosState();
}

class _SinglePhotosState extends State<SinglePhotos> {
  @override
  Widget build(BuildContext context) {
    var items = [
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/f4a312b87bd99804e59439f7e0f27e9f6cf7ebd3' , 'title': 'Dawn'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/d3d4fda797dabb9135a808713597e0ce5441ce5f' , 'title': 'Leaves'},
    ];
     return Scaffold(
      appBar: ApplicationBar(
        title: Text(
          widget.appBarTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color.fromRGBO(239, 239, 239, 1),
          ),
        ),
        leading:  ElevatedButton(
          onPressed: (){

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        ),
        action: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: (){},
          color: Colors.white,
          iconSize: 30,
        ),
        backgroundColor: Color.fromRGBO(44, 171, 0, 1),
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        Orientation orientation = MediaQuery.of(context).orientation;
        if(orientation == Orientation.landscape){
          return Padding(
            padding:EdgeInsets.only(left: 19, right: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: Container(
                      width: 372,
                      height: 298,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(widget.url),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10,),
                            child: Text(
                              'Mood with Nature',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 15),
                            child: Text(
                              'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 482,
                            height: 51,
                            child: ElevatedButton(
                                onPressed: (){},
                                child:Text(
                                  'See More',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Color.fromRGBO(44, 171, 0, 1),
                                 foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                               ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 20),
                            child: Text(
                              'Suggestions',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  padding: EdgeInsets.all(8),
                                  alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: NetworkImage(items[0]['img']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      items[0]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 180,
                                  height: 180,
                                  padding: EdgeInsets.all(8),
                                  alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: NetworkImage(items[1]['img']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15,),
                                    child: Text(
                                      items[1]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );

        }else{
          return Container(
             padding: EdgeInsets.only(left: 19, right: 19, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 372,
                  height: 298,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(widget.url),
                      fit:BoxFit.fill
                    )
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Mood With Weather',
                          style:  TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                          style:  TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 51,
                          child: ElevatedButton(
                              onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(44, 171, 0, 1),
                              foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                            ),
                              child: Text(
                                  "See More",
                                   style:  TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w400
                                   ),
                              ),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Suggetions',
                          style:  TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(44, 171, 0, 1),
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child:GridView.builder(
                    itemCount: items.length,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      childAspectRatio:1.2,
                    ),
                    itemBuilder: (context , index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  SinglePhotos(
                            appBarTitle: items[index]['title']!,
                            url: items[index]['img']!,
                          ),
                          ),
                          );
                        },
                        child: Container(
                          width: 180,
                          height: 180,
                          padding: EdgeInsets.all(8),
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(items[index]['img']!),
                              fit: BoxFit.cover,
                            ),
                            // boxShadow:
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              items[index]['title']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        }
      },),
    );
  }
}
