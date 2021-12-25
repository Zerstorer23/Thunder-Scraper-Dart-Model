import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class Scraper{
  String user_id = "Levent_1011011";
  Future<bool> extractData() async {
    // Getting the response from the targeted url
    String url = 'https://thunderskill.com/en/stat/'+user_id+'/vehicles/a';
    print(url);
    final response = await http.Client().get(Uri.parse(url));
    // Status Code 200 means response has been received successfully
    print(response.statusCode);
    if (response.statusCode == 200) {
      // Getting the html document from the response
      var document = parser.parse(response.body);
      var elements= document.children[0].;
      for(var elem in elements){
        print(elem.outerHtml);
        return true;
      }
    } else {
      return false;
    }
    return true;
  }
  Future<bool> get(String url) async {
    // Getting the response from the targeted url
    print(url);
    final response = await http.Client().get(Uri.parse(url));
    // Status Code 200 means response has been received successfully
    print(response.statusCode);
    if (response.statusCode == 200) {
      // Getting the html document from the response
      print(response.body);
      var document = parser.parse(response.body);
      print(document.toString());
      return true;

    } else {
      return false;
    }
  }
}