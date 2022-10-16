import 'package:flutter/material.dart';
  class XoGame  extends StatefulWidget {
 String PLAYER1;
 String PLAYER2;
XoGame(this.PLAYER1,this.PLAYER2);
  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  List<String> symbols= ['','','','','','','','',''] ;
  bool isX = true ;
  int scoreX= 0;
  int scoreO= 0;
  @override
  Widget build(BuildContext context) {


     return Scaffold(
        appBar: AppBar(
          leading: IconButton (
            onPressed: (){
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),

          ) ,
          title: const Text( 'XO Gaming'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children:  [
                  Expanded(
                    child: Text(
                      ' ${widget.PLAYER1}(X) \n Score: $scoreX' ,
                      style: TextStyle (
                        color: Colors.black ,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,

                    ),
                  )  ,
                  Expanded(
                    child: Text('${widget.PLAYER2}(O) \n Score: $scoreO' ,
                      style: TextStyle (
                        color: Colors.black ,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),

                    ),
                  )  ,
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(0) ;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[0],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(1) ;
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[1],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(2);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[2],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(3);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[3],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(4);
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[4],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(5);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[5],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(6);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[6],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(7);
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[7],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        onButtonClick(8);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red , width: 2)
                        ),
                        child: Center(child: Text(symbols[8],
                          style: TextStyle (
                              color: Colors.white,
                              fontSize: 50 ,
                              fontWeight: FontWeight.bold
                          ),
                        )
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
  }
  //  X X X   isX = true --> x++
  //  List<String> symbols= ['','','','','','','','',''] ;
  int counter  = 0 ;
  void onButtonClick(int i){
    // text --> '' onButtonClick   else  return
    if(symbols[i].isNotEmpty)
    {
      //X  O
      return ; // stop method
    }
    if(isX==true) {
      symbols[i] ='X';
    } else{
      symbols[i]='O';
    }
    counter++;  // number of clicks
    print(counter);
    winner() ; // i = 8
    isX =! isX; // false
    setState(() {});
  }
  void winner( ){
    if(symbols[0]==symbols[1]&&symbols[1]==symbols[2]&&symbols[0]!=''){
      ///    X is winner
      print ('${symbols[0] } is winner ');
      init();
    }
    else if(symbols[3]==symbols[4]&&symbols[4]==symbols[5]&&symbols[3]!=''){
      print ('${symbols[3] } is winner ');
      init( );
    }
    else if(symbols[6]==symbols[7]&&symbols[7]==symbols[8]&&symbols[6]!=''){
      print ('${symbols[3] } is winner ');
      init( );
    }
    else if(symbols[0]==symbols[3]&&symbols[3]==symbols[6]&&symbols[0]!=''){
      print ('${symbols[0] }is winner ');
      init( );
    }
    else if(symbols[1]==symbols[4]&&symbols[4]==symbols[7]&&symbols[1]!=''){
      print ('${symbols[1] }is winner ');
      init( );
    }
    else if(symbols[2]==symbols[5]&&symbols[5]==symbols[8]&&symbols[2]!=''){
      print ('${symbols[2] }is winner ');
      init( );
    }
    else if(symbols[0]==symbols[4]&&symbols[4]==symbols[8]&&symbols[0]!=''){
      print ('${symbols[0] }is winner ');
      init( );
    }
    else if(symbols[2]==symbols[4]&&symbols[4]==symbols[6]&&symbols[2]!=''){
      print ('${symbols[2] }is winner ');
      init( );
    }
    else if( counter==9){
      init();
      print ('no winner');
    }
    setState(() {});

  }
  void init( ) {

    if(counter !=9 ){
      if(isX==true) {
        scoreX++ ;
      }else{
        scoreO++ ;
      }

      if (isX==true){
        symbols[counter]=="X";
      }else{
        symbols[counter]=="O";
      }
    }
    symbols=['','','','','','','','',''];
    counter=0 ;
    setState(() {  });
  }



}

///row1
///row2
///row3
///
///column1
///column2
///column3
///  + 2 if

///  isX= true
///  isX = false
///  isX =true