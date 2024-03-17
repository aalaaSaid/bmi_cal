import 'package:bmi_calculator/core/colors.dart';
import 'package:bmi_calculator/views/result_sc.dart';
import 'package:flutter/material.dart';
class home_sc extends StatefulWidget {

  @override
  State<home_sc> createState() => _home_scState();
}
int w = 0 ;
int a = 0 ;
int h =20;
bool ismale = true ;

class _home_scState extends State<home_sc> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator' ,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        )
        ),
        backgroundColor: AppColor.back,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
          //gender
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.yellow,
                      highlightColor: Colors.yellow,
                      onTap: (){
                        setState(() {
                        ismale = true ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ismale?AppColor.gender:AppColor.back,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Icon(Icons.male , size: 80,color: AppColor.white,),
                            SizedBox(height: 15,),
                            Text('Male',
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColor.white
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.yellow,
                      highlightColor: Colors.yellow,
                      onTap: (){
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ismale?AppColor.back : AppColor.gender,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female , size: 80,color: AppColor.white,),
                            SizedBox(height: 15,),
                            Text('Female',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          //height
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.back,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Height',
                    style: TextStyle(
                      color: AppColor.h_w,
                      fontSize: 24
                    ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$h' ,
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                        ),
                        ),
                        SizedBox(width: 5,),
                        Text('cm' ,
                          style: TextStyle(
                              color: AppColor.h_w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Slider(
                        value: h.toDouble(),
                        max: 300,
                        min: 0,
                        activeColor: AppColor.gender,
                        inactiveColor: AppColor.h_w,
                        onChanged: (value){
                          setState(() {
                            h = value.toInt();
                          });
                        }),


                  ],
                ),
              ),
            ),
            //w $ age
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.back,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Wedith',
                            style: TextStyle(
                                color: AppColor.h_w,
                                fontSize: 24
                            ),
                          ),
                          Text('$w',
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 24,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                           CircleAvatar(
                             backgroundColor: AppColor.h_w,
                             child: IconButton(
                               onPressed: (){
                                 setState(() {
                                   w++;
                                 });
                               },
                               icon: Icon(Icons.add ,
                               color: AppColor.white,
                               ),
                             ),
                           ),
                              SizedBox(width: 20,),
                              CircleAvatar(
                                backgroundColor: AppColor.h_w,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      w-- ;
                                    });
                                  },
                                  icon: Icon(Icons.remove ,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.back,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Age',
                            style: TextStyle(
                                color: AppColor.h_w,
                                fontSize: 24
                            ),
                          ),
                          Text('$a',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColor.h_w,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      a++ ;
                                    });
                                  },
                                  icon: Icon(Icons.add ,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              CircleAvatar(
                                backgroundColor: AppColor.h_w,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      a-- ;
                                    });
                                  },
                                  icon: Icon(Icons.remove ,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                double res = w/(h*h);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>res_sc(res: res,),
                ));
              },
                  child: Text('Calculate') ,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.gender,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
