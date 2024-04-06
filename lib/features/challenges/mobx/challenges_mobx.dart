
import 'package:mobx/mobx.dart';


part 'challenges_mobx.g.dart';


class  ChallengesMobx = _ChallengesMobx with _$ChallengesMobx;


abstract class _ChallengesMobx with Store
{
  @observable
  int currentIndex = 1;

  @action
  void changeCurrentIndex(int index)
  {
    currentIndex = index;
  }

  
}

