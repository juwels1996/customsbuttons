import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.purple,
                      spreadRadius: 1,
                      blurRadius: 8,
                    offset: Offset(4,4)
                  ),
                  BoxShadow(color: Colors.white,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(-4,-4)
                  )
                ]
              ),
              child: CoolButton(color1: Colors.white60,
                  color2: Colors.white60,
                  color3:Colors.white60,
                  text: "Gorgeous",
                  textColor: Colors.purpleAccent,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 160,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(0),


            ),
            child: CoolButton(color1: Colors.black, color2: Colors.green, color3: Colors.red, text: "Continue",textColor: Colors.white,),
          ),
          SizedBox(height: 22,),
          Row(
            children: [
              RowButton(color1: Colors.black, color2: Colors.black, color3: Colors.black, text: "1",textColor: Colors.white,),
              RowButton(color1: Colors.red, color2: Colors.red, color3: Colors.red, text: "2",textColor: Colors.white,),
              RowButton(color1: Colors.green, color2: Colors.black, color3: Colors.black, text: "3",textColor: Colors.white,),
              RowButton(color1: Colors.purpleAccent, color2: Colors.black, color3: Colors.black, text: "4",textColor: Colors.white,),
              RowButton(color1: Colors.teal, color2: Colors.black, color3: Colors.black, text: "5",textColor: Colors.white,)

            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 60,
            width: 340,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(10),

            ),
            child: CoolButton(
              color1: Colors.orangeAccent,
              color2: Colors.orangeAccent,
              color3: Colors.orangeAccent,
              text: "opps! This is an Error message",
              textColor: Colors.white,),
          ),
          SizedBox(height: 22,),
          CoolButton(color1: Colors.orangeAccent,
              color2: Colors.black,
              color3: Colors.teal,
              text: "Succesfully You have done this!",
          textColor: Colors.green,),
          SizedBox(height: 14,),
          CustomTextField(
            color2: Colors.deepPurple,
            color1: Colors.deepPurpleAccent,
            hinttext: "kichu akta email dilei hobe",
            leveltext:"Input your text" ,
            text: "juwel@gmail.com",
            textColor: Colors.red,
          )


        ],
      ),
    );
  }
}
class CoolButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final String text;
   Color ?textColor;
   IconData ? icon;
   CoolButton({required this.color1,required this.color2,required this.color3,required this.text,this.textColor,this.icon});

  @override
  Widget build(BuildContext context) {
    var _mediaquery=MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              colors: [color1,color2,color3]
          )
      ),
      child: TextButton(
        onPressed: (){},
        child: Container(
          height: 70,
          width: 330,
          // height: _mediaquery.size.height/20 ,
          // width: _mediaquery.size.width *0.1,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),

          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.warning_sharp,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,
                  style: TextStyle(fontWeight: FontWeight.bold,color:textColor,fontSize: 18),),
              ),
              Icon(Icons.cancel,color: Colors.white,)
            ],
          ),
        ),
      ),

    );
  }
}

class RowButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final String text;
  IconData ?icon;
  Color ?textColor;
  RowButton({required this.color1,required this.color2,required this.color3,required this.text,this.icon,this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [color1,color2,color3]
              )
          ),

          child: FlatButton(onPressed: (){},
              child: Text(text,style: TextStyle(color: textColor),)),
        )

      ],
    );
  }
}
class CustomTextField extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String hinttext;
  final String leveltext;
  final String text;
  IconData ?icons;
  Color ?textColor;
  TextEditingController ?phoneController;
  CustomTextField({required this.color1,required this.color2,required this.hinttext,required this.leveltext,required this.text,this.icons,this.textColor,this.phoneController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 70,
            width: 300,
            child: TextFormField(
              controller: phoneController,
              // obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.teal,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w300,
                ),

              ),

            ),
          ),
        )

      ],
    );
  }
}
class WarningAlert extends StatelessWidget {
  const WarningAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
