
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            //color: Colors.lightBlueAccent,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: FractionallySizedBox(
              widthFactor: .9,
              heightFactor: .9,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color:Colors.green),
                    shape: BoxShape.circle,
                    //color: Colors.redAccent,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/023/241/164/original/cat-ai-generated-png.png',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        ),
        Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Nice Cat',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cats, elegant and independent, captivate with their grace. '
                        'Their soft fur, mysterious eyes, and playful antics bring joy',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
                      itemBuilder: (context, index) => FractionallySizedBox(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Container(
                          // color: Colors.grey,
                          height: MediaQuery.sizeOf(context).height,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(image: NetworkImage('https://storage.googleapis.com/pai-images/21c7d238d87041a6baf1526ae7f17d5e.jpeg'),fit: BoxFit.cover)
                          ),
                        ),
                      ),itemCount: 9,
                    ),
                  ),

                ],
              ),
            )),
      ],
    );
  }
}
