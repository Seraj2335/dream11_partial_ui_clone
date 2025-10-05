import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                dividerColor: Colors.black12,
                dividerHeight: .5,
                indicatorColor:Color(0xffdf0100),
                unselectedLabelStyle: TextStyle(color: Color(0xff374f4e)),
                labelStyle: TextStyle(
                  color: Color(0xffdf0100),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: Color(0xff374f4e),
                tabs: [
                  Tab(text: 'My Contests'),
                  Tab(text: 'Teams'),
                  Tab(text: 'Commentary'),
                  Tab(text: 'Commentary'),
                  Tab(text: 'Stats'),
                ],
              ),
              leading: InkWell(
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
              actions: [
                InkWell(
                  child: Icon(Icons.help_outline_outlined, color: Colors.white),
                ),
                SizedBox(width: 25),
                InkWell(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      // Circle background color
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ), // Optional border
                    ),
                    child: Center(
                      child: Text(
                        'PTS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],

            ),
            SliverToBoxAdapter(child:  Container(
                color: Colors.white,),
            )

          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('IND vs WI'),
    //     leading: InkWell(child: Icon(Icons.arrow_back)),
    //     actions: [
    //       InkWell(child: Icon(Icons.help_outline_outlined)),
    //       SizedBox(width: 15,),
    //       InkWell(
    //         child: Container(
    //           width: 20,
    //           height: 20,
    //           decoration: BoxDecoration(
    //             // Circle background color
    //             shape: BoxShape.circle,
    //             border: Border.all(
    //               color: Colors.black,
    //               width: 1.5
    //             ), // Optional border
    //           ),
    //           child: Center(
    //             child: Text(
    //               'PTS',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 5,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       SizedBox(width: 20,)
    //     ],
    //   ),
    // );
  }
}
