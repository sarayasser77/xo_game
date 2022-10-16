import 'package:flutter/material.dart';
import 'xo_game.dart';
class login extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 late String PLAYER1;
  late String PLAYER2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Login',
                  style: TextStyle(fontSize: 30, color: Colors.blue),),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'PLAYER1',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)

                  ),
                  onChanged: ( value) {
                    PLAYER1 = value;
                    print(PLAYER1.toString());
                  },

                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter player1';
                    }
                    else {
                      return null;
                    }
                  })
              ,
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'PLAYER2',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)

                  ),
                  onChanged: (value) {
                    PLAYER2 = value;
                    print(PLAYER2.toString());
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter player2';
                    }
                    else {
                      return null;
                    }
                  }
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()==true) {
                    print('Test ');
              Navigator.push(context,
                  MaterialPageRoute(builder:(context){
                    return XoGame (PLAYER1,PLAYER2);
                  }

    )
);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: double.infinity,

                  alignment: Alignment.center,
                  child: Text('GO'
                    , style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),


                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}