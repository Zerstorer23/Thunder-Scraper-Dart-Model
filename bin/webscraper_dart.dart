
import 'scraper.dart';

void main() async {

  Scraper sc = Scraper();
  bool s= await sc.get('https://thunderskill.com/en/stat/Levent_1011011/vehicles/a');
  print(s.toString());
}
