import 'package:spotify_app/models/category.dart';

class CategoryOperations{
  CategoryOperations._()   {}
  static List<Category> getCategories(){
          return <Category>[
            Category('Top Songs', 'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
            Category('MJ Songs', 'https://is1-ssl.mzstatic.com/image/thumb/Purple71/v4/d1/ba/85/d1ba8582-972e-7e02-6f3b-cc47adfc055f/source/256x256bb.jpg'),
            Category('Udit Songs', 'data:image/jpeg;base64,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'),

          ];
     }
}