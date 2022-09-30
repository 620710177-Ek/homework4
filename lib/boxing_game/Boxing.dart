import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boxing_Game extends StatefulWidget {
  const Boxing_Game({Key? key}) : super(key: key);

  @override
  State<Boxing_Game> createState() => _Boxing_GameState();
}

class _Boxing_GameState extends State<Boxing_Game> {
  int h=0;
  int count=0;
  int r=0;
int b=0;
  int Red(){
    setState(() {
      count++;
      h=1;
      r++;
    });
    return h;
  }
  int Blue(){
    setState(() {
      count++;
      h=2;
      b++;
    });

  return h;
  }

  Widget Red_Scoring(){
    return Container(
      height: 50,
      width: 2000,
      decoration: BoxDecoration(
      shape: BoxShape.rectangle,
  border: Border.all(
      color: Colors.black12,
  width: 1.0,
      ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text('10',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('ROUND $count'),
          Text('9', style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold)),

        ],
      )
      ) ;
}
   Widget Blue_Scoring(){
     return Container(
         height: 50,
         width: 2000,
         decoration: BoxDecoration(
           shape: BoxShape.rectangle,
           border: Border.all(
             color: Colors.black12,
             width: 1.0,
           ),
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text('9',
                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
             Text('ROUND $count'),
             Text('10', style: TextStyle(
                 fontSize: 22, fontWeight: FontWeight.bold)),

           ],
         )
     ) ;
   }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(
              'assets/logo.png',
              width: 2000,
              height: 50,
            ),
          ),
          Container(
            width: 2000,
            height: 22,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Women's Light (57.60kg) Semi-final",
                    style: TextStyle(color: Colors.white, fontSize: 16))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFFA00000),
                  size: 50,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/flag_ireland.png',
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'IRELAND',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),


                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'HARRINGTON Kellie Anne',
                      style: TextStyle(fontSize: 14),
                    ),
                    if(count==3)
                      if(r>b)
                        Icon(Icons.check,color: Colors.green,),
                  ],

                ),
        ],
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFF0000A0),
                  size: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/flag_thailand.png',
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'THAILAND',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'SEESONDEE Sudaporn',
                          style: TextStyle(fontSize: 14),
                        ),
                     
                        if(count==3)
                          if(r<b)
                            Icon(Icons.check,color: Colors.green,),
                      ],


                    ),

                  ],
                )
              ],
            ),
          ),
          Column(
           // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(child: Container(color: Colors.red,height: 6,)),
                  Expanded(child: Container(color: Colors.blue,height: 6,)),
                ],
              ),
              Column(
                children: [
                  if(count==1)
                    h==1?Red_Scoring():Blue_Scoring(),
                  if(count==2)
                    h==1?Red_Scoring():Blue_Scoring(),
                  if(count==3)
                    h==1?Red_Scoring():Blue_Scoring(),
                ],
              )

            ],
          ),
          SizedBox(height: 230,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             count!=3? Padding(
               padding: const EdgeInsets.all(4.0),
               child: Row(
                  children: [
                    Expanded(child: SizedBox(child: ElevatedButton(onPressed: Red,child: Icon(Icons.person,color: Colors.white,size: 20,),style:ElevatedButton.styleFrom(primary: Colors.red) ,),height: 35,)),
                    SizedBox(width: 2,),
                    Expanded(child: SizedBox(child: ElevatedButton(onPressed: Blue,child: Icon(Icons.person,color: Colors.white,size: 20,),style:ElevatedButton.styleFrom(primary: Colors.blue) ,),height: 35,)),
                  ],
                ),
             ):Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                 children: [
                   Expanded(child: SizedBox(child: ElevatedButton(onPressed: (){setState(() {
                     count=0; r=0;b=0;print(count);
                   });;},child: Icon(Icons.clear,color: Colors.white,size: 20,),style:ElevatedButton.styleFrom(primary: Colors.black),),height: 35,)),
                 ],
             ),
              )
            ],
          ),
    ]
      ),

    );
  }
}
