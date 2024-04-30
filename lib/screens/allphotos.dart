
import 'package:flutter/material.dart';
import 'package:photogalary/commn/widgits/applicationbar.dart';
import 'package:photogalary/screens/singlephotos.dart';

class AllPhotos extends StatelessWidget {
  const AllPhotos({super.key});

  Widget orientedPage({
    required List<dynamic> items,
    double? mainScreenPaddingLeft,
    double? mainScreenPaddingRight,
    double? mainScreenPaddingTop,
    double? mainScreenPaddingBottom,
    required int gridDelegateCrossAxisCount,
    required double gridDelegateCrossAxisAxisSpacing,
    required double gridDelegateMainAxisSpacing,
    required double gridDelegateChildAspectRatio,
    double containerPadding = 8,
    double containerBorderRadious = 8,
  }){
    return Padding(
      padding: EdgeInsets.only(left:mainScreenPaddingLeft!, right: mainScreenPaddingRight!, top: mainScreenPaddingTop!, bottom: mainScreenPaddingBottom!),
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridDelegateCrossAxisCount,
          crossAxisSpacing: gridDelegateCrossAxisAxisSpacing,
          mainAxisSpacing: gridDelegateMainAxisSpacing,
          childAspectRatio: gridDelegateChildAspectRatio,
        ),
        itemBuilder: (context , index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  SinglePhotos(
                        appBarTitle: items[index]['title'],
                        url: items[index]['img'],
                    ),
                ),
              );
            },
            child: Container(
              width: 180,
              height: 180,
              padding: EdgeInsets.all(containerPadding),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(containerBorderRadious),
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
    );

  }
  @override
  Widget build(BuildContext context) {
    var items = [
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/8ae88351d9d8ec2de6a2ad384cd6cc3e473842ef', 'title': 'Mood'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/b5c992972ab1f63e0688f30f6c974cf756072cea', 'title': 'Asthetic'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/ee2f671bae1da53eba6aa80eef98a563c436f03e', 'title': 'Animals'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/813976dbb9866db0ccb3da6c0a5768688558600a', 'title': 'City'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/5ee36ab8855aec6a04658bde0b2950139117bfef', 'title': 'Travel'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/fc40a16093009751f3322ccb89e8c7e7332fd657', 'title': 'Sky'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/66dee99e0933ec15fe4accd01110c125b72a02b1', 'title': 'Road'},
      {'img': 'https://www.figma.com/file/lFQbJKOR1Xib5iKerjO5fD/image/ece9027218d4260dc80dba3fdc97dd0fee673338', 'title': 'Flowers'},
    ];

    return Scaffold(
      appBar: ApplicationBar(
        title: Text(
          'Photo Galary',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color.fromRGBO(239, 239, 239, 1),
        ),
        ),
        leading: ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            child: Icon(Icons.arrow_back_ios_new_outlined,  color: Colors.white),
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
          return orientedPage(
            items: items,
            mainScreenPaddingLeft: 20,
            mainScreenPaddingRight: 30,
            mainScreenPaddingBottom: 0,
            mainScreenPaddingTop: 10,
            gridDelegateCrossAxisCount: 4,
            gridDelegateCrossAxisAxisSpacing: 40,
            gridDelegateMainAxisSpacing: 20,
            gridDelegateChildAspectRatio: 1.01,
            containerPadding: 8,
            containerBorderRadious: 30,
          );
        }else{
          return orientedPage(
            items: items,
            mainScreenPaddingLeft: 20,
            mainScreenPaddingRight: 20,
            mainScreenPaddingBottom: 10,
            mainScreenPaddingTop: 10,
            gridDelegateCrossAxisCount: 2,
            gridDelegateCrossAxisAxisSpacing: 26,
            gridDelegateMainAxisSpacing: 17,
            gridDelegateChildAspectRatio: 1.04,
            containerPadding: 8,
            containerBorderRadious: 30,
          );
        }
      },),
    );
  }
}
