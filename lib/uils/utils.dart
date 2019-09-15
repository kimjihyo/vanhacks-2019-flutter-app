import 'package:mobile/constants.dart';

class Utils {
  static Map<String, dynamic> getDogInfo(int id) {
    List dogs = [
      {
        'id': 0,
        'dogName': 'Coco',
        'age': 1,
        'breed': 'Hell Hound',
        'imgUrl': kSampleDogImages[0],
        'sex': 'Male'
      },
            {
        'id': 1,
        'dogName': 'Brian',
        'age': 1,
        'breed': 'Hell Hound',
        'imgUrl': kSampleDogImages[1],
        'sex': 'Male'
      },
      {
        'id': 2,
        'dogName': 'Jaji',
        'age': 1,
        'breed': 'Hell Hound',
        'imgUrl': kSampleDogImages[2],
        'sex': 'Male'
      },
      {
        'id': 3,
        'dogName': 'Wayne',
        'age': 1,
        'breed': 'Hell Hound',
        'imgUrl': kSampleDogImages[3],
        'sex': 'Male'
      },
    ];
    return dogs[id];
  }
}
