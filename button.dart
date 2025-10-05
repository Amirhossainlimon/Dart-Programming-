import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},child: Text("Submit"),),
        
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},child: Text("Submit"),),
            SizedBox(height: 50),
        
           //An OutlinedButton can also be wrapped with a SizedBox in the same way.
        OutlinedButton(onPressed: (){}, child: Text('Outline')), 
             
        SizedBox(height: 50),
        
        TextButton(onPressed: (){
          print("Read More");}, child: Text("Read more")),
            SizedBox(height: 20),
            
            Icon(Icons.phone,size:50, color:Colors.blue,),
        
            IconButton(onPressed:(){}, icon: Icon(Icons.delete,size:50, color:Colors.red,) ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('Single tap');
              },
              onDoubleTap: () {
                print('Double click');
              },
              onLongPress: () {
                print('long press');
              },
              child: Text('This is test text'),
            )





          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Add button pressed');
            },
            child: Icon(Icons.add),
          ),

          SizedBox(height: 15),

          FloatingActionButton(
            onPressed: () {
              print('Add image button pressed');
            },
            child: Icon(Icons.add_a_photo_outlined),
          ),
        ],
      ),

    );
  }
}
