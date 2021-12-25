
import 'scraper.dart';

void main() async {

  Scraper sc = Scraper();
  bool s= await sc.extractData();
  print(s.toString());
}
