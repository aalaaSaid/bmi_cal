import 'package:bmi_calculator/core/colors.dart';
import 'package:bmi_calculator/views/home_sc.dart';
import 'package:flutter/material.dart';
class res_sc extends StatelessWidget {
  final double res ;
  const res_sc({Key? key , required  this.res}) : super(key: key);
  String getClassification() {
    if (res < 16) {
      return 'Severe Thinness';
    } else if (res >= 18.5 && res <= 25) {
      return 'Normal';
    } else {
      return 'Obese Class III';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColor.back,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Text('Your Result' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
                ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: AppColor.back,

           ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$res' ,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    ),
                    ) ,
                    SizedBox(height: 30,),
                    Text(getClassification() ,
                    style: TextStyle(
                      color: Colors.green,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:AppColor.gender,
                    ),
                      onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>home_sc(),
                      ));
                      },
                      child: Text('Recalculator')),
                ))
          ],
        ),
      ),
    );
  }
}
