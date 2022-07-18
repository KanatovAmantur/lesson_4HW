import 'package:lesson_4/lesson_4.dart' as lesson_4;
import 'package:test/test.dart';

void main() {
// 1) Дан массив с числами [1, 7, 12, 3, 56, 2, 87, 34, 54]. Выведите в конслоли превый, пятый и последний элемент списка.
  List a = [1, 7, 12, 3, 56, 2, 87, 34, 54];
  print(a.first);
  print(a[4]);
  print(a.last);

//2) Даны два массива с числами [3, 12, 43, 1, 25, 6, 5, 7] и [55, 11, 23, 56, 78, 1, 9]. Объедените данные массивы и выведите в консоли,
  List b = [3, 12, 43, 1, 25, 6, 5, 7];
  List c = [55, 11, 23, 56, 78, 1, 9];
  b.addAll(c);
  print(b);

//3) Дан массив ['a','d','F','l','u','t','t','e','R','y','3','b','h','j'], из данного массива необходимо вывести в консоли массив ['F','l','u','t','t','e','R']
  List d = [
    'a',
    'd',
    'F',
    'l',
    'u',
    't',
    't',
    'e',
    'R',
    'y',
    '3',
    'b',
    'h',
    'j'
  ];
  print(d.sublist(2, 9));
//4) выведите true если массивы слодержит цифру 3 [1, 2, 3, 4, 5, 6, 7], также покажите первый и последний элемент массива и его длину
  List e = [1, 2, 3, 4, 5, 6, 7];
  print(e.first);
  print(e.last);
  print(e.length);

//У вас есть список со значениями = [601 123, 2, "dart", 45, 95, "dart24", 1];
//Попробуйте определить содержит ли список такие элементы как:
//1 – ‘dart’;
//2 – 951;
//Вы должны получить принты для задач:
//1 – true
//2 – false
//3 - если содержится и dart, и 951 то получить резултать true
  List f = [601, 123, 2, "dart", 45, 95, "dart24", 1];
// 1):
  var a1 = f.contains("dart");
  print(a1);
//  2):
  var a2 = f.contains(951);
  print(a2);
// 3)
  bool isCountainsNumber = false;
  bool isCountainsText = false;
  for (var element in f) {
    if (element == 951) {
      isCountainsNumber = true;
    } else if (element == 'dart') {
      isCountainsText = true;
    }
  }
  if (isCountainsNumber == true && isCountainsText == true) {
    print('true');
  } else {
    print(false);
  }

//У вас есть список со значениями = [‘post’, 1, 0, ‘flutter’];
//И переменная String myDart = ‘Flutter’;
//Попробуйте определить содержит ли список значение переменной myDart (Именно с большой буквы).
//Вы должны получить print со значением true;
  List g = ['post', 1, 0, 'flutter'];
  String myDart = 'Flutter';
  var a4 = myDart.contains(myDart);
  print(a4);
//У вас есть список со значениями [“I”, “Started", "Learn", "Flutter", "Since", "April"];
//И переменная String myFlutter = ‘’;
//Задача: Объединить все элементы массива в одну строку и разделить каждое слово символом ‘*’ и сделать принт перменной myFlutter;
//Print(myFlutter);
//В консоли вы должны получить:
//I * Started * Learn * Flutter * Since * April
  List h = ["I", "Started", "Learn", "Flutter", "Since", "April"];
  String myFlutter = "*";
  print(h.join(myFlutter));

//У вас есть массив со значением = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
//Ваша задача провести сортировку массива, чтобы все элементы начинались по возрастающей. Вы должны получить в консоли:
//[0, 1, 2, 3, 3, 5, 7, 9, 9, 10, 11, 15, 195, 202]
  List ex = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  ex.sort(((a, b) => a.compareTo(b)));
  print(ex);
}
