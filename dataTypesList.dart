void main() {
  //List easy darajada:

  /**1. Listdagi barcha elementlarni ekranga chiqar.
  List<int> nums = [1, 2, 3, 4, 5]; */

  /////////////////////////////////////////
  List<int> nums1 = [1, 2, 3, 4, 5];

  for (int e in nums1) {
    print(e);
  }
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ///////////////////////////////////////
  /**2. Listga yangi element qo‘sh.
   add() metodidan foydalan. */
  List nums2 = [1, 2, 3, 4, 5];
  nums2.add('Fatima');

  print(nums2);
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  //////////////////////////////////////
  /**3. List uzunligini chiqar.
  length xossasidan foydalan. */

  List nums3 = nums2;
  print('Listning uzunligi: ${nums3.length}');
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////////
  /**4. Listdagi ikkinchi elementni chiqar.
  list[1] bilan kirib olish. */
  print('List=>$nums3');
  print('Listdagi ikkinchi element=>${nums3[1]}');
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  //////////////////////////////////////
  /**5. Listni bo‘shligiga tekshir.
  isEmpty yoki isNotEmpty bilan. */
  nums3.clear();
  var check = nums3.isEmpty ? 'List bo\'sh' : 'List bo\'sh emas';
  print(check);
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  //////////////////////////////////////
  /**6.Listdagi eng kichik elementni top.
 reduce() yoki min() funksiyasi. */

  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  int minNum = nums.reduce((a, b) => a < b ? a : b);

  print(minNum);
  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////

  //Medium
  /**1. Listdagi juft sonlarni ajratib chiqar.
  where() yoki for bilan filter qil. */

  List<int> sonlar = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  var juft = sonlar.where((son) => son % 2 == 0);
  print('List=>$sonlar');
  print('Juft sonlar=>$juft');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////

  /**2. Listdagi sonlarning yig‘indisini hisobla.
  reduce((a, b) => a + b) yoki for orqali. */

  List<int> sonlar1 = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  var sum = sonlar1.reduce((a, b) => a + b);
  print('List=>$sonlar1');
  print('List ichidagi elementlar yig\'indisi=>$sum');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**3. Listdagi har bir sonni 2 ga ko‘paytirib, yangi list yarat.
   map() metodidan foydalan. */
  List<int> sonlar2 = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  var kvadrat = sonlar2.map((n) => n * 2).toList();
  print('List=>$sonlar2');
  print('Natija==>$kvadrat');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////

  /**4. Listni teskari tartibda chiqar.
  reversed va toList() birga ishlatiladi. */

  List<int> sonlar3 = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  print('List=>$sonlar3');
  print('Natija==>${sonlar3.reversed.toList()}');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**5. Listdagi elementlarni alfavit bo‘yicha sarala.
  sort() metodini ishlat. */

  List<int> sonlar4 = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  sonlar4.sort();
  print('List=>$sonlar4');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**6. Listdagi barcha elementlarni bosh harfi bilan chiqar.
  toUpperCase() + map(). */
  List<String> mevalar = ['olma', 'o\'rik', 'anor', 'banan', 'shaftoli'];
  var kattaHarf = mevalar.map((n) => n.toUpperCase());
  print(kattaHarf);
  for (String e in kattaHarf) {
    print(e);
  }

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  //HARD

  /**1. Listdagi takroriy elementlarni olib tashla (unikal holat).
  toSet().toList() yordamida. */

  List names = ['Fatima', 'Guli', 'Guli', 'Sevinch', 'Fatima'];
  var namesTrue = names.toSet().toList();
  print(namesTrue);

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**2. List<List<int>> tuzib, har bir ichki listning o‘rtachasini chiqar.
   Nested loop yoki map bilan hisoblash. */
  List lisList = [
    [10, 20, 30],
    [5, 15, 25, 35],
    [100, 200],
  ];

  for (var i in lisList) {
    int sum = 0;
    for (int j in i) {
      sum += j;
    }
    print(' $i-listning o\'rtacha qiymati=>${sum / i.length}');
  }

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**3. String List ichidan uzunligi 5 dan katta so‘zlarni chiqar.
  list.where((s) => s.length > 5) */

  List<String> words2 = ['flutter', 'dart', 'mobile', 'development', 'app'];
  var word5 = words2.where((s) => s.length > 5).toList();
  print(word5);

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /**4. List<int> ichidagi eng katta 3 ta sonni top.
  sort() + take(3).toList() ishlatiladi. */

  List<int> sonl = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  sonl.sort();
  var bigNums = sonl.reversed.take(3).toList();

  print('$sonl listi ichidagi eng katta sonlar=>$bigNums');

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////
  /*  5. List elementlarining indeksini qo‘shib chiqar.
asMap() yoki for (int i = 0; i < list.length; i++).*/

  List<int> sonlarr = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98];
  var asmAp = sonlarr.asMap();
  print(asmAp);

  print('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  ////////////////////////////////////

  /* 6. Listdagi elementlardan faqat tub sonlarni chiqaruvchi funksiya yoz.*/

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  List<int> sonlaR = [12, 4, 4, 32, 1, 5, 6, 8, 78, 98, 7, 11];
  var tubSonlar = sonlaR.where((e) => isPrime(e)).toList();
  print('tub sonlar => $tubSonlar');
}
