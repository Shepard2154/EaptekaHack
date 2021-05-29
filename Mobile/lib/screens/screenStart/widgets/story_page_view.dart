import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:eapteka/screens/buyWay/catalog.dart';

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
       GestureDetector(
            
            onDoubleTap: () {
                   
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenCatalog()));
                       

            },
            child:
      StoryView(
        storyItems: [
         

           StoryItem.pageImage(
            url:
                recomendedMainUrl[actionRecomended],
            
           // imageFit: BoxFit.fitHeight,
            controller: storyController,
          ),
         
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
       )
    );
  }
}

