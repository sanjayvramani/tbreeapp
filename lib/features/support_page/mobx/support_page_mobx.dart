
import 'package:mobx/mobx.dart';


part 'support_page_mobx.g.dart';


class  SupportPageMobx = _SupportPageMobx with _$SupportPageMobx;


abstract class _SupportPageMobx with Store
{
  @observable
  int supportsectionindex = 0;
}