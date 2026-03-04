import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_gallery/app_text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
final List<String>myImages=[
  "assets/images/1st.png",
  "assets/images/Second.png",
  "assets/images/third.png",
  "assets/images/fourth.png",
  "assets/images/fifth.png",
  "assets/images/sixth.png",
  "assets/images/seventh.png",
  "assets/images/eighth.png",
  "assets/images/ninth.png",
   "assets/images/tenth.png"

];
    return Scaffold(

      body:SingleChildScrollView(
        child:
          SafeArea(child:
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            SizedBox(height: 16,),
            Text("Discover",style: AppTextStyle.tittleBlack36,),
              SizedBox(height: 20 ,),
              Text("WHAT'S NEW TODAY",style: AppTextStyle.titleblack13,),
              SizedBox(height: 20 ,),
              Container(
                 height: 343,
                width: MediaQuery.sizeOf(context).width,
                child: Image.asset("assets/images/first.png",fit: BoxFit.cover,)
              ),
              SizedBox(height: 10),
              Container(

                width:  MediaQuery.sizeOf(context).width,
                child: Row(
                  spacing: 10,
                  children: [Image.asset("assets/images/profile.png",fit: BoxFit.cover,),
                    Column(
                      spacing: 0,
                      children: [

                        Text("Kz Shawon",style: AppTextStyle.titleblack13,),
                        Text("@kzshawon",style:AppTextStyle.titleblack11,)
                      ],
                    ),


                     ],

                ),
              ),
              SizedBox(height: 25,),
              Text("BRWOSE ALL",style: AppTextStyle.titleblack13,),
        SizedBox(height: 12,),
        MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myImages.length,

           crossAxisCount:2,crossAxisSpacing: 12,mainAxisSpacing: 12, itemBuilder: (context,index) {
          return ClipRect(
            child: Image.asset(myImages[index], fit: BoxFit.cover,),
          );
        }),
         SizedBox(height: 10,),
      Center(

        child: SizedBox(
          width: MediaQuery.of(context).size.width,
           height: 50,
          child: ElevatedButton(


            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
             backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
              elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(6),
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),

          ),
            onPressed: (){},
             child: Text("SEE MORE",style: AppTextStyle.titleblack13,),

          ),
        ),
      )
            ]
          ),
          
        ),
      )
      ));
    
  }
}
