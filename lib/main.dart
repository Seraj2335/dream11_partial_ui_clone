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
                indicatorColor: Color(0xffdf0100),
                unselectedLabelStyle: TextStyle(color: Color(0xff374f4e)),
                labelStyle: TextStyle(
                  color: Color(0xffdf0100),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: Color(0xff374f4e),
                tabs: [
                  Tab(text: 'My Contests(1)'),
                  Tab(text: 'Teams(1)'),
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
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdfe2e4), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      // height: MediaQuery.of(context).size.height * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.center,
                          end: AlignmentDirectional.bottomCenter,
                          colors: [Color(0xfff5f8ff), Color(0xfffeeeef)],
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Win Rs 10 Lakhs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff981a1a),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),

                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffdfe2e4),
                                      width: 1,
                                    ),

                                    left: BorderSide(
                                      color: Color(0xffdfe2e4),
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xffdfe2e4),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Rank 1 - 100 Wins',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '₹10,000 EACH',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff981a1a),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: AlignmentDirectional.topStart,
                                end: AlignmentDirectional.bottomEnd,
                                colors: [Color(0xfffefcef), Color(0xffffffff)],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rumaisha',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff0f2f8),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  child: Text(
                                    'T1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text('67'),
                                Text(
                                  '#5,44,039',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
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
              ),
            ),
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
