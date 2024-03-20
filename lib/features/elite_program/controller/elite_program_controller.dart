import '../model/elite_model.dart';

class EliteProgramController
{
  List<EliteModel> lstElite = [];


  void loadElitePrograms()
  {
    for(int i=0;i<20;i++)
    {
      lstElite.add(EliteModel(title:  "Elite $i",
      clickUrl:  "This is Elite Program $i",
      imageUrl:  "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"));
    
    }
  }
}