import 'package:fitness_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' ;
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vector_math/vector_math.dart' as vm;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<ChartData> chartData=[
    ChartData(1, 55),
    ChartData(2, 66),
    ChartData(3, 50),
    ChartData(4, 70),
    ChartData(5, 77),
    ChartData(6, 80),
    ChartData(7, 65),
    ChartData(8, 70),
    ChartData(9, 80),
    ChartData(10, 55),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: defaultPadding * 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: defaultPadding * 2),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 1,
                          vertical: defaultPadding),
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white12,
                              offset: Offset(-10, -10),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(10, 10),
                                spreadRadius: 0,
                                blurRadius: 10)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '72',
                            style: GoogleFonts.ubuntu(
                                fontSize: 32, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Pulse',
                            style: GoogleFonts.ubuntu(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child:
                                Image.asset('assets/icons/electrocardiogram.png'),
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding, vertical: defaultPadding),
                      height: 90,
                      width: 130,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white12,
                              offset: Offset(-10, -10),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(10, 10),
                                spreadRadius: 0,
                                blurRadius: 10)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('55',
                              style: GoogleFonts.ubuntu(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                              )),
                          Text('Weight',
                              style: GoogleFonts.ubuntu(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                   ContainerRing(title: 'Steps', number: '6930', subTitle: 'Distance \n4.73Km'),
                      ContainerRing(title: 'Stress \nLevel', number: '18', subTitle: 'Weak')
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: primaryColor,
                  boxShadow: [
                     BoxShadow(
                      color: Colors.white.withOpacity(0.1),
                      offset: Offset(-2,-2),
                      spreadRadius: 0,
                      blurRadius: 10
                    ),
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0,10),
                      spreadRadius: 0,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Column(
                  children:[
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: gradientMiddle
                      ),
                      child: Text('Dream',style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),),
                    ),
                    SizedBox(height: defaultPadding,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: defaultPadding/2),
                                child: Text(
                                  '77', style: GoogleFonts.ubuntu(
                                    fontSize: 30, fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Text(
                                'Sleep assessment',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800
                                ),
                              )
                            ],
                          ),
                          Column(
                            children:[
                              Row(
                                children: [
                                  
                                   Text(
                                    '6',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 30, fontWeight: FontWeight.w800
                                    ),
                                  ),
                               
                                  Text('h',
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),),
                                  Text(
                                    '12',
                                    style: GoogleFonts.ubuntu(
                                    
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800
                                  ),
                                    
                                  ),
                                  Text(
                                    'min',
                                    style: GoogleFonts.ubuntu(
                                    color: Colors.white38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),   
                                  )
                                ],
                              ),
                               Text(
                                    'In bed',
                                    style: GoogleFonts.ubuntu(
                                    color: Colors.white38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),   
                                  )
                            ]
                          ),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(bottom: defaultPadding/2),
                                  child: Text(
                                    '55',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 30, 
                                      fontWeight: FontWeight.w800
                                    ),
                                  ),),
                                  Text(
                                    'min',
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.white38,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800
                                    ),
                                  )
                                ],
                              ),
                              Text('Continue...',
                              style: GoogleFonts.ubuntu(
                                color: Colors.white38,
                                fontWeight: FontWeight.w800
                              ),
                              )
                            ],
                          )
                        ]
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: SfCartesianChart(
                          plotAreaBackgroundColor: Colors.transparent,
                          margin: EdgeInsets.all(0),
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          plotAreaBorderWidth: 0,
                          primaryXAxis: NumericAxis(
                            majorGridLines: MajorGridLines(width: 0),
                            majorTickLines: MajorTickLines(width: 0),
                            isVisible: false,
                          ),
                          primaryYAxis: NumericAxis(
                            majorGridLines: MajorGridLines(width: 0),
                            majorTickLines: MajorTickLines(width: 0),
                            isVisible: false,
                          ),
                          series: <CartesianSeries<ChartData,int>>[
                            ColumnSeries(
                              width: 0.4,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  gradientStart,
                                  gradientMiddle,
                                  gradientEnd,
                                ],
                                stops: [
                                  0.0,
                                  0.5,
                                  1.0
                                ]
                              ),
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _)=> data.x, 
                              yValueMapper: (ChartData data, _)=> data.y)
                          ],
                        ),
                      ),
                    )
                  ]
                ),
              ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding*2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
                            height: 135,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-5,-5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(5,5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children:[
                                      Text('7', style: GoogleFonts.ubuntu(
                                        fontSize:30,
                                        fontWeight: FontWeight.w800
                                      ),),
                                      SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset('assets/icons/happy.png', color: gradientMiddle,),
                                      )
                                    ]
                                  ),
                                ),
                                Text('Body\nscore',style: GoogleFonts.ubuntu(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(width: defaultPadding*2,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-5,-5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(5,5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: defaultPadding/2,),
                                 child:  Text('0',style: GoogleFonts.ubuntu(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),)
                                ),
                                Text(
                                  'Calories',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 20, fontWeight: FontWeight.w800
                                  ),
                                )
                               
                              ],
                            ),
                          ),
                          SizedBox(width: defaultPadding*2,),
                           Container(
                            padding: EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-5,-5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(5,5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: defaultPadding/2,),
                                 child:  Text('99%',style: GoogleFonts.ubuntu(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),)
                                ),
                                Text(
                                  'SpOz',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 20, fontWeight: FontWeight.w800
                                  ),
                                )
                               
                              ],
                            ),
                          ),
                        
                        ],
                      ),  
                     
                    ],
                  ),
                  ),
              ),
              // SizedBox(width: defaultPadding*2,),
                      // Expanded(
                      //   child: Container(
                      //     height: 420,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.all(Radius.circular(20)),
                      //       color: primaryColor,
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.white.withOpacity(0.1),
                      //           offset: Offset(-5,-5),
                      //           spreadRadius: 0,
                      //           blurRadius: 10,
                      //         ),
                      //        const BoxShadow(
                      //           color: Colors.black54,
                      //           offset: Offset(5,5),
                      //           spreadRadius: 0,
                      //           blurRadius: 5
                      //         )
                      //       ]
                      //     ),
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         padding: EdgeInsets.all(5),
                      //         height: 40,
                      //         width: double.infinity,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.only(
                      //             topLeft: Radius.circular(20),
                      //             topRight: Radius.circular(20),
                      //           ),
                      //           color: gradientMiddle
                      //         ),
                      //         child: Text('Activities',style: GoogleFonts.ubuntu(
                      //           fontSize: 20, fontWeight: FontWeight.w800
                      //         ),),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.only(
                      //           left: defaultPadding,
                      //           right: defaultPadding,
                      //           top: defaultPadding*2
                      //         ),
                      //         child: Row(
                      //           children: [
                      //             Expanded(
                      //               child: Container(
                      //                 padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      //                 height: 120,
                      //                 width: 120,
                      //                 decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.all(Radius.circular(20)),
                      //                   color: primaryColor,
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                       color: Colors.white.withOpacity(0.1),
                      //                       offset: Offset(-2, -2),
                      //                       spreadRadius: 0,
                      //                       blurRadius: 5
                      //                     ),
                      //                     BoxShadow(
                      //                       color: Colors.black54,
                      //                       offset: Offset(10, 10),
                      //                       spreadRadius: 0,
                      //                       blurRadius: 10
                      //                     )
                      //                   ]
                      //                 ),
                      //                 child: Column(children: [
                      //                   Text(
                      //                     '2',
                      //                     style: GoogleFonts.ubuntu(
                      //                       fontSize: 26,
                      //                       fontWeight: FontWeight.w800
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     'Workout for \nthis week',
                      //                     style: GoogleFonts.ubuntu(
                      //                       fontSize: 16,
                      //                       fontWeight: FontWeight.w800
                      //                     )
                      //                   )
                      //                 ],),
                      //               )
                      //               ),
                      //               SizedBox(width: defaultPadding,),
                      //                Expanded(
                      //               child: Container(
                      //                 padding: EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
                      //                 height: 120,
                      //                 width: 120,
                      //                 decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.all(Radius.circular(20)),
                      //                   color: primaryColor,
                      //                   boxShadow: [
                      //                     BoxShadow(
                      //                       color: Colors.white.withOpacity(0.1),
                      //                       offset: Offset(-2, -2),
                      //                       spreadRadius: 0,
                      //                       blurRadius: 5
                      //                     ),
                      //                     BoxShadow(
                      //                       color: Colors.black54,
                      //                       offset: Offset(10, 10),
                      //                       spreadRadius: 0,
                      //                       blurRadius: 10
                      //                     )
                      //                   ]
                      //                 ),
                      //                 child: Column(children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.only(bottom: defaultPadding/2),
                      //                     child: Row(
                      //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //                       children: [
                      //                         Text(
                      //                           '180',
                      //                           style: GoogleFonts.ubuntu(
                      //                             fontSize: 26,
                      //                             fontWeight: FontWeight.w800
                      //                           ),
                      //                         ),
                      //                          Text(
                      //                     'min',
                      //                     style: GoogleFonts.ubuntu(
                      //                       fontSize: 16,
                      //                       fontWeight: FontWeight.w800
                      //                     )
                      //                   )
                      //                       ],
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     'Workout\nduration',
                      //                     style: GoogleFonts.ubuntu(
                      //                       fontSize: 13,
                      //                       fontWeight: FontWeight.w800
                      //                     ),
                      //                   )
                                       
                      //                 ],),
                      //               )
                      //               ),
                              
                      //           ],
                      //         ),
                      //       ),
                      //       SizedBox(height: defaultPadding*2,),
                      //       Container(
                      //         padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      //         height: 70,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.all(Radius.circular(20)),
                      //           color: primaryColor,
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Colors.white.withOpacity(0.1),
                      //               offset: Offset(-2,-2),
                      //               spreadRadius: 0,
                      //               blurRadius: 10,
                      //             ),
                      //             BoxShadow(
                      //               color: Colors.black54,
                      //               offset: Offset(10,10),
                      //               spreadRadius: 0,
                      //               blurRadius: 10,
                      //             )
                      //           ]
                      //         ),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           children: [
                      //           Container(
                      //             height: 60,
                      //             width: 60,
                      //             child: Stack(
                      //               children:[
                      //                 Center(
                      //                   child: Container(
                      //                     height: 15,
                      //                     width: 15,
                      //                     decoration: BoxDecoration(
                      //                       shape: BoxShape.circle,
                      //                       color: Color.fromARGB(255, 3, 237, 179)
                      //                     ),
                      //                   ),
                      //                 ),
                                    
                      //               ]
                      //             )
                      //           ),
                      //             Text(
                      //                   'Dancing\n00:51:20',
                      //                   style: GoogleFonts.ubuntu(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.w800,
                      //                   ),
                      //                 ),
                      //                 Text(
                      //                   '7\nMarch',
                      //                   style: GoogleFonts.ubuntu(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w800
                      //                   ),
                      //                 )
                      //         ],)
                      //       ),
                      //       const SizedBox(height: defaultPadding*2,),
                      //        Container(
                      //         padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      //         height: 70,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.all(Radius.circular(20)),
                      //           color: primaryColor,
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Colors.white.withOpacity(0.1),
                      //               offset: Offset(-2,-2),
                      //               spreadRadius: 0,
                      //               blurRadius: 10,
                      //             ),
                      //             BoxShadow(
                      //               color: Colors.black54,
                      //               offset: Offset(10,10),
                      //               spreadRadius: 0,
                      //               blurRadius: 10,
                      //             )
                      //           ]
                      //         ),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           children: [
                      //           Container(
                      //             height: 60,
                      //             width: 60,
                      //             child: Stack(
                      //               children:[
                      //                 Center(
                      //                   child: Container(
                      //                     height: 15,
                      //                     width: 15,
                      //                     decoration: BoxDecoration(
                      //                       shape: BoxShape.circle,
                      //                       color: Color.fromARGB(255, 3, 237, 179)
                      //                     ),
                      //                   ),
                      //                 ),
                                    
                      //               ]
                      //             )
                      //           ),
                      //             Text(
                      //                   'Dancing\n00:51:20',
                      //                   style: GoogleFonts.ubuntu(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.w800,
                      //                   ),
                      //                 ),
                      //                 Text(
                      //                   '7\nMarch',
                      //                   style: GoogleFonts.ubuntu(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w800
                      //                   ),
                      //                 )
                      //         ],)
                      //       )
                
                      //     ],
                      //   ),
                
                      //   ))  
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerRing extends StatelessWidget {
  
 
  final String title, number , subTitle;
  const ContainerRing({
    super.key,  required this.title, required this.number, required this.subTitle, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 230,
    width: 230,
    
    child: Stack(
      children: [
        SizedBox(
          height: 250,
          width: 250,
          child: Neumorphic(
            style: NeumorphicStyle(
              color: primaryColor,
              shadowDarkColorEmboss: Colors.black,
              shadowLightColorEmboss: Colors.white,
              boxShape: NeumorphicBoxShape.circle(),
              depth: NeumorphicTheme.embossDepth(context)
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: CustomPaint(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  // margin: EdgeInsets.all(defaultPadding/2),
                  decoration:const BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white12,
                          offset: Offset(-10, -10),
                          spreadRadius: 0,
                          blurRadius: 20,
                        ),
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(10, 10),
                            spreadRadius: 0,
                            blurRadius: 20)
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.white60,
                            )),
                        Text( number,
                            style: GoogleFonts.ubuntu(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(subTitle,
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.white60
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
                    );
  }
}
class ChartData{
  ChartData(this.x,this.y);
  final int x;
  final double y;
}