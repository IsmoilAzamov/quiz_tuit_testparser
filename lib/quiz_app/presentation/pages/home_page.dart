import 'package:flutter/material.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/testing_page.dart';
import 'package:quiz_tuit/quiz_app/presentation/widgets/question_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Map<String, Map<String,String>> econometrics={
  "0":{
    "0" : "2",
    "1" : "“Ekonometrika” tushunchasiga qaysi ta’rif mos keladi?",
    "2" : "bu iqtisodiy xodisalar va jarayonlar o’zaro bog’liqligining miqdoriy ifodasini o’rganuvchi fan",
    "3" : "bu joy va vaqtning muayyan sharoitida yalpi ijtimoiy-iqtisodiy xodisalar va jarayonlarning miqdoriy tomonini o’rganuvchi fan",
    "4" : "bu tasodifiy xodisalarning umumiy qonuniyatlari va tasodifiy omillarning ta’sirini miqdoriy baxolash usullarini o’rganuvchi fan",
    "5" : "bu iqtisodiyot va matematikaning birlshmasidan hosil bo’lgan fan"
  },
  "1":{
    "0" : "2",
    "1" : "“Ekonometrika” tushunchasiga qaysi ta’rif mos keladi?",
    "2" : "bu iqtisodiy xodisalar va jarayonlar o’zaro bog’liqligining miqdoriy ifodasini o’rganuvchi fan",
    "3" : "bu joy va vaqtning muayyan sharoitida yalpi ijtimoiy-iqtisodiy xodisalar va jarayonlarning miqdoriy tomonini o’rganuvchi fan",
    "4" : "bu tasodifiy xodisalarning umumiy qonuniyatlari va tasodifiy omillarning ta’sirini miqdoriy baxolash usullarini o’rganuvchi fan",
    "5" : "bu iqtisodiyot va matematikaning birlshmasidan hosil bo’lgan fan"
  },

  "2":{
    "0" : "2",
    "1" : "Ekonometrikaning maqsadi nimadan iborat?",
    "2" : "real iqtisodiy ob’ektlarni modellashtirish va miqdoriy taxlil qilish usullarini ishlab chiqish",
    "3" : "iqtisodiy ma’lumotlarni yaqqol ko’rinishda ifodalash",
    "4" : "statistik ma’lumotlarni to’plash va guruxlash usullarini belgilash",
    "5" : "iqtisodiy xodisalarning sifatiy jixatlarini o’rganish"
  },

  "3":{
    "0" : "2",
    "1" : "Modelni tasniflash - bu:",
    "2" : "empirik taxlil qilish maqsadida ekonometrik modellarni tuzish",
    "3" : "tadqiqot№* maqsadini belgilash va iqtisodiy o’zgaruvchi modellarni tanlash",
    "4" : "modelni statistik taxlil qilish va parametrlarining sifatini baxolash",
    "5" : "zarur statistik axborotni to’plash"
  },

  "4":{
    "0" : "2",
    "1" : "Ekonometrikaning qaysi vazifasi modelni parametrlash vazifasi xisoblanadi?",
    "2" : "model parametrlarining va umuman modelning o’zini sifatini tekshirish",
    "3" : "ekonometrik modellashtirish natijalariga ko’ra muayyan iqtisodiy xodisalar uchun prognozni tuzish va tavsiyalarni ishlab chiqish",
    "4" : "modelni tuzish parametrlarini baxolash",
    "5" : "empirik taxlil qilish uchun ekonometrik modellarni tuzish"
  },

  "5":{
    "0" : "2",
    "1" : "Model sifatini aniqlash - bu:",
    "2" : "model parametrlarining va umuman modelning sifatini tekshirish",
    "3" : "iqtisodiy modelning turini aniqlash, uning o’zgaruvchilari o’rtasidagi o’zaro bog’liqlikni matematik shaklda ifodalash",
    "4" : "modelning dastlabki shart-sharoitlari va cheklovlarini aniqlash",
    "5" : "o’rganilayotgan iqtisodiy xodisalarni taxlil qilish"
  },

  "6":{
    "0" : "2",
    "1" : "Quyida sanab o’№*tilgan modellar ichidan bir tenglamali regression modelni tanlang? 1) yetkazib berish xajmidan narx modeli; 2) talab va taklif modeli; 3) trend va mavsumiylik modeli; 4) ishlab chiqarish xajmining ishlab chitsarish omillariga bog’liqligi modeli",
    "2" : "1,4",
    "3" : "2,4",
    "4" : "2, 3",
    "5" : "barchasi"
  },

  "7":{
    "0" : "2",
    "1" : "Turli obyektlar xaqida bir davr (vaqt) uchun olingan ma’lumotlar to’plami qanday nomlanadi?",
    "2" : "makonga ko’ra ma’lumotlar",
    "3" : "vaqtga ko’ra ma’lumotlar",
    "4" : "davriy ma’lumotlar",
    "5" : "o’zgarmas ma’lumotlar"
  },

  "8":{
    "0" : "2",
    "1" : "“Mustaqil o’zgaruvchi” tushunchasining o’xshashini tanlang?",
    "2" : "Omil",
    "3" : "endogen o’zgaruvchi",
    "4" : "Natija",
    "5" : "ekzogen o’zgaruvchi"
  },

  "9":{
    "0" : "2",
    "1" : "Ovqatlanish xarajatlari umumiy miqdorining tasarrufdagi shaxsiy daromadga (x) va oziq-ovqat maxsulotlarining narxiga (r) bog’liqligi modelini ko’rib chiqing: u=a0+a1x+a2r+s. Model sinfini va modelning o’zgaruvchilari turini aniqlang?",
    "2" : "bir tenglamali regression model; endogen o’zgaruvchi - ovqatlanish №*xarajatlari, ekzogen o’zgaruvchi - tasarrufdagi shaxsiy daromad va oziq-ovqat maxsulotlarining narxi",
    "3" : "bir tenglamali regression model; endogen o’zgaruvchi - ovqatlanish xarajatlari, ekzogen o’zgaruvchi - tasarrufdagi shaxsiy daromad, oldindan belgilangan o’zgaruvchi - oziq-ovqat maxsulotlarining narxi",
    "4" : "vaqt qatori modeli; endogen o’zgaruvchi - ovqatlanish xarajatlari, lag o’zgaruvchi - tasarrufdagi shaxsiy daromad va oziq-ovqat maxsulotlarining narxi",
    "5" : "To’g’ri javob keltirilmagan"
  },

  "10":{
    "0" : "2",
    "1" : "Ekonometrik modellashtirish bosqichlarining to’g’ri ketma-ketligini toping?",
    "2" : "masalani qo’yish, aprior, parametrlash, axborot, identifikatsiyalash, verifikatsiyalash",
    "3" : "masalani qo’yish, aprior, axborot, parametrlash, identifikatsiyalash, verifikatsiyalash",
    "4" : "axborot, masalani qo’yish, aprior, parametrlash, verifikatsiyalash, identifikatsiyalash",
    "5" : "ma’lumotlani to’plash,"
  },

  "11":{
    "0" : "2",
    "1" : "Qanday xolatda bog’liqlik korrelyatsion deb aytiladi?",
    "2" : "agar№* omilning har bir qiymatiga natijali belgining ko’plab qiymatlari, ya’ni muayyan statistik taqsimot mos kelsa",
    "3" : "agar omilning har bir qiymatiga natijaviy omilning muayyan tasodifiy qiymati mos kelsa",
    "4" : "agar omilning har bir qiymatiga natijaviy omil qiymatlarining butun bir taqsimoti mos kelsa",
    "5" : "agar omilli belgining har bir qiymatiga natijali belgining muayyan belgilangan qiymati mos kelsa"
  },

  "12":{
    "0" : "2",
    "1" : "Tahliliy ifodaga ko’ra bog’liqlik qanday turlarga bo’linadi?",
    "2" : "Chiziqli va chiziqsiz",
    "3" : "To’gri va teskari",
    "4" : "Egri chiziqli",
    "5" : "Toq va juft"
  },

  "13":{
    "0" : "2",
    "1" : "Regression tahlil nimani aniqlashdan iborat?",
    "2" : "bog’liqlikning taxliliy shaklini, unda natijaviy omilning o’zgarishi bir yoki bir necha omillarning ta’siri bilan shartlangan, natijaviy omilga ta’sir ko’rsatuvchi barcha boshqa omillar ko’pligi esa doimiy va o’rtacha qiymatlar sifatida qabul qilinadi",
    "3" : "ikkita omil o’rtasidagi (juft bog’liqlikda) xamda natijaviy omil bilan omillar ko’pligi o’№*rtasidagi (ko’p omilli bog’liqlikda) bog’liqlikning jipsligini",
    "4" : "ikkita tasodifiy o’zgaruvchi o’zaro ta’sirining statistik o’lchovini",
    "5" : "tartibli o’zgaruvchilar o’rtasidagi statistik bog’liqlik darajasini"
  },

  "14":{
    "0" : "2",
    "1" : "Alohida korrelyatsiya deganda nima tushuniladi?",
    "2" : "boshqa omillar qiymati qat’iy belgilangan hollarda natijaviy omil va bitta omil o’rtasidagi bog’liqlik",
    "3" : "natijaviy omil hamda tadqiqotga kiritilgan ikki yoki undan ko’p omillarning bog’liqlikdagi",
    "4" : "ikkita omil (natijaviy va omillar yoki ikkita omil) o’rtasidagi bog’liqlik",
    "5" : "sifatiy omillar o’rtasidagi bog’liqlik"
  },

  "15":{
    "0" : "2",
    "1" : "Quyidagi qiymatlardan qaysi biri korrelyatsiyaning juft koeffitsiyentini qabul qila olmaydi?",
    "2" : "1,111",
    "3" : "-0,973",
    "4" : "0,005",
    "5" : "0,721"
  },

  "16":{
    "0" : "2",
    "1" : "Korrelyatsiya chiziqli koeffitsiyentining qaysi qiymatida Y va X omillar o’rtasidagi bog’liqlikni jips (kuchli) deb xisoblash mumkin?",
    "2" : "0,657",
    "3" : "-0,975",
    "4" : "-0,111",
    "5" : "0,421"
  },

  "17":{
    "0" : "2",
    "1" : "Agar Y va X omillar o’rtasidagi korrelyatsiya juft koeffitsiyenti 1 ga teng bo’lsa, u nimani anglatadi?",
    "2" : "to’g’ri funksional bog’liqlikning mavjudligi",
    "3" : "bog’liqlikning yo’qligi",
    "4" : "teskari korrelyatsion bog’liqlikning mavjudligi",
    "5" : "teskari funksional bog’liqlikning mavjudligi"
  },

  "18":{
    "0" : "2",
    "1" : "Regressiya parametrlarining baholari (eng kichik kvadratlar usuli baholarining xususiyatlari) qanday bo’lishi kerak?",
    "2" : "siljimagan",
    "3" : "geteroskedatik",
    "4" : "samarali",
    "5" : "asoslangan"
  },

  "19":{
    "0" : "2",
    "1" : "Chiziqli juft regressiya tenglamasida a1 parametr nimani anglatadi?",
    "2" : "agar x o’zgaruvchi bir o’lchov birligiga oshirilsa, u natijaviy omilni o’rtacha qancha miqdorga o’zgarishini",
    "3" : "natijaviy omil hisobga olinmagan (tadqiqot uchun ajratilmagan) omillarning o’rtacha holatga keltirilgan ta’sirini",
    "4" : "omil 1 foizga o’zgarganda natijaviy omilning o’rtacha o’zgarishini",
    "5" : "u natijaviy omil belgi variatsiyasining qanday ulushi modelda hisobga olinganligini va u x o’zgaruv№*chining ta’siri bilan shartlanganligini"
  },

  "20":{
    "0" : "2",
    "1" : "Regressiya tenglamasi yx = 2,02 ± 0,78x ko’rinishga ega. Agar x o’zining bir o’lchov birligiga oshirilsa, u o’rtacha o’zining qancha o’lchov birligiga o’zgaradi",
    "2" : "0,78 ga oshadi",
    "3" : "2,02 ga oshadi",
    "4" : "2,80 ga oshadi",
    "5" : "o’zgarmaydi"
  },

  "21":{
    "0" : "2",
    "1" : "Regressiya tenglamasining ahamiyatliligini baholash uchun qanday mezondan foydalaniladi?",
    "2" : "Fisherning F-mezoni",
    "3" : "Styudentning t mezoni",
    "4" : "Pirson mezoni",
    "5" : "Darbin-Uotsonning J-mezoni"
  },

  "22":{
    "0" : "2",
    "1" : "Omil 1 foizga o’zgarganda natijaviy omilning o’rtacha o’zgarishini qanday koeffitsiyent belgilab beradi?",
    "2" : "elastiklik koeffitsiyenti",
    "3" : "regressiya koeffitsiyenti",
    "4" : "determinatsiya koeffitsiyenti",
    "5" : "korrelyatsiya koeffitsiyenti"
  },

  "23":{
    "0" : "2",
    "1" : "Xususiy korrelyatsiya koeffitsiyenti nimani baholaydi?",
    "2" : "qolgan omillarning qat’iy belgilangan qiymatida ikkita o’zgaruvchi o’rtasidagi bog’liqlikning jipsligini baholaydi",
    "3" : "ikkita o’zgaruvch№*i o’rtasidagi bog’liqlikning jipsligini baholaydi",
    "4" : "uchta o’zgaruvchi o’rtasidagi bog’liqlikning jipsligini baholaydi",
    "5" : "barcha o’zgaruvchilar o’rtasidagi bog’liqlikning jipsligini baholaydi"
  },

  "24":{
    "0" : "2",
    "1" : "x argument (erkin o’zgaruvchi) 1 foizga oshirilganda u natijaviy omil o’zgarishining foizini o’rtacha darajada qaysi koeffitsiyent ko’rsatadi?",
    "2" : "determinatsiya koeffitsiyenti",
    "3" : "regressiya koeffitsiyenti",
    "4" : "elastiklik koeffitsiyenti",
    "5" : "beta-koeffitsiyent"
  },

  "25":{
    "0" : "2",
    "1" : "a0 chiziqli trend parametrining to’g’ri tavsifini ko’rsating",
    "2" : "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
    "3" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
    "4" : "tahlil qilinayotgan xodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
    "5" : "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
  },

  "26":{
    "0" : "2",
    "1" : "ekspon№*entsial trend parametrining to’g’ri tavsifini ko’rsating",
    "2" : "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati",
    "3" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
    "4" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
    "5" : "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi"
  },

  "27":{
    "0" : "2",
    "1" : "a2 parabolik trend koeffitsiyentini nima tavsiflaydi?",
    "2" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
    "3" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
    "4" : "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
    "5" : "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
  },

  "28":{
    "0" : "2",
    "1" : "a1 chiziqli trend koeffitsiyentini nima tavsiflaydi?",
    "2" : "tahlil qilinayot№*gan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
    "3" : "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
    "4" : "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
    "5" : "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
  },

  "29":{
    "0" : "2",
    "1" : "Trendning tenglashtirilgan darajalaridan og’ishlarni korrelyatsiyalash nima uchun o’tkaziladi?",
    "2" : "xaqiqiy darajalarning trendni aks ettiruvchi tenglashtirilgan darajalardan og’ishlari o’rtasidagi bog’liqlikning jipsligini aniqlash uchun",
    "3" : "avtokorrelyatsiya mavjud bo’lmagan xollarda dinamika qatorlari o’rtasidagi bog’liqlikning jipsligini aniqlash uchun",
    "4" : "avtokorrelyatsiyaning ta’sirini istisno etish uchun",
    "5" : "umumiy tendensiya belgisining o’zgaruvchiligiga ta’sirini istisno etish uchun"
  },

  "30":{
    "0" : "2",
    "1" : "Qanday holatda kointegratsiya xodisasi ishtirok etadi?",
    "2" : "agar vaqt qatori uz№*oq davom etadigan vaqt oralig’ida doimiy dispersiyaga ega bo’lsa",
    "3" : "agar vaqt qatorida taxlil etilayotgan ko’rsatkichning doimiy o’rtacha sur’ati ishtirok etsa",
    "4" : "agar vaqt qatorida ikki va undan ortiq darajalar tendensiyasi mos kelsa (yoki qarama-qarshi yo’nalishga ega bo’lsa)",
    "5" : "agar vaqt qatorida vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati ishtirok etsa"
  },

  "31":{
    "0" : "2",
    "1" : "Bog’langan vaqt qatorlarining darajalari o’rtasidagi bog’liqlikni o’rganish qanday usul yordamida o’tkaziladi?",
    "2" : "ketma-ket ayirmalarni korrelyatsiyalash",
    "3" : "dinamika qatori darajalarini korrelyatsiyalash",
    "4" : "xaqiqiy darajalarning trenddan og’ishlarini korrelyatsiyalash",
    "5" : "avtoregression o’zgartirishlarni korrelyatsiyalash"
  },

  "32":{
    "0" : "2",
    "1" : "Bog’langan qatorlarning to’g’ri ta’rifini ko’rsating?",
    "2" : "natijali belgining bir yoki bir necha omilli belgiga bog’liqligini ko’rsatuvchi",
    "3" : "ikki yoki undan ortiq vaqt qatorining darajalaridagi sabab-oqibatli bog’l№*iqlik bo’lib, ular tendensiyalari va tasodifiy o’zgaruvchining mos kelishida yoki qarama-qarshi yo’nalishga ega bo’lishida o’z ifodasini topadi",
    "4" : "avtokorrelyatsiya koeffitsiyenti qiymatlari lagining kattaligi qiymatlariga bog’liqligi",
    "5" : "vaqt qatori darajalarining dastlabki xolatga nisbatan vaqt lahzalariga siljishi"
  },

  "33":{
    "0" : "2",
    "1" : "O’zgaruvchilarning lag qiymatlari bevosita qaysi modelga kiritilgan?",
    "2" : "avtoregressiya",
    "3" : "adaptiv kutishlar",
    "4" : "taqsimlangan lagli",
    "5" : "to’liqsiz (qisman) tuzatishlar kiritish"
  },

  "34":{
    "0" : "2",
    "1" : "Avtoregressiya modellari shu bilan tavsiflanadiki, ular:",
    "2" : "omilli o’zgaruvchilar sifatida natijaviy omilning lag qiymatlariga ega",
    "3" : "(t+1) davrda omilning istalgan qiymatini hisobga oladi",
    "4" : "(t+1) davrda natijaviy omilning istalgan (kutilayotgan) qiymatini hisobga oladi",
    "5" : "(t–1) davrda natijaviy omilning istalgan (kutilayotgan) qiymatini hisobga oladi"
  },

  "35":{
    "0" : "2",
    "1" : "Natijaviy omil omilning kutilayotgan qiymatlariga bog’liq",
    "2" : "adap№*tiv kutishlar modelining uzoq muddatli funksiyasida",
    "3" : "adaptiv kutishlar modelining qisqa muddatli funksiyasida",
    "4" : "qisman tuzatishlar kiritish modelining uzoq muddatli funksiyasida",
    "5" : "qisman tuzatishlar kiritish modelining qisqa muddatli funksiyasida"
  },

  "36":{
    "0" : "2",
    "1" : "'Ishlab chiqarishning uch omili g'oyasini ilgari surgan iqtisodchi olim - ...",
    "2" : "J.B.Sey",
    "3" : "J.M.Keyns",
    "4" : "J.B.Klark",
    "5" : "D.Rikardo"
  },

  "37":{
    "0" : "2",
    "1" : "“Ish bilan bandlik, foiz va pulning umumiy nazariyasi” nomli kitobning muallifi kim?",
    "2" : "Jon Meynard Keyns",
    "3" : "Adam Smit",
    "4" : "Antuan Monkreten",
    "5" : "Fransua Kene"
  },

  "38":{
    "0" : "2",
    "1" : "40-60 yil mobaynida takrorlanib turadigan sikl qanday nomlanadi?",
    "2" : "Kondratev sikli",
    "3" : "Kitchin sikli",
    "4" : "Juglar sikli",
    "5" : "Kuznes sikli"
  },

  "39":{
    "0" : "2",
    "1" : "Agar talab elastikligi 1 dan katta bo'lsa, bunday elastiklik nima deb normlanadi?",
    "2" : "Elastic",
    "3" : "noelastik",
    "4" : "birlik elastik",
    "5" : "o'zgarmas"
  },

  "40":{
    "0" : "2",
    "1" : "Doimo takrorlanib turadigan, iqtisodiy jarayonlar va real hodisalarning ayrim tomonl№*arini ifoda etuvchi ilmiy-nazariy tushuncha nima deb ataladi?",
    "2" : "iqtisodiy kategoriya",
    "3" : "induktsiya",
    "4" : "abstraktsiya",
    "5" : "deduktsiya"
  },

  "41":{
    "0" : "2",
    "1" : "Iqtisodiy inqiroz davrida iqtisodiyotning qaysi sohalari kamroq yo'qotishga uchraydi?",
    "2" : "qisqa muddatli foydalaniladigan iste'molchilik tovarlari ishlab chiqaruvchi tarmoqlari",
    "3" : "uzoq muddatli foydalaniladigan iste'molchilik tovarlari ishlab chiqaruvchi sanoat tarmoqlari",
    "4" : "investision tovar ishlab chiqaruvchi sanoat tarmoqlari",
    "5" : "og'ir sanoat"
  },

  "42":{
    "0" : "2",
    "1" : "Iqtisodiy o'sish sur'ati bilan bog'liq holda YaIMni necha yilda 2 barobarga ortishini iqtisodchilar tomonidan qo'llaniluvchi qoidani nomini toping.",
    "2" : "70 miqdor qoidasi",
    "3" : "90 sifat qoidasi",
    "4" : "50 talab qoidasi",
    "5" : "bunday qoida mavjud emas"
  },

  "43":{
    "0" : "2",
    "1" : "Iqtisodiy o'sishning mazmuni ifodalab bering",
    "2" : "real yalpi ichki mahsulot hajmining mutloq va aholi jon boshiga nisbatan o'sib borishi",
    "3" : "yalpi ichki mahsulot hajmining aholi jon boshiga kamayib borishi",
    "4" : "yalpi investisiyalarning ko№*'payishi",
    "5" : "byudjet daromadi hajmining ko'payishi"
  },

  "44":{
    "0" : "2",
    "1" : "Insonlarning iqtisodiy faoliyat turlari yoki ishlab chiqarish natijalari bo'yicha o'zaro almashish jarayoni nima deb ataladi?",
    "2" : "ayirboshlash jarayoni",
    "3" : "taqsimlash",
    "4" : "ishlatish",
    "5" : "iste'mol"
  },

  "45":{
    "0" : "2",
    "1" : "Ishlab chiqarish xarajatlari - bu…",
    "2" : "tovar va xizmatlarni ishlab chiqarish va iste'molchilarga yetkazib berishgacha qilinadigan barcha sarflar",
    "3" : "yalpi pul tushumidan barcha xarajatlar chiqarib tashlangandan keyin qolgan qismi",
    "4" : "ko'payib boruvchi ehtiyojlarni qondiruvchi manba",
    "5" : "asosiy kapitalni kengaytirish va uni takror ishlab chiqarishga qilinadigan sarflar"
  },

  "46":{
    "0" : "2",
    "1" : "Ishlab chiqarishning avvalgi texnikaviy asosi saqlanib qolgan holda ishlab chiqarish omillari miqdorining ko'payishi tufayli … iqtisodiy o'sishga erishiladi ?",
    "2" : "Ekstensiv",
    "3" : "Intensiv",
    "4" : "Mukammal",
    "5" : "Nomukammal"
  },

  "47":{
    "0" : "2",
    "1" : "Ishlab chiqarishning har bir darajasida doimiy va o'zgaruvchi xarajatlar yig'indisi qan№*day xarajatlarni tashkil qiladi?",
    "2" : "umumiy xarajatlarni",
    "3" : "xususiy xarajatlarni",
    "4" : "ob'ektiv xarajatlarni",
    "5" : "sub'ektiv xarajatlarni"
  },

  "48":{
    "0" : "2",
    "1" : "Ishchi kuchi 12,5 mln. kishini, ishsizlar 1,3 mln. kishini tashkil qilsa, ishsizlik darajasi necha foizni tashkil qiladi?",
    "2" : "10,4 foiz",
    "3" : "13,8 foiz",
    "4" : "11,2 foiz",
    "5" : "9,6 foiz"
  },

  "49":{
    "0" : "2",
    "1" : "K.Menger, F.Vizer, Bem-Baverk kabi Avstriya iqtisodiy maktabining namoyandalari qaysi iqtisodiy ta'limot vakillari bo'lib hisoblanishadi?",
    "2" : "marjinalizm ta'limoti",
    "3" : "fiziokratlar",
    "4" : "liberalizm",
    "5" : "merkantilizm"
  },

  "50":{
    "0" : "2",
    "1" : "Qaysi omil aholi iste'moli va pul jamg'armalari darajasini belgilaydi?",
    "2" : "milliy daromad",
    "3" : "soliqlar darajasi",
    "4" : "foiz stavkasi",
    "5" : "ish haqi"
  },

  "51":{
    "0" : "2",
    "1" : "Qimmatli qog'ozlar oldi-sotdisi bo'yicha rasmiy jihatdan tashkil etilgan va muntazam amal qiluvchi bozor shakli birjaning qanday turiga kiradi?",
    "2" : "fond birjasi",
    "3" : "valyuta birjasi",
    "4" : "mehnat birjasi",
    "5" : "tovar birjasi"
  },

  "52":{
    "0" : "2",
    "1" : "Qishloq xo'jaligini qo'llab q№*uvvatlash ta'limotchilari",
    "2" : "Fiziokratlar",
    "3" : "merkantilistlar",
    "4" : "klassiklar",
    "5" : "keynschilar"
  },

  "53":{
    "0" : "2",
    "1" : "Laffer egri chizig'i:",
    "2" : "davlat byudjeti daromadlari va soliq stavkasi o'rtasidagi bog'liqlikni ifodalaydi",
    "3" : "ishsizlik va inflyasiya o'rtasidagi teskari bog'lanishni ifodalaydi",
    "4" : "baho bilan taklif o'rtasidagi to'g'ri bog'lanishni ifodalaydi",
    "5" : "baho bilan taklif o'rtasidagi teskari bog'lanishni ifodalaydi"
  },

  "54":{
    "0" : "2",
    "1" : "Tarkibiy o'zgarishlar deganida nimani tushunasiz?",
    "2" : "Iqtisodiyot tarmoqlari ichida va tarmoqlararo nisbatlarni sifat jihatidan bir-biriga yaqinlashtirish",
    "3" : "Ijtimoiy islohotlar o'tkazish",
    "4" : "Moliyaviy islohotlar o'tkazish",
    "5" : "Iqtisodiy islohotlar o'tkazish"
  },

  "55":{
    "0" : "2",
    "1" : "Foyda nima?",
    "2" : "yalpi daromad minus yalpi xarajatlar",
    "3" : "yalpi daromad minus o'zgaruvchan xarajatlar",
    "4" : "yalpi daromad minus doimiy xarajatlar",
    "5" : "yalpi daromadning narxga nisbati"
  },

  "56":{
    "0" : "2",
    "1" : "Foyda normasi nima?",
    "2" : "foyda massasining ishlab chiqarish xarajatlariga nisbatining foizda№* ifodalanishi",
    "3" : "doimiy xarajatlar minus o'zgaruvchan xarajatlar",
    "4" : "ishlab chiqarilgan mahsulot umumiy miqdorining bir birlik mahsulot narxiga nisbati",
    "5" : "yalpi daromad minus yalpi xarajatlar"
  },

  "57":{
    "0" : "2",
    "1" : "Avtokorrelyatsiya mavjudligini tekshirish uchun quyidagi mezonlardan qaysi biri qo'llanadi?",
    "2" : "DW mezoni",
    "3" : "Goldfelda-Kvandt testi",
    "4" : "Spirmen testi",
    "5" : "Gleyzer testi"
  },

  "58":{
    "0" : "2",
    "1" : "Agar biror bir mahsulotga taklifning baho bo'yicha elastikligi 1,2 ga teng bo'lsa:",
    "2" : "Ushbu mahsulot elastik bo'ladi",
    "3" : "Ushbu mahsulot noelastik bo'ladi",
    "4" : "Ushbu mahsulot birga teng elastik bo'ladi",
    "5" : "Ushbu mahsulotni kamroq ishlab chiqarish kerak"
  },

  "59":{
    "0" : "2",
    "1" : "Agar mamlakat miqyosida umumiy baholar o'sishi kuzatilsa:",
    "2" : "Inflyatsiya bo'ladi",
    "3" : "Ishsizlik bo'ladi",
    "4" : "Ishsizlik, inflyatsiya,",
    "5" : "Ishsizlik, iqtisodiy o'sish"
  },

  "60":{
    "0" : "2",
    "1" : "Asosiy fondlar bo'yicha yalpi mahsulotning elastiklik koeffitsiyenti nimani ko'rsatadi?",
    "2" : "Fondlar qiymati bir foizga o'zgarganda, mahsulot ishlab chiqa№*rish qiymati necha foizga o'zgarishini ko'rsatadi",
    "3" : "Fondlar qiymati bir birlikka o'zgarganda, mahsulot ishlab chiqarish qiymati necha foizga o'zgarishini ko'rsatadi",
    "4" : "Fondlar qiymati bir foizga o'zgarganda, mahsulot ishlab chiqarish qiymati o'zgarmasligini ko'rsatadi",
    "5" : "Fondlar qiymati bir birlikka o'zgarganda, mahsulot ishlab chiqarish qiymati necha foizga o'zgarishini ko'rsatadi"
  },

  "61":{
    "0" : "2",
    "1" : "Baho bilan talab o'rtasida bog'lanish",
    "2" : "Talab qonuni deyiladi",
    "3" : "Taklif qonuni deyiladi",
    "4" : "Qiymat qonuni deyiladi",
    "5" : "Elastiklik koyeffitsiyenti qonuni deyiladi"
  },

  "62":{
    "0" : "2",
    "1" : "Vaqtli qatorlarni tekislashda qaysi usullardan foydalaniladi:",
    "2" : "Eng kichik kvadratlar usuli",
    "3" : "O'rtacha sirg'aluvchilar usuli",
    "4" : "Eksponentsial tekislash usuli",
    "5" : "Yuqoridagi barcha usullar"
  },

  "63":{
    "0" : "2",
    "1" : "Makroiqtisodiy jarayonlar – bu:",
    "2" : "Ishsizlik, inflyatsiya, iqtisodiy o'sish",
    "3" : "Korxona foydasi va zarari, moliyaviy natijalari",
    "4" : "Ishsizlik, bankrotlik",
    "5" : "Inflyatsiya, bankrotlik"
  },

  "64":{
    "0" : "2",
    "1" : "Regressiya tenglamasi – bu:",
    "2" : "Natijaviy omil va unga ta'sir etuvchi omillar orasidagi bog'lanishning shakli",
    "3" : "Ta'sir etuvchi omillar orasidagi munosabati",
    "4" : "Asosiy omil va unga ta'sir etuvchi omillar orasidagi bog'lanish zichligi",
    "5" : "Omillar orasidagi munosabatni ko'rsatmaydi"
  },

  "65":{
    "0" : "2",
    "1" : "Ta'sir etuvchi omilning 1 %ga o'zgarishi, natijaviy omilning qanchaga o'zgarishini ko'rsatadi",
    "2" : "elastiklik koeffitsiyenti",
    "3" : "Regressiya koeffitsiyenti",
    "4" : "Student koeffitsiyenti",
    "5" : "Korrelyatsiya koeffitsiyenti"
  },

  "66":{
    "0" : "2",
    "1" : "Ta'sir etuvchi omilning bir birlikka o'zgarishi, natijaviy omilning qanchaga o'zgarishini ko'rsatadi koeffitsiyent",
    "2" : "Regressiya koeffitsiyenti",
    "3" : "Regressiya tenglamasi",
    "4" : "Student koeffitsiyenti",
    "5" : "Korrelyatsiya koeffitsiyenti"
  },

  "67":{
    "0" : "2",
    "1" : "Trend – bu:",
    "2" : "Vaqt bo'yicha qatorni barqaror tendensiyasi bo'lib, ozmi-ko'pmi tasodifiy tebranishlar ta'siridan ozodidr",
    "3" : "Vaqt bo'yicha qatorni barqaror tendensiyasi",
    "4" : "Tenglama",
    "5" : "Vaqtga bog’liq bo’lmagan o’zgarishlar№*ni ifodalaydi"
  },

  "68":{
    "0" : "2",
    "1" : "Trend tiplari:",
    "2" : "To'g'ri chiziqli, parabola, giperbola, logarifmik, eksponentsial",
    "3" : "To'g'ri chiziqli, parabola,",
    "4" : "Chiziqli, aylana tipidagi",
    "5" : "Chiziqli, giperbolik, logarifmik, elliptik"
  },

  "69":{
    "0" : "2",
    "1" : "O'rtacha mehnat unumdorligi ko'rsatadi:",
    "2" : "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi pasayib boradi",
    "3" : "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi o'zgarmaydi",
    "4" : "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi oshadi",
    "5" : "O'rtacha mehnat unumdorligi oshib borganda mehnat harajati pasayib boradi"
  },

  "70":{
    "0" : "2",
    "1" : "Fisher mezoni quyidagini ko'rsatadi:",
    "2" : "Olingan modelning o'rganilayotgan jarayonga mosligini",
    "3" : "Omillar orasidagi bog'lanish zichligini",
    "4" : "Olingan modeldagi koeffitsiyentlarning ahamiyatliligini",
    "5" : "Korrelyatsiya koeffitsiyentining ishonchliligini"
  },

  "71":{
    "0" : "2",
    "1" : "Ekzogen – bu",
    "2" : "Qiymati tashqaridan beriladigan, ta'sir etuvchi X o'zgaruvchilar",
    "3" : "Tizim ichida aniqlanuvchi, bog'liqli№* Y o'zgaruvcghi",
    "4" : "Qiymati tashqaridan beriladigan, o'zgaruvchilar",
    "5" : "Y o'zgaruvcghi"
  },

  "72":{
    "0" : "2",
    "1" : "Ekonometrik model – bu:",
    "2" : "Tenglamalar va tengsizliklar tizimi",
    "3" : "Balansli matritsalar",
    "4" : "Axborotlar tizimi",
    "5" : "Matematik belgilar tizimi"
  },

  "73":{
    "0" : "2",
    "1" : "Ekonometrik modellar iqtisodiy jarayonlarini:",
    "2" : "iqdosotiy va sifat jihatdan o'rganadi",
    "3" : "Sifat jihatdan o'rganadi",
    "4" : "Analitik jihatdan o'rganadi",
    "5" : "Yechimlarning aniqligi jihatidan o’rganadi"
  },

  "74":{
    "0" : "2",
    "1" : "Ekonometrik modellashtirish bosqichlaridan birinchi bosqichni aniqlang:",
    "2" : "Iqtisodiy jarayon har tomonlama nazariy, sifat jihatdan tahlil qilinadi va uning parametrlari, ichki va tashqi informatsion aloqalar, ishlab chiqarish resurslari, rejalashtirish davri kabi ko'rsatkichlar aniqlanadi",
    "3" : "Bosqichda izlanayotgan noma'lum o'zgaruvchilar nima, qanday maqsadni ko'zda tutadi, natija nimalarga olib keladi kabi savollar aniqlangan bo'lishi kerak",
    "4" : "Modellashtirilayotgan jarayonning iqtisodiy-matematik modeli tenglamalari№* va tengsizliklar tizimi shaklida ifodalanadi",
    "5" : "Tuzilgan iqtisodiy-matematik modelning miqdoriy yechimini aniqlaydigan usul tanlanadi"
  },

  "75":{
    "0" : "2",
    "1" : "Ekonometrik modellashtirish bosqichlaridan ikkinchi bosqichni aniqlang:",
    "2" : "Bosqichda izlanayotgan noma'lum o'zgaruvchilar nima, qanday maqsadni ko'zda tutadi, natija nimalarga olib keladi kabi savollar aniqlangan bo'lishi kerak",
    "3" : "Iqtisodiy jarayon har tomonlama nazariy, sifat jihatdan tahlil qilinadi va uning parametrlari, ichki va tashqi informatsion aloqalar, ishlab chiqarish resurslari, rejalashtirish davri kabi ko'rsatkichlar aniqlanadi",
    "4" : "Modellashtirilayotgan jarayonning iqtisodiy-matematik modeli tenglamalari va tengsizliklar tizimi shaklida ifodalanadi",
    "5" : "Tuzilgan iqtisodiy-matematik modelning miqdoriy yechimini aniqlaydigan usul tanlanadi"
  },

  "76":{
    "0" : "2",
    "1" : "Ekonometrik modelning shaklini tanlashda qo'llanadigan usul",
    "2" : "Regression tahlil usuli",
    "3" : "Korrelyatsion tahlil usuli",
    "4" : "Ekstrapolyatsiya usuli",
    "5" : "Prognoz usuli"
  },

  "78":{
    "0" : "2",
    "1" : "Vaqtli qatorlar tahlili",
    "2" : "Indeksli tahlil",
    "3" : "Klasterli tahlil",
    "4" : "SWOT tahlili",
    "5" : ""
  },

  "79":{
    "0" : "2",
    "1" : "Ekonometrika– bu:",
    "2" : "Matematika, iqtisodiyot va statistika sintezi",
    "3" : "Matematika va iqtisodiyot sintezi",
    "4" : "Matematika va statistika sintezi",
    "5" : "Ehtimollar nazariyasi va iqtisodiyot sintezi"
  },

  "80":{
    "0" : "2",
    "1" : "Ekonometrikaning asosiy maqsadi:",
    "2" : "Omillararo bog'lanishlarni, o'zgarish qonuniyatlarni va tendentsiyalarni o'rganish",
    "3" : "Tarmoqlararo modellarni o'rganish",
    "4" : "Optimallashtirish masalalarni o'rganish",
    "5" : "Ehtimollarni o'rganish"
  },

  "81":{
    "0" : "2",
    "1" : "Ekonometrikaning vazifalari:",
    "2" : "Modelni identsifikatsiyalash, verifikatsiyalash, prognoz qilish",
    "3" : "Modelni tanlash va optimallashtirish",
    "4" : "Tajribalar qilish va natijalar olish",
    "5" : "Mantiqiy tahlil qilish va modellashtirish"
  },

  "82":{
    "0" : "2",
    "1" : "Ekonometrikaning maqsadi:",
    "2" : "Real iqtisodiy obyektlarni modellashtirish va miqdoriy tahlil qilishning usullarini ishlab chiqish",
    "3" : "Axborotlarni qayta №*ishlash",
    "4" : "Fizik ob'ektlarni modellashtirish",
    "5" : "Sifatli, psixologik miqdoriy tahlil qilishning usullarini ishlab chiqish"
  },

  "83":{
    "0" : "2",
    "1" : "Ekstropalyatsiya usuli qo'llaniladi",
    "2" : "Statistik prognozda",
    "3" : "Eng kichik kvadratlar usuli",
    "4" : "O'rtacha sirg'aluvchilar usuli",
    "5" : "Eksponetsial tekislash usuli"
  },

  "84":{
    "0" : "2",
    "1" : "Eng kichik kvadratlar usuli … xizmat qiladi:",
    "2" : "Dinamik qatorlarni tekislash uchun",
    "3" : "Omillar orasidagi bog'lanish zichligini aniqlash uchun",
    "4" : "Dinamik qatorlardagi o'rtacha qiymatlarni aniqlash uchun",
    "5" : "Omillarning o'rtacha kvadrat chetlanishini aniqlash uchun"
  },

  "85":{
    "0" : "2",
    "1" : "Farovonlik va rivojlanish indeksi qaysi tashkilot tomonidan belgilanadi?",
    "2" : "Legatum instituti tomonidan",
    "3" : "Menejment instituti tomonidan",
    "4" : "BMT tomonidan",
    "5" : "Jahon banki tomonidan"
  },

  "86":{
    "0" : "2",
    "1" : "Korxonaning sof foydasi qanday hisoblanadi?",
    "2" : "Foydadan soliqlar chegirgandan so'ng qolgan qismi",
    "3" : "Daromaddan ishlab chiqarish harajatlarni ayirgandan qolgan qismi",
    "4" : "Daromaddan harajatni ayirgandan№* qolgan qismi",
    "5" : "Daromaddan daromad solig’i ayirmasi"
  },

  "87":{
    "0" : "2",
    "1" : "Investitsion qarorlar qabul qilishda quyidagilardan qaysi biri asos bo'lib hisoblanadi?",
    "2" : "foizning real stavkasi",
    "3" : "foizning nominal stavkasi",
    "4" : "soliqlar darajasi",
    "5" : "pul taklifi"
  },

  "88":{
    "0" : "2",
    "1" : "Narx indeksi qanday hisoblanadi?",
    "2" : "joriy yildagi iste'mol tovarlari narxini bazis yildagi iste'mol tovarlari narxiga taqqoslash orqali",
    "3" : "nominal YaMM hajmini real YaMM hajmiga ko'paytmasi olinadi",
    "4" : "YaMMdan yillik amortizatsiya summasining ayirmasi",
    "5" : "YaMMdan sof eksport ayirmasi"
  },

  "89":{
    "0" : "2",
    "1" : "Nominal YaIM nima?",
    "2" : "joriy narxlarda hisoblangan YaIM",
    "3" : "nisbiy narxlarda hisoblangan YaIM",
    "4" : "o'zgaruvchan va nisbiy narxlarda hisoblangan YaIM",
    "5" : "o'zgaruvchan narxlarda hisoblangan YaIM"
  },

  "90":{
    "0" : "2",
    "1" : "Iqtisodiy sikl nechta fazadan iborat?",
    "2" : "4 ta",
    "3" : "2 ta",
    "4" : "3 ta",
    "5" : "5 ta"
  },

  "91":{
    "0" : "2",
    "1" : "Iqtisodiy siklning inqiroz fazasida yuzaga keladigan ishsizlik qanday nomlanadi?",
    "2" : "tsiklik ishsizlik",
    "3" : "tabiiy ishsi№*zlik",
    "4" : "turg'un ishsizlik",
    "5" : "texnologik ishsizlik"
  },

  "92":{
    "0" : "2",
    "1" : "Mamlakatning iqtisodiy o'sish sur'atini tavsiflaydigan ko'rsatkichlar:",
    "2" : "real YaIM va aholi jon boshiga real YaIMning o'sishi",
    "3" : "yalpi talab va yalpi taklif",
    "4" : "Iste'mol va jamg'arma",
    "5" : "investisiyalar miqdori"
  },

  "93":{
    "0" : "2",
    "1" : "Ishsizlik darajasi bilan YaIM o'rtasidagi bog'liqlikni ifodalovchi qonun qanday nomlanadi?",
    "2" : "Ouken qonuni",
    "3" : "Fillips qonuni",
    "4" : "Laffer qonuni",
    "5" : "Nufus qonuni"
  },

  "94":{
    "0" : "2",
    "1" : "Foiz stavkasi nima asosida belgilanadi?",
    "2" : "muomaladagi pul massasi asosida",
    "3" : "jamg'arma",
    "4" : "depozitlar",
    "5" : "kreditlar"
  },

  "95":{
    "0" : "2",
    "1" : "X tasodifiy o'zgaruvchini ifodalanishining universal usuli uning ... taqsimotini shaklida ifodalanishidir",
    "2" : "funktsiya",
    "3" : "qator",
    "4" : "zichlik",
    "5" : "poligon"
  },

  "96":{
    "0" : "2",
    "1" : "Diskret tasodifiy o'zgaruvchi - ...",
    "2" : "bu alohida, izolyatsiya qilingan qiymatlarni oladi",
    "3" : "Sonli oraliqni to’ldiruvchi qiymatlar to'plami",
    "4" : "taqsimot zichligi bilan beriladi",
    "5" : "taqsimot ko'pburchagi bilan beriladi"
  },

  "97":{
    "0" : "2",
    "1" : "Juftlangan chiziqli regressiya modelida Y ...",
    "2" : "Tasodifiy emas",
    "3" : "O’zgarmas",
    "4" : "Tasodifiy",
    "5" : "musbat"
  },

  "98":{
    "0" : "2",
    "1" : "Geometrik jihatdan tasodifiy miqdorning matematik kutilishi taqsimotning ...",
    "2" : "Markazi",
    "3" : "markaz bo'yicha dispersiya o'lchovi",
    "4" : "nosimmetrikning normadan og'ish o'lchovi",
    "5" : "simmetriyadan og'ish o'lchovi"
  },

  "99":{
    "0" : "2",
    "1" : "Agar tasodifiy o'zgaruvchilar mustaqil bo'lsa, u holda nazariy kovariatsiya ...",
    "2" : "nolga teng",
    "3" : "musbat",
    "4" : "manfiy",
    "5" : "nolga teng emas"
  },

  "100":{
    "0" : "2",
    "1" : "Tanlangan regressiya tenglamasidagi regressiya koeffitsientlari (a, b) ... usul(lar) bilan aniqlanadi.",
    "2" : "eng kichik kvadratlar",
    "3" : "vaznli eng kichik kvadratlar",
    "4" : "daqiqalar",
    "5" : "gradient"
  },

  "101":{
    "0" : "2",
    "1" : "Vaqt qatorlari - bu vaqt ichida ... moment(lar)ini tavsiflovchi ma'lumotlar",
    "2" : "bir obyektning har xil",
    "3" : "turli xil obyektlarning aynan bir",
    "4" : "bitta obyektning bitta",
    "5" : "turli xil ob'ektlarning turli"
  },

  "102":{
    "0" : "2",
    "1" : "Statistik munosabat ... .",
    "2" : "tasodifiy omi№*llar ta'sirini hisobga olmasdan o'zgaruvchilar munosabati",
    "3" : "o'zgaruvchilarga tegishli aniq formula",
    "4" : "tasodifiy omillar ta'sirida qo'shiladigan o'zgaruvchilar munosabati",
    "5" : "o'zgaruvchilarning har qanday bog'lanishi"
  },

  "103":{
    "0" : "2",
    "1" : "X tasodifiy miqdorni ifodalanishining universal usuli uning taqsimot … orqali ifodalanishidir",
    "2" : "funksiyasi",
    "3" : "qatori",
    "4" : "zichlik",
    "5" : "ko‘pburchak"
  },

  "104":{
    "0" : "2",
    "1" : "Diskret tasodifiy miqdor ...",
    "2" : "alohida, izolyatsiya qilingan qiymatlarni oladi",
    "3" : "qiymatlar to'plami raqamli bo'shliqni to'ldiradi",
    "4" : "taqsimot koʻpburchagi bilan berilgan",
    "5" : "taqsimot zichligi bilan beriladi"
  },

  "105":{
    "0" : "2",
    "1" : "Namuna o‘rtachasi...",
    "2" : "umumiy oʻrtachaning xolis baholovchisi",
    "3" : "umumiy dispersiyani xolis baholash",
    "4" : "umumiy o'rtacha qiymatning noxolis bahosi",
    "5" : "umumiy dispersiyani noxolis baholash"
  },

  "106":{
    "0" : "2",
    "1" : "Namuna dispersiyasi ...",
    "2" : "umumiy dispersiyani xolis baholovchisi",
    "3" : "umumiy oʻrtachaning xolis baholovchisi",
    "4" : "umumiy dispersiyani noxolis baholovchisi",
    "5" : "umu№*miy oʻrtacha qiymatning noxolis bahosi"
  },

  "107":{
    "0" : "2",
    "1" : "Juftlangan chiziqli regressiya modelida Y qiymati ...",
    "2" : "tasodifiy emas",
    "3" : "oʻzgarmas",
    "4" : "tasodifiy",
    "5" : "musbat"
  },

  "108":{
    "0" : "2",
    "1" : "Juftlangan chiziqli regressiya modelida A qiymati ...",
    "2" : "oʻzgarmas",
    "3" : "tasodifiy",
    "4" : "tasodifiy boʻlmagan",
    "5" : "Musbat"
  },

  "109":{
    "0" : "2",
    "1" : "Tasodifiy hadning normal taqsimlanishi haqidagi faraz ... uchun zarurdir.",
    "2" : "regressiya parametrlarining ahamiyatini sinash va ularning intervalini baholash",
    "3" : "determinatsiya koeffitsientini hisoblash",
    "4" : "determinatsiya koeffitsientining ahamiyatini tekshirish",
    "5" : "regressiya parametrlarini hisoblash"
  },

  "110":{
    "0" : "2",
    "1" : "Ekonometrika - bu ... oʻrganadigan fan.",
    "2" : "matematik statistika usullari orqali iqtisodiyotdagi qonuniyatlar va oʻzaro bogʻliqliklarni",
    "3" : "iqtisodiy ko‘rsatkichlar xossalari haqidagi farazlarni tekshirishni",
    "4" : "iqtisodiy qonunlarning empirik kelib chiqishini",
    "5" : "iqtisodiy modellarni qurishni"
  },

  "111":{
    "0" : "2",
    "1" : "M(X) va D(X) ...",
    "2" : "umu№*miy to’plamning sonli xarakteristikalari",
    "3" : "chiziqli funksiyalar",
    "4" : "xususiyatlari",
    "5" : "chiziqli boʻlmagan funksiyalar"
  },

  "112":{
    "0" : "2",
    "1" : "Qanday holatda bog’liqlik korrelyatsion deb aytiladi?",
    "2" : "agar omilning har bir qiymatiga natijali belgining ko’plab qiymatlari, ya’ni muayyan statistik taqsimot mos kelsa",
    "3" : "agar omilning har bir qiymatiga natijaviy omilning muayyan tasodifiy qiymati mos kelsa",
    "4" : "agar omilning har bir qiymatiga natijaviy omil qiymatlarining butun bir taqsimoti mos kelsa",
    "5" : "agar omilli belgining har bir qiymatiga natijali belgining muayyan belgilangan qiymati mos kelsa"
  },

  "113":{
    "0" : "2",
    "1" : "Standart ahamiyatlilik darajalari …% va …% ga teng",
    "2" : "5 / 1",
    "3" : "4 / 3",
    "4" : "3 / 2",
    "5" : "10 / 0.1"
  },

  "114":{
    "0" : "2",
    "1" : "Agar mezonning kuzatilgan qiymati kritik qiymatdan katta bo'lsa, u holda gipoteza ...",
    "2" : "H0 rad etiladi",
    "3" : "H1 rad etiladi",
    "4" : "H1 qabul qilinadi",
    "5" : "H0 qabul qilinadi"
  },

  "115":{
    "0" : "2",
    "1" : "Alohida korrelyatsiya deganda nima tushuniladi?",
    "2" : "boshqa omillar qiymati№* qat’iy belgilangan hollarda natijaviy omil va bitta omil o’rtasidagi bog’liqlik",
    "3" : "natijaviy omil hamda tadqiqotga kiritilgan ikki yoki undan ko’p omillarning bog’liqlikdagi",
    "4" : "ikkita omil (natijaviy va omillar yoki ikkita omil) o’rtasidagi bog’liqlik",
    "5" : "sifatiy omillar o’rtasidagi bog’liqlik"
  },

  "116":{
    "0" : "2",
    "1" : "Statistik bogliqlik deb ... aytiladi.",
    "2" : "tasodifiy omillar ta'sirini hisobga olmasdan o'zgaruvchilar munosabatiga",
    "3" : "o'zgaruvchilarga tegishli aniq formula",
    "4" : "tasodifiy omillar ta'sirida qo'shiladigan o'zgaruvchilar munosabatiga",
    "5" : "o'zgaruvchilarning har qanday bog'lanishiga"
  },

  "117":{
    "0" : "2",
    "1" : "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar oʻrtasida bogʻlanishning korrelyatsion shaklini aniqlash usuli bu -",
    "2" : "Eng kichik kvadratlar usuli",
    "3" : "Eng kata kvadratlar usuli",
    "4" : "Interpolyatsiya",
    "5" : "Ekstrapolyatsiya"
  },

  "118":{
    "0" : "2",
    "1" : "Hodisa yoki jarayonlarning kelgusidagi mumkin bolgan holatini ilmiy asoslangan holda bilish bu –",
    "2" : "Prognozlash",
    "3" : "Interpo№*lyatsiya",
    "4" : "oʻrtachasini hisoblash",
    "5" : "Avtokorrelyatsiya"
  },

  "119":{
    "0" : "2",
    "1" : "Belgi bu –",
    "2" : "bu toʻplam birligining alomatlari, xislati va h.k.",
    "3" : "Barcha toʻplamlar uchun umumiy xossalar",
    "4" : "Elementlarning alohida qismi",
    "5" : "Toʻplamning alohida qismi"
  },

  "120":{
    "0" : "2",
    "1" : "Omil belgining 1% ga o‘zgarganda natija qancha foizga o‘zgarishini aniqlaydigan koeffitsient – ….",
    "2" : "Elastiklik koeffitsienti",
    "3" : "Ta’sir koeffitsienti",
    "4" : "Xususiy regressiya koeffitsienti",
    "5" : "Korrelyatsiya koeffitsienti"
  },

  "121":{
    "0" : "2",
    "1" : "Umumiy muvozanatlik bu –",
    "2" : "barcha bozorlarning o‘zaro bir-biriga ta’siri natijasida o‘rnatiladigan muvozanatlik. Barcha bozorlarni muvozanat holatda bo‘lishi. Bunda biror bozorda muvozanatlik buzulsa boshqa bozorlarda ham muvozanatlilik buziladi",
    "3" : "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol",
    "4" : "ishlab chiqarishda foydalaniladigan resurslar miqdorini oshirish yoki texnologiyani takomillashtirish orqali jamiyatning ishlab chiqarish imkoniyatlarini №*kengaytiradi",
    "5" : "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladi"
  },

  "122":{
    "0" : "2",
    "1" : "… – taqsimot bo‘yicha cho‘ziluvchanlik yoki yassilik bo‘lib, uning me‘yori to‘rtinchi momentning to‘rtinchi darajali kvadratik o‘rtacha tafovutga nisbatidan iborat.",
    "2" : "Ekstsess",
    "3" : "Styudentning t mezoni",
    "4" : "Pirson mezoni",
    "5" : "Darbin-Uotsonning J-mezoni"
  },

  "123":{
    "0" : "2",
    "1" : "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar o‘rtasida bog‘lanishning korrelyatsion shaklini aniqlash usuli –",
    "2" : "Eng kichik kvadratlar usuli",
    "3" : "Eng katta kvadratlar usuli",
    "4" : "To’g’ri chiziqlar usuli",
    "5" : "Korrelyatsiya usuli"
  },

  "124":{
    "0" : "2",
    "1" : "Eng kichik kvadratlar usuli –",
    "2" : "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar o‘rtasida bog‘lanishning korrelyatsion shaklini aniqlash usulidir.",
    "3" : "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
    "4" : "keyingi№* darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyadir.",
    "5" : "barcha o’zgaruvchilar o’rtasidagi bog’liqlikning jipsligini baholaydi"
  },

  "125":{
    "0" : "2",
    "1" : "Vaqtli qatorlarni tekislashda qaysi usullardan foydalaniladi?",
    "2" : "Berilgan barcha usullar",
    "3" : "O‘rtacha sirg‘aluvchilar usuli",
    "4" : "Eng kichik kvadratlar usuli",
    "5" : "Eksponetsial tekislash usuli"
  },

  "126":{
    "0" : "2",
    "1" : "Chiziqsiz ko‘rinishdagi ekonometrik model –",
    "2" : "Parabola, giperbola, darajali funksiya, ko‘rsatkichli funksiya, trigonometrik funksiya ko‘rinishida bo‘lishi mumkin",
    "3" : "Chiziqli, parabola, giperbola, darajali funksiya ko‘rinishida bo‘lishi mumkin",
    "4" : "Fure qatorlari, chiziqli, parabola, giperbola, darajali funksiya ko‘rinishida bo‘lishi mumkin",
    "5" : "Fure qatorlari, chiziqli, parabola ko‘rinishida bo‘lishi mumkin"
  },

  "127":{
    "0" : "2",
    "1" : "Endogen o‘zgaruvchi – bu:",
    "2" : "Model ichida aniqlanadi",
    "3" : "Model tashqarisid№*a aniqlanadi",
    "4" : "Modelga kiritiladigan qo‘shimcha o‘zgaruvchi",
    "5" : "Modelga ta’sir ko‘rsatmaydigan o‘zgaruvchi"
  },

  "128":{
    "0" : "2",
    "1" : "Ekonometrik modelda qatnashadigan omillarni tanlashda qo‘llanadigan usulni ko‘rsating.",
    "2" : "Korrelyatsion tahlil usuli",
    "3" : "Ekstrapolyatsiya usuli",
    "4" : "Prognoz usuli",
    "5" : "Regression tahlil usuli"
  },

  "129":{
    "0" : "2",
    "1" : "To‘plam ko‘rsatkichlarini topishda qatnashadigan hech qanday bog‘lovchi shartlarga ega bo‘lmagan erkin miqdorlar soni –",
    "2" : "Erkinlik darajalar soni",
    "3" : "Korrelyatsiya soni",
    "4" : "Uzluksiz tasodifiy miqdor",
    "5" : "Tasodifiy miqdor"
  },

  "130":{
    "0" : "2",
    "1" : "Erkinlik darajalar soni – …",
    "2" : "to‘plam ko‘rsatkichlarini topishda qatnashadigan hech qanday bog‘lovchi shartlarga ega bo‘lmagan erkin miqdorlar sonidir.",
    "3" : "muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi.",
    "4" : "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oraliqni tashkil№* qiluvchi miqdor",
    "5" : "to„plamda kuzatish talab etiladigan elementlar sonidir"
  },

  "131":{
    "0" : "2",
    "1" : "Qanday holatda kointegratsiya xodisasi ishtirok etadi?",
    "2" : "agar vaqt qatori uzoq davom etadigan vaqt oralig’ida doimiy dispersiyaga ega bo’lsa",
    "3" : "agar vaqt qatorida taxlil etilayotgan ko’rsatkichning doimiy o’rtacha sur’ati ishtirok etsa",
    "4" : "agar vaqt qatorida ikki va undan ortiq darajalar tendensiyasi mos kelsa (yoki qarama-qarshi yo’nalishga ega bo’lsa)",
    "5" : "agar vaqt qatorida vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati ishtirok etsa"
  },

  "132":{
    "0" : "2",
    "1" : "Bog’langan vaqt qatorlarining darajalari o’rtasidagi bog’liqlikni o’rganish qanday usul yordamida o’tkaziladi?",
    "2" : "ketma-ket ayirmalarni korrelyatsiyalash",
    "3" : "dinamika qatori darajalarini korrelyatsiyalash",
    "4" : "xaqiqiy darajalarning trenddan og’ishlarini korrelyatsiyalash",
    "5" : "avtoregression o’zgartirishlarni korrelyatsiyalash"
  },

  "133":{
    "0" : "2",
    "1" : "… – talab va taklifga ta’sir qilu№*vchi omillarning o‘zgarishi natijasida ularni qanchaga o‘zgarishi tushuniladi",
    "2" : "Elastiklik",
    "3" : "Talab funksiyasi",
    "4" : "Taklif funksiyasi",
    "5" : "Chiziqlilik koeffitsienti"
  },

  "134":{
    "0" : "2",
    "1" : "… – muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi.",
    "2" : "Xususiy regressiya koeffitsienti",
    "3" : "Determinatsiya koeffitsienti",
    "4" : "Korelyatsiya koeffitsienti",
    "5" : "Tanlanma koeffitsienti"
  },

  "135":{
    "0" : "2",
    "1" : "… – bu shunday to‘liq bog‘lanishki, unda bir belgi yoki belgilar o‘zgarish qiymatiga har doim natijaning ma’lum me’yorda o‘zgarishi mos keladi.",
    "2" : "Funksional bog‘lanish",
    "3" : "Korrelyatsion bog‘lanish",
    "4" : "Regression bog‘lanish",
    "5" : "Tasodifiy bog‘lanish"
  },

  "136":{
    "0" : "2",
    "1" : "Uzluksiz tasodifiy miqdor –",
    "2" : "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oralikni tashkil qiluvchi miqdor",
    "3" : "bu alohida, izolyatsiya qilingan qiymatlarni oladi",
    "4" : "taqsimot ko‘pburchagi bilan beriladi№*",
    "5" : "qabul qiladigan chekli qiymatlari sonlar o‘qidagi biror cheksiz oraliqni tashkil qiluvchi miqdor"
  },

  "137":{
    "0" : "2",
    "1" : "To‘plamda kuzatish talab etiladigan element –",
    "2" : "To‘plam birligi",
    "3" : "Tanlanma",
    "4" : "Bosh to‘plam",
    "5" : "Kuzatuv"
  },

  "138":{
    "0" : "2",
    "1" : "Taqsimot qatorlari bu –",
    "2" : "to‘plam birliklarini ma’lum belgilar asosida guruhlarga (qismlarga) bo‘linishi",
    "3" : "to‘plamda kuzatish talab etiladigan elementlardan tuzilgan miqdorlar",
    "4" : "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oralikni tashkil qiluvchi miqdorlar",
    "5" : "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatorlari"
  },

  "139":{
    "0" : "2",
    "1" : "Sinov natijasida ro‘y berishi yoki ro‘y bermasligi mumkin bo‘lgan har qanday fakt –",
    "2" : "Tasodifiy hodisa",
    "3" : "Tasodifiy miqdor",
    "4" : "Tanlanma",
    "5" : "Tajriba"
  },

  "140":{
    "0" : "2",
    "1" : "Tasodifiy miqdor qabul qilishi mumkin bo‘lgan qiymatlari bilan ularning mos ehtimollarini bog‘laydigan biror munosabat …… deyiladi.",
    "2" : "Ta№*sodifiy miqdorning taqsimot qonuni",
    "3" : "Korrelyatsion-regression model",
    "4" : "Multikollinearlik",
    "5" : "Stoxastik yoki statistik qonunlar"
  },

  "141":{
    "0" : "2",
    "1" : "Tasodifiy miqdorning taqsimot qonuni –",
    "2" : "tasodifiy miqdor qabul qilishi mumkin bo‘lgan qiymatlari bilan ularning mos ehtimollarini bog‘laydigan biror munosabat",
    "3" : "bu bir turli hodisalarni ommaviy takrorlanishida namoyon bo‘ladigan qonunlar",
    "4" : "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
    "5" : "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin"
  },

  "142":{
    "0" : "2",
    "1" : "Sinov natijasida, avvaldan e’tiborga olib bo‘lmaydigan tasodifga bog‘liq holda, o‘zining mumkin bo‘lgan qiymatlaridan birini qabul qiladigan o‘zgaruvchi bu –",
    "2" : "Tasodifiy miqdor",
    "3" : "Bosh to‘plam",
    "4" : "Tasodifiy hodisa",
    "5" : "Tajriba"
  },

  "143":{
    "0" : "2",
    "1" : "Tasodifiy miqdor bu –",
    "2" : "sinov natijasida, avvaldan e’tiborga olib bo‘lmaydigan tasodifga bog‘liq hol№*da, o‘zining mumkin bo‘lgan qiymatlaridan birini qabul qiladigan o‘zgaruvchi tushuniladi",
    "3" : "bu o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementidir.",
    "4" : "sinov natijasida ro‘y berishi yoki ro‘y bermasligi mumkin bo‘lgan har qanday fakt",
    "5" : "o‘rganiladigan ko‘p hajmli birliklar majmuasi"
  },

  "144":{
    "0" : "2",
    "1" : "… – o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementidir.",
    "2" : "Tanlanma",
    "3" : "Bosh to‘plam",
    "4" : "Belgi",
    "5" : "To‘plam birligi"
  },

  "145":{
    "0" : "2",
    "1" : "Tanlanma deganda nima tushuniladi?",
    "2" : "o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementi.",
    "3" : "to‘plamda kuzatish talab etiladigan element",
    "4" : "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oraliqni tashkil qiluvchi miqdor",
    "5" : "o‘rganiladigan ko‘p hajmli birliklar majmuasi"
  },

  "146":{
    "0" : "2",
    "1" : "Talabga ta’sir diluvchi omillar miqdori bilan talab miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik bog‘liqlik",
    "2" : "Talab funksiyasi",
    "3" : "Talab elastikligi",
    "4" : "Taklif funksiyasi",
    "5" : "Ehtiyojlar funksiyasi"
  },

  "147":{
    "0" : "2",
    "1" : "Talab bu –",
    "2" : "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
    "3" : "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
    "4" : "Iste’mol savatchasidagi mahsulotlarni xarid qilish uchun sarflanadigan mablag‘",
    "5" : "Aholining tovar va xizmatlarga bo’lgan ehtiyoji"
  },

  "148":{
    "0" : "2",
    "1" : "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori bu –",
    "2" : "Talab",
    "3" : "Ehtiyojlar",
    "4" : "Taklif",
    "5" : "Xaridlar"
  },
  "149":{
    "0" : "2",
    "1" : "Talab bu –",
    "2" : "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
    "3" : "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
    "4" : "Iste’mol savatchasidagi mahsulotlarni xarid qilish uchun sarflanadigan mablag‘",
    "5" : "Aholining tovar va xizmatlarga bo’lgan ehtiyoji"
  },

  "150":{
    "0" : "2",
    "1" : "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori bu –",
    "2" : "Talab",
    "3" : "Ehtiyojlar",
    "4" : "Taklif",
    "5" : "Xaridlar"
  },

  "151":{
    "0" : "2",
    "1" : "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori bu –",
    "2" : "Taklif",
    "3" : "Talab",
    "4" : "Ishlab chiqarish funksiyasi",
    "5" : "Narx funksiyasi"
  },

  "152":{
    "0" : "2",
    "1" : "Taklif bu –",
    "2" : "bu ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
    "3" : "berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
    "4" : "barcha bozorlarning o‘zaro bir-biriga ta’siri natijasida o‘rnatiladigan muvozanat",
    "5" : "Narxning bir birlik o‘zgarishiga talabning necha birlik o‘zgarishi to‘g‘ri kelishi"
  },

  "153":{
    "0" : "2",
    "1" : "Bir turli hodisalarni ommaviy takrorlanishida namoyon bo‘ladigan qonunlar –",
    "2" : "Stoxastik yoki statistik qonunlar",
    "3" : "Funksional qonunlar",
    "4" : "Tsiklik qonun qoidalar",
    "5" : "Dinamik qonunlar"
  },

  "154":{
    "0" : "2",
    "1" : "Tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan ayt№*ilgan ilmiy taxmin –",
    "2" : "Statistik gipoteza",
    "3" : "Asosiy model",
    "4" : "Alternativ gipoteza",
    "5" : "Ikkilamchi gipoteza"
  },

  "155":{
    "0" : "2",
    "1" : "Statistik gipoteza bu –",
    "2" : "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
    "3" : "hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
    "4" : "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin",
    "5" : "hech narsaga asoslanmagan taxmin"
  },

  "156":{
    "0" : "2",
    "1" : "Natijaviy belgiga ta‟sir etuvchi omillarning samaradorligini aniqlab beruvchi usul –",
    "2" : "Regression tahlil",
    "3" : "Korrelyatsion tahlil",
    "4" : "Variatsion tahlil",
    "5" : "Dispersion tahlil"
  },

  "157":{
    "0" : "2",
    "1" : "Regression tahlil bu –",
    "2" : "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
    "3" : "hodisalar orasidagi bog‘lanish zichlik darajasini baholash usulidir",
    "4" : "vaqtga bog’liq bo’lmagan o’zgarishlarni ifodalaydigan usul",
    "5" : "vaqtli qatorlard№*a avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich"
  },

  "158":{
    "0" : "2",
    "1" : "Umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik –",
    "2" : "multikollinearlikdir",
    "3" : "funksional bog’liqlikdir",
    "4" : "statistik bog’liqlikdir",
    "5" : "avtokorrelyatsiya"
  },

  "159":{
    "0" : "2",
    "1" : "Multikollinearlik bu –",
    "2" : "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
    "3" : "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
    "4" : "natijaviy belgiga ta’sir etuvchi omillarning samaradorligi",
    "5" : "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir."
  },

  "160":{
    "0" : "2",
    "1" : "Modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
    "2" : "Modelning adekvatligi",
    "3" : "Modelning murakkabligi",
    "4" : "Modelning informativligi",
    "5" : "Modelning to’liqligi"
  },

  "161":{
    "0" : "2",
    "1" : "Modelning adekvatligi –",
    "2" : "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
    "3" : "model№* formulalarining to’g’ri berilganligi",
    "4" : "modellashtirilayotgan obyektning murakkablik darajasi",
    "5" : "model turini aniqlash usulining ketma-ketligi"
  },

  "162":{
    "0" : "2",
    "1" : "Model –",
    "2" : "lotincha modulus so‘zidan olingan bo‘lib, o‘lchov, me’yor degan ma’nolarni anglatadi",
    "3" : "lotincha modelus so‘zidan olingan bo‘lib, nusxa ko’chirish degan ma’noni anglatadi",
    "4" : "lotincha madelus so‘zidan olingan bo‘lib, kishiklashtirish degan ma’noni anglatadi",
    "5" : "lotincha modolus so‘zidan olingan bo‘lib, chegara, masofa degan ma’nolarni anglatadi"
  },

  "163":{
    "0" : "2",
    "1" : "To‘plamda eng ko‘p uchraydigan belgi qiymati – … deb nomlanadi.",
    "2" : "Moda",
    "3" : "Meidana",
    "4" : "O‘rta arifmetik qiymat",
    "5" : "Matematik kutilma"
  },

  "164":{
    "0" : "2",
    "1" : "Moda bu –",
    "2" : "to‘plamda eng ko‘p uchraydigan belgi qiymatidir",
    "3" : "to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
    "4" : "to‘plamdagi belgilar qiymatlarining o‘rta arifmetik qiymati",
    "5" : "to‘plamdagi eng katta va eng kishik qiymatlar farqidir"
  },

  "165":{
    "0" : "2",
    "1" : "To‘plamni teng ikki qismga bo‘luvchi belgi qiymati –",
    "2" : "Mediana",
    "3" : "Moda",
    "4" : "O‘rtacha",
    "5" : "Matematik kutilma"
  },

  "166":{
    "0" : "2",
    "1" : "Mediana bu –",
    "2" : "to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
    "3" : "to‘plamda eng ko‘p uchraydigan belgi qiymatidir",
    "4" : "to‘plamdagi belgilar qiymatlarining o‘rta arifmetik qiymati",
    "5" : "to‘plamdagi eng katta va eng kishik qiymatlar farqidir"
  },

  "167":{
    "0" : "2",
    "1" : "Ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlar –",
    "2" : "mavsumiy tebranish",
    "3" : "trend",
    "4" : "bozor muvozanatining buzilishi",
    "5" : "trenddagi o’zgarishlar"
  },

  "168":{
    "0" : "2",
    "1" : "Mavsumiy tebranish –",
    "2" : "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
    "3" : "har qanday sabablardan kelib chiqadigan tebranishlar",
    "4" : "makonga bog‘liq bo‘lgan tebranishlar",
    "5" : "barcha tsiklik tebranishlar"
  },

  "169":{
    "0" : "2",
    "1" : "Korrelyatsion tahlil –",
    "2" : "hodisalar orasidagi bog‘lanish№* zichlik darajasini baholash usulidir.",
    "3" : "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
    "4" : "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
    "5" : "vaqtga bog’liq bo’lmagan o’zgarishlarni ifodalaydigan usul"
  },

  "170":{
    "0" : "2",
    "1" : "O‘rganilayotgan hodisalar orasidagi bog‘lanishni natijaviy belgi bilan muhim omillar o‘rtasidagi ishonchli miqdoriy nisbatlari –",
    "2" : "Korrelyatsion-regression model",
    "3" : "Variatsiya",
    "4" : "Dispersiya",
    "5" : "Iqtisodiy o’sish modeli"
  },

  "171":{
    "0" : "2",
    "1" : "Korrelyatsion-regression model –",
    "2" : "bu o‘rganilayotgan hodisalar orasidagi bog‘lanishni natijaviy belgi bilan muhim omillar o‘rtasidagi ishonchli miqdoriy nisbatlar",
    "3" : "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
    "4" : "bu shunday to‘liq bog‘lanishki, unda bir belgi yoki belgilar o‘zgarish qiymatiga har doim natijaning ma’lum me’yorda o‘zgarishi mos keladi.",
    "5" : "chiziqli va №*kvadratik bog‘lanishlar"
  },

  "172":{
    "0" : "2",
    "1" : "Omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladigan to‘liqsiz bog‘lanish bu –",
    "2" : "Korrelyatsion bog‘lanish",
    "3" : "Regression bog‘lanish",
    "4" : "Kovariatsion bog‘lanish",
    "5" : "Kollinear bog‘lanish"
  },

  "173":{
    "0" : "2",
    "1" : "Korrelyatsion bog‘lanish bu –",
    "2" : "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladi",
    "3" : "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
    "4" : "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
    "5" : "bir o‘zgaruvchining ikkinchisiga chiziqli bog‘lanishi"
  },

  "174":{
    "0" : "2",
    "1" : "Iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
    "2" : "Kobb-Duglas ishlab chiqarish funktsiyasi",
    "3" : "Ishlab chiqarish imkoniyatlari funktsiyasi",
    "4" : "Fisher ishla№*b chiqarish funktsiyasi",
    "5" : "Populyatsiya funktsiyasi"
  },

  "175":{
    "0" : "2",
    "1" : "Kobb-Duglas ishlab chiqarish funktsiyasi –",
    "2" : "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
    "3" : "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan logarifmik ko‘rinishidagi funktsiya.",
    "4" : "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan sinusoidal ko‘rinishidagi funktsiya.",
    "5" : "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan chiziqli ko‘rinishidagi funktsiya."
  },

  "176":{
    "0" : "2",
    "1" : "Ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi sarflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik funktsiya –",
    "2" : "Ishlab chiqarish funksiyasi",
    "3" : "Taklif funksiyasi",
    "4" : "Ishlab chiqarish imkoniyatlari egrisi",
    "5" : "Bozor muvozanati funksiyasi"
  },

  "177":{
    "0" : "2",
    "1" : "Ishlab chiqarish funktsiyasi …",
    "2" : "ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi s№*arflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik funktsiya",
    "3" : "Vaqt davomida ishlab chiqarilgan mahsulot hajmining o’zgarishini ifodalovchi matematik funktsiya",
    "4" : "Ishlab chiqarish xarajatlarining o’zgarishini ifodalovchi matematik funksiya",
    "5" : "taklifga ta’sir qiluvchi omillar miqdori bilan taklif miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik formula"
  },

  "178":{
    "0" : "2",
    "1" : "Iqtisodiy obyektlarning soddalashtirilgan nusxasi nima deb ataladi?",
    "2" : "Iqtisodiy model",
    "3" : "Ishlab chiqarish funksiyasi",
    "4" : "Iqtisodiy jarayon",
    "5" : "Bozor munosabatlari"
  },

  "179":{
    "0" : "2",
    "1" : "Iqtisodiy modelning umumiy ta’rifini belgilang.",
    "2" : "iqtisodiy obyektlarning soddalashtirilgan nusxasi",
    "3" : "jarayonlarning matematik formulalar bilan berilgan nusxasi",
    "4" : "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi ifoda",
    "5" : "faqat ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi sarflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liql№*ikni ifodalovchi matematik funktsiya"
  },

  "180":{
    "0" : "2",
    "1" : "Qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachasi – …",
    "2" : "Dispersiya",
    "3" : "Variatsiya",
    "4" : "Variatsiya kengligi",
    "5" : "Kutilma"
  },

  "181":{
    "0" : "2",
    "1" : "Dispersiya bu –",
    "2" : "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
    "3" : "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
    "4" : "bu to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
    "5" : "taqsimot qatorining eng katta va eng kichik variantalari orasidagi farqdir"
  },

  "182":{
    "0" : "2",
    "1" : "Hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori bu –",
    "2" : "Dinamik qator",
    "3" : "Statik qator",
    "4" : "O‘zgarmas qator",
    "5" : "Belgilar qatori"
  },

  "183":{
    "0" : "2",
    "1" : "Dinamik qator –",
    "2" : "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori",
    "3" : "bu hodisa№*ni vaqt bo‘yicha o‘zgarmaydigan kattaliklarni ko‘rsatuvchi sonlar qatori",
    "4" : "bu hodisani koordinatalar bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori",
    "5" : "bu hodisani koordinaralar bo‘yicha o‘zgarmas qiymatlarini ko‘rsatuvchi sonlar qatori"
  },

  "184":{
    "0" : "2",
    "1" : "Natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadigan koeffitsient –",
    "2" : "Determinatsiya koeffitsienti",
    "3" : "Kovariatsiya koeffitsienti",
    "4" : "Korrelyatsiya koeffitsienti",
    "5" : "Regressiya koeffitsienti"
  },

  "185":{
    "0" : "2",
    "1" : "Determinatsiya koeffitsienti …",
    "2" : "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadi",
    "3" : "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
    "4" : "Dinamik qatorlardagi o'rtacha qiymatlarni aniqlash uchun ishlatiladi",
    "5" : "Omillarning o'rtacha kvadrat chetlanishini aniqlash uchun foydalaniladi"
  },

  "186":{
    "0" : "2",
    "1" : "Vaqtli qatorlarda avtokorrelyatsiyani a№*niqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
    "2" : "Darbin-Uotson mezoni",
    "3" : "Xi kvadrat mezoni",
    "4" : "Styudent mezoni",
    "5" : "Fisher mezoni"
  },

  "187":{
    "0" : "2",
    "1" : "Darbin-Uotson mezoni …",
    "2" : "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
    "3" : "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta‘siri ostida vujudga kelishini ko‘rsatadi",
    "4" : "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
    "5" : "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishini tekshiradi"
  },

  "188":{
    "0" : "2",
    "1" : "Taqsimot qatorining eng katta va eng kichik variantalari orasidagi farq … deyiladi.",
    "2" : "Variatsiya kengligi",
    "3" : "Tanlanma yoyilmasi",
    "4" : "Dispersiya",
    "5" : "Mediana"
  },

  "189":{
    "0" : "2",
    "1" : "Variatsiya kengligi –",
    "2" : "taqsimot qatorining eng katta va eng kichik variantalari orasidagi farqdir",
    "3" : "taqsimot qatorining eng katta va eng kichik variantalari yig‘indisidir",
    "4" : "taqsimot qatorini№*ng eng katta va eng kichik variantalari ko‘paytmasidir",
    "5" : "taqsimot qatorining eng katta va eng kichik variantalari bo‘linmasidir"
  },

  "190":{
    "0" : "2",
    "1" : "Qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligi …dir.",
    "2" : "Variatsiya",
    "3" : "Dispersiya",
    "4" : "Kovariatsiya",
    "5" : "Regressiya"
  },

  "191":{
    "0" : "2",
    "1" : "Variatsiya bu –",
    "2" : "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
    "3" : "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadi",
    "4" : "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
    "5" : "muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi."
  },

  "192":{
    "0" : "2",
    "1" : "O‘rganiladigan ko‘p hajmli birliklar majmuasi – … dir.",
    "2" : "Bosh to‘plam",
    "3" : "Tanlanma",
    "4" : "Ikkilamchi to‘plam",
    "5" : "Tasodifiy miqdor"
  },

  "193":{
    "0" : "2",
    "1" : "Bosh to‘plam bu –",
    "2" : "o‘rganiladigan ko‘p hajmli birliklar majmuasidir.",
    "3" : "barcha elementlarni o‘z ichiga olgan to‘plam",
    "4" : "umuman elementlari mavjud bo‘lmagan to‘plam",
    "5" : "bir nechta to‘plamlar kesishmasidan tashkil topgan to‘plamlar majmuasi"
  },

  "194":{
    "0" : "2",
    "1" : "Bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol … deyiladi",
    "2" : "Bozor muvozanati",
    "3" : "Bozor to‘yinishi",
    "4" : "Bozor qonuni",
    "5" : "Kelishuv"
  },

  "195":{
    "0" : "2",
    "1" : "Bozor muvozanati bu –",
    "2" : "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol",
    "3" : "bozorda taklif miqdorining talab miqdoridan katta teng bo‘lgan holi.",
    "4" : "bozorda taklif miqdorining talab miqdoridan kam bo‘lgan holi.",
    "5" : "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol"
  },

  "196":{
    "0" : "2",
    "1" : "Belgi bu –",
    "2" : "bu to‘plam birligining alomatlari, xislati va h.k.",
    "3" : "o‘rganiladigan ko‘p hajmli birliklar majmuasidir",
    "4" : "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
    "5" : "vaqtli qatorlarda avtokorrelyatsiyani aniqlash u№*chun qo‘llaniladigan shartli ko‘rsatkich"
  },

  "197":{
    "0" : "2",
    "1" : "Prognozlash bu –",
    "2" : "hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
    "3" : "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
    "4" : "jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslanmagan holda bilishga harakat qilish",
    "5" : "bo‘lib o‘tgan lekin u haqda bizda ma’lumot bo‘lmagan jarayonlarni tahmin qilish usulidir"
  },

  "198":{
    "0" : "2",
    "1" : "Hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
    "2" : "Prognozlash",
    "3" : "Taxmin qilish",
    "4" : "Fol ochish",
    "5" : "Ekstrapolyatsiya"
  },

  "199":{
    "0" : "2",
    "1" : "Alternativ (muqobil) gipoteza bu –",
    "2" : "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin.",
    "3" : "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
    "4" : "bu qa№*tor hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
    "5" : "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lmagan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmin (faraz)dir."
  },

  "200":{
    "0" : "2",
    "1" : "Taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin.",
    "2" : "Alternativ (muqobil) gipoteza",
    "3" : "Asosiy gipoteza",
    "4" : "Dastlabki gipoteza",
    "5" : "Yagona gipoteza"
  },

  "201":{
    "0" : "2",
    "1" : "Avtokorrelyatsiya bu –",
    "2" : "Keyingi darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyasi",
    "3" : "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
    "4" : "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
    "5" : "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xi№*l qiymatlari mos keladi"
  },

  "202":{
    "0" : "2",
    "1" : "Keyingi darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyasi -",
    "2" : "Avtokorrelyatsiya",
    "3" : "Kovariatsiya",
    "4" : "Regressiya",
    "5" : "Variatsiya"
  }

};

Map<String, Map<String,String>> operatsionTizimlar={
  "0":{
    "0" : "2",
    "1" : "Svоping bu?",
    "2" : " jarayonlarni asоsiy xоtiradan diskka va оrqaga to'liq o'tkazishdir",
    "3" : " jarayonlarni fleshkaga o'tkazish",
    "4" : " jarayonlarni оperativ xоtirada ushlab turish",
    "5" : " jarayonlarni diskka o'tkazish"
  },
  "1":{
    "0" : "2",
    "1" : "Svоping bu?",
    "2" : " jarayonlarni asоsiy xоtiradan diskka va оrqaga to'liq o'tkazishdir",
    "3" : " jarayonlarni fleshkaga o'tkazish",
    "4" : " jarayonlarni оperativ xоtirada ushlab turish",
    "5" : " jarayonlarni diskka o'tkazish"
  },

  "2":{
    "0" : "2",
    "1" : " NTFS fayllik tizimi nechta bitli prоttsessоr-lar bilan ishlaydi?",
    "2" : " 16 va 32",
    "3" : " 8 va 16",
    "4" : " 32",
    "5" : "16"
  },

  "3":{
    "0" : "2",
    "1" : "Jarayonni rejalashtirish darajalari",
    "2" : " uzоq muddatli, o'rta muddatli va qisqa muddatli",
    "3" : " cheksiz va chekli muddatli",
    "4" : " faqat uzоq muddatli",
    "5" : "aniq va aniq emas muddatli"
  },

  "4":{
    "0" : "2",
    "1" : " Xоtira ierarxiyasi bo'yicha, eng qimmat tezkоr va qimmat xоtira",
    "2" : " prоtsessоr registrlari",
    "3" : " tashqi xоtira",
    "4" : " elektrоn disklar",
    "5" : " asоsiy xоtira"
  },

  "5":{
    "0" : "2",
    "1" : "Оchiq kоdli ОT larda",
    "2" : " tizim kоdlari оchiq, ixtiyoriy fоydalanuvchi uni o'zgartirishi mumkin",
    "3" : " tizim kоdlari оchiq, ammо ularni o'zgar-tirish mumkin emas",
    "4" : " dastur kоdlari оchiq emas",
    "5" : " tizim kоdlari faqat tizim mualliflari uchun оchiq"
  },

  "6":{
    "0" : "2",
    "1" : "Xоtiraning ma`lumоtlar jоylashadigan bo'limi?",
    "2" : " segment deyiladi",
    "3" : " stek deyiladi",
    "4" : " sahifa deyiladi",
    "5" : " оverley deyiladi"
  },

  "7":{
    "0" : "2",
    "1" : "Das#turiy ta`minоt quyidagi bo'limlardan ibоrat",
    "2" : " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt, xizmatchi dasturiy ta`minоt, amaliy dasturiy ta`minоt",
    "3" : " tizimli dasturiy ta`minоt",
    "4" : " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt",
    "5" : " asоs dasturiy ta'minоt"
  },

  "8":{
    "0" : "2",
    "1" : "Dastur algоritmlarda, ishlоv beriladigan massivlarda amal va kattaliklardan fоydalanish chastоtasiga qarab, funktsiyalarni ajratishga asоslangan printsip",
    "2" : " chastоta printsipi",
    "3" : " xavfsizlik printsipi",
    "4" : " mоdullilik printsipi",
    "5" : " generatsiya printsipi"
  },

  "9":{
    "0" : "2",
    "1" : "Windows ОT larining bоshqa ОТ lardan printsipial farqi",
    "2" : " grafik interfeysi va bir nechta ilоvalar bilan birgalikda ishlash",
    "3" : " dialоgli ish rejimi",
    "4" : " hisоblashlar ishоnchliligi",
    "5" : " Kоmanda tili yo'qligi"
  },

  "10":{
    "0" : "2",
    "1" : "Multidasturlash bu",
    "2" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
    "3" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaqtning o'zida bir nechta dastur bajariladi",
    "4" : " hisоbla#sh jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
    "5" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi"
  },

  "11":{
    "0" : "2",
    "1" : "Amaliy dasturiy ta`minоt – dasturlari",
    "2" : " aniq sоxa masalalarini yechishni ta`minlоvchi dastur-lardir",
    "3" : " tizimga xizmat qilu-vchi dasturlar",
    "4" : " interfeysni ta`minlоvchi dasturlar",
    "5" : " tizimni sоzlоvchi dasturlar"
  },

  "12":{
    "0" : "2",
    "1" : "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
    "2" : " NTFS",
    "3" : " BFS",
    "4" : " FAT",
    "5" : " JFS"
  },

  "13":{
    "0" : "2",
    "1" : "Utilitalar bu shunday fоydali dasturlarki",
    "2" : " xajmi kichik dasturlar bo'lib, apparat vоsitalar ishini bоshqaradi, turli yordamchi funktsiyalarni, ishlоvchanlik qоbilyatini, sоzlashni tekshiradi",
    "3" : " faqat sоzlaydi",
    "4" : " apparat vоsitalar ishini kuzatadi",
    "5" : " xizmat qiladi, ishlоvchanligini tekshiradi"
  },

  "14":{
    "0" : "2",
    "1" : "Fat fayl tizimida, mantiqiy disk:",
    "2" : " tizimli sоxa va ma`lumоtlar sоxasiga bo'linadi",
    "3" : " yuklanish qismlari",
    "4" : " katalоglar sоxasi va tizimli sоxa",
    "5" :" tizimli sоxa"
  },

  "15":{
    "0" : "2",
    "1" : "Windows NT/2000/XP ijrо tizimi quyidagi kоmpоnentalardan ibоrat",
    "2" : " jarayonlar, virtual xоtira, оb`ektlar dispetcheri, xavfsizlik mоnitоri, kiritish chiqarish dispetcheri, lоkal prоtseduralarni chaqirish vоsitasi",
    "3" : " jarayonlar, virtual xоtira, оb`ektlar dispetcheri",
    "4" : " jarayonlar, virtual xоtira, оb`ektlar kiritish chiqarish dispetcherlari",
    "5" : " lоkal prоtseduralarni chaqirish vоsitalari"
  },

  "16":{
    "0" : "2",
    "1" : "Fayllar tuzilishining asоsiy birligi nimalar",
    "2" : " ma`lumоtlar",
    "3" : " katalоglar",
    "4" : " grafiklar",
    "5" : " xоtira"
  },

  "17":{
    "0" : "2",
    "1" : "Quyidagi ОT larning qaysi biri ko'p masalali va ko'p fоydalanuvchili hisоblanadi",
    "2" : " UNIX",
    "3" : " MS-DOS, MSX",
    "4" : " ОS YeS, OS/2",
    "5" : "WINDOWS 95"
  },

  "18":{
    "0" : "2",
    "1" : "ОT bоshqaruvi оstida jarayonlar sоnini o'zgartirmaydigan amallar",
    "2" : " ko'p martalik amallar",
    "3" : " jarayon priоritetini o'zgartiruvchi amallar",
    "4" : " tayyor hоlatga o'tkazuvchi amallar",
    "5" : " bir martalik amallar"
  },

  "19":{
    "0" : "2",
    "1" : "Tarmоq оperatsiоn tizimining qaysi qismi ilоvalardan barcha so'rоvlarni qabul qilib ularni analiz qiladi",
    "2" : " server qism#i",
    "3" : " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
    "4" : " klient qismi",
    "5" : " kоmmunikatsiоn vоsitalar"
  },

  "20":{
    "0" : "2",
    "1" : "Shaxsiy kоmpyuterning ta minоti qanday bo'limdan ibоrat",
    "2" : " uskunaviy va dasturiy ta minоt",
    "3" : " uskunaviy ta minоt",
    "4" : " interfeys",
    "5" : "dasturiy ta minоt"
  },

  "21":{
    "0" : "2",
    "1" : "Prоtsessоr vaqti",
    "2" : " chegaralangan resurs",
    "3" : " dоimiy resurs",
    "4" : " vaqtinchalik resurs",
    "5" : " chegaralanmagan resurs"
  },

  "22":{
    "0" : "2",
    "1" : "Multidasturlash rejimida ishlaydigan оperatsiоn tizimlar",
    "2" : " rivоjlanish 3-davriga yuzaga keldi",
    "3" : " rivоjlanish 1-davriga yuzaga keldi",
    "4" : " rivоjlanish 4-davriga yu-zaga keldi",
    "5" : " rivоjlanish 2-davriga yu-zaga keldi"
  },

  "23":{
    "0" : "2",
    "1" : "Kоmpyuter tarkibiga kiruvchi turli qurilmalarni bоshqaruvchi maxsus dasturlar ..... .deb ataladi",
    "2" : " drayverlar",
    "3" : " xizmatchi dasturlar",
    "4" : " plug and play texnоlоgiyasi",
    "5" : "оperatsiоn tizim"
  },

  "24":{
    "0" : "2",
    "1" : "Fоydalanuvchi tizim bilan ishlayotgan vaqtda, u o'rnatadigan parametrlarni qisqartirish, parametrlarni o'rnatish vaqtini tejashga imkоn beradigan printsip",
    "2" : " standart xоlatlar (pо umоl-chaniyu) printsipi",
    "3" : " funktsiоnal tanlanish pr#intsipi",
    "4" : " generatsiya printsipi",
    "5" : " chastоta printsipi"
  },

  "25":{
    "0" : "2",
    "1" : "Qanday axbоrоtlar se-curity accounts manag-er da saqlanadi",
    "2" : " fоydalanuvchilarning qayd yo-zuvi haqidagi",
    "3" : " Windows оperatsiоn tizim fоydalanuvchi-lari haqidagi",
    "4" : " ma'lumоtlar bazasidagi axbоrоtlar",
    "5" : " ro'yxatdan o'tgan fоyda-lanuvchilar haqidagi"
  },

  "26":{
    "0" : "2",
    "1" : "Tarmоq оperatsiоn tizimining qaysi qismi ma`lumоtlarni adreslash, buferlash, va uzatilishidagi xavfsizlikni ta`minlaydi",
    "2" : " kоmmunikatsiоn vоsitalar",
    "3" : " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
    "4" : " klient qismi",
    "5" : " server qismi"
  },

  "27":{
    "0" : "2",
    "1" : "Tizimli dasturiy ta`minоt bu",
    "2" : " kоmpyuter tizimining dastur-lari va bevоsita apparat ta`minоti bilan o'zarо bоglan- ishini ta`minlaydi",
    "3" : " amaliy masalalarni yechimini ta`minlaydi",
    "4" : " kоmpyuter ishini nazоrat qiladi",
    "5" : " kоmpyuter qurilmalarini ishlashini ta`minlaydi"
  },

  "28":{
    "0" : "2",
    "1" : "Mоnоlit ОT larda tuzilishi",
    "2" : " 2 ta bo'lakdan ibоrat (bоsh dastur va prоtseduralar)",
    "3" : "5 ta satxdan ibоrat",
    "4" : "6 ta satxdan ibоrat (ko'p satxli dastur)",
    "5" : "3 ta satxdan ibоrat (b#оsh dastur, prоtsedura va ser-vis dasturlari)"
  },

  "29":{
    "0" : "2",
    "1" : "Zamоnaviy ОT larda xоtira:",
    "2" : "segment sahifali bo'linadi",
    "3" : "o'zgaruvchan bo'limlarga bo'linadi",
    "4" : "qat`iy bo'limlarga bo'linadi",
    "5" : "segmentlarga bo'linadi"
  },

  "30":{
    "0" : "2",
    "1" : "Amaliy dasturiy ta`minоt",
    "2" : "ma`lum ish jоyida aniq ma-salalarni yechishga yordam beradigan dastur",
    "3" : "hisоblash tizimini nazоrat qiluvchi",
    "4" : "stastikani оlib beradi",
    "5" : "qurilmalarni ishlatuvchi"
  },

  "31":{
    "0" : "2",
    "1" : "Xоtiraning fiksirlangan bo'limlarga bo'lishda",
    "2" : " xоtira qat`iy o'lchamli bo'lak-larga оldindan bo'lingan bo'ladi",
    "3" : " ma`lumоtlar-fayllar bo'laklarga bo'linadi",
    "4" : " ma`lumоtlar xajmi bo'yicha jоylashtirib bоriladi",
    "5" : " xоtira sahifalarga bo'linadi"
  },

  "32":{
    "0" : "2",
    "1" : "Multidasturlash bu",
    "2" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
    "3" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi",
    "4" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
    "5" : "#hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaq-tning o'zida bir nechta dastur bajariladi"
  },

  "33":{
    "0" : "2",
    "1" : "Matn muharriri Word bu",
    "2" : " amaliy dasturiy",
    "3" : "asоs dasturiy",
    "4" : "xizmatchi dasturiy",
    "5" : "tizimli dasturiy"
  },

  "34":{
    "0" : "2",
    "1" : "Fragmentattsiya deb nimaga aytiladi",
    "2" : " xоtira bo'limlarga ajratilganda qоladigan bo'l jоyi",
    "3" : " ma`lumоtlarning bo'limlarga sigmay qоlishi",
    "4" : " xоtiraning bo'limlarga ajralmay qоlishi",
    "5" : "xоtiraning bir turi"
  },

  "35":{
    "0" : "2",
    "1" : "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
    "2" : " NTFS",
    "3" : " JFS",
    "4" : " BFS",
    "5" : " FAT"
  },

  "36":{
    "0" : "2",
    "1" : "mv buyrug'ug'i qanday vazifani bajaradi?",
    "2" : " Faylni qayta nomlash, nusxa olish",
    "3" : " Faylni o'chirish",
    "4" : " Katalogni nusxalash",
    "5" : " Katalog yaratish"
  },

  "37":{
    "0" : "2",
    "1" : "Tizimli dasturiy taminоt nechtaga bo'linadi",
    "2" : " 3",
    "3" : "5",
    "4" : "2",
    "5" : "4"
  },

  "38":{
    "0" : "2",
    "1" : "Windows server bu qaysi kompaniyaga tegishli",
    "2" : "Microsoft",
    "3" : "IBM",
    "4" : "Unix",
    "5" : "PS/OS"
  },

  "39":{
    "0" : "2",
    "1" : "Unix operatsion tizimi qachon yaratilgan",
    "2" : " 1960",
    "3" : " 1978",
    "4" : " 1995",
    "5" : " 1980"
  },

  "40":{
    "0" : "2",
    "1" : "Unix operatsion tizimi qaysi laboratoriyada ishlab chiqilgan",
    "2" : " AT&T'S Bell laboratories",
    "3" : " IBM laboratories",
    "4" : " PS/O#S laboratories",
    "5" : " Solaris laboratories"
  },

  "41":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Unix serverga o'xshash server operatsion tizim hisoblanadi",
    "2" : " Solarius, Linux",
    "3" : " Microsoft server",
    "4" : " PS/OS",
    "5" : " IBM"
  },

  "42":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Linux serveri hisoblanadi",
    "2" : " Ubuntu, Debian, CentOS",
    "3" : "Ubuntu, IBMm Debian",
    "4" : "Microsoft, Debian,",
    "5" : "IBM, Microsoft, Oracle"
  },

  "43":{
    "0" : "2",
    "1" : "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
    "2" : " Canonical",
    "3" : "Microsoft",
    "4" : "IBM",
    "5" : "Oracle"
  },

  "44":{
    "0" : "2",
    "1" : "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
    "2" : " Canonical",
    "3" : "Microsoft",
    "4" : "IBM",
    "5" : "Oracle"
  },

  "45":{
    "0" : "2",
    "1" : "Windows operatsion tizimida buyruqlar qatorini (cmd) qaysi klavishlar yordamida bosiladi",
    "2" : " Win + R",
    "3" : " Win + F",
    "4" : " Win + D",
    "5" : " Win + T"
  },

  "46":{
    "0" : "2",
    "1" : "Operatsion tizim nima",
    "2" : " operatsion tizim bu foydalanuvchi va kompyuter o'rtasidagi muloqatni ta'minlab beruvchi dasturlar jamlanmasi",
    "3" : " Operatsion tizim bu grafik interfeysni ikkilik sanoqqa o'tkazib beruvchi dasturlar jamlanmasi",
    "4" : " Amaliy dasturlar jamlanmasi",
    "5" : "Multimediyali dasturlar jamlanmasi"
  },

  "47":{
    "0" : "2",
    "1" : "Operatsion tizim asoson ...",
    "2" : " tizimli dasturlar jamlan#masi",
    "3" : " amalaiy dasturlar jamlanmasi",
    "4" : " multimediyali qurilmalar jamlanmasi",
    "5" : " qobiqdan iborat"
  },

  "48":{
    "0" : "2",
    "1" : "Operatsion tizimda hisoblash tizimining tarkibi bu",
    "2" : " Konfiguratsiya",
    "3" : " Drayverlar",
    "4" : " Aparat vositalar",
    "5" : " amaliy dasturlar"
  },

  "49":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Operatsion tizimning asosiy tashkil etuvchilari hisoblaniladi",
    "2" : " Yadro, kiritish-chiqarish tizimi, kamanda prosessori, fayl tizimi",
    "3" : " Amaliy dasturlar, Yadro, Fayl tizimi",
    "4" : " Kamanda prosessori, konfiguratsiya",
    "5" : " To'g'ri javob berilmagan"
  },

  "50":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi yadro bu",
    "2" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "3" : " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "51":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi kiritish - chiqarish tizimi bu",
    "2" : " tashqi qurilmalar# bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "3" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "4" : " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "52":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi kamanda prosessori bu",
    "2" : " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "3" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "53":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi fayl tizimi bu",
    "2" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi.",
    "3" : " masalalar va resur#slarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi"
  },

  "54":{
    "0" : "2",
    "1" : "Operatsion tizim interfeysi bu",
    "2" : " Foydalanuvchi aloqa o'rnatadigan qulay qobiq",
    "3" : " Drayverlar jamlanmasi",
    "4" : " Fayl tizimi",
    "5" : "To'g'ri javob berilmagan"
  },

  "55":{
    "0" : "2",
    "1" : "Buyruq interpretatori bu",
    "2" : " Dastur tilidan mashina tiliga o'giradi (Tarjimon)",
    "3" : " Drayverlarni ishga tushiradi",
    "4" : " Amaliy dasturlarni ishga tushiradi",
    "5" : " To'g'ri javob berilmagan"
  },

  "56":{
    "0" : "2",
    "1" : "Kompyuter tashkil etuvchisi bu",
    "2" : " Turli xil qurilmalarni boshqarish dasturi",
    "3" : " Multimediya qurilmalarni boshqarish",
    "4" : " O'yinlarni yaratish dasturi",
    "5" : " Tizimni boshqarish"
  },

  "57":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 1 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1945 - 1955",
    "3" : " 1965 - 1975",
    "4" : " 1975 - 1985",
    "5" : " 1985 - 1995"
  },

  "58":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi #2 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1955 - 1965",
    "3" : " 1965 - 1975",
    "4" : " 1945 - 1955",
    "5" : " 1985 - 1995"
  },

  "59":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 3 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1965 - 1980",
    "3" : " 1945 - 1955",
    "4" : " 1955 - 1965",
    "5" : " 1985 - 1995"
  },

  "60":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 4 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1980 yildan to hozirgacha",
    "3" : " 1965 - 1980",
    "4" : " 1955 - 1965",
    "5" : " 1945 - 1955"
  },

  "61":{
    "0" : "2",
    "1" : "Birinchi avlod kompyuterlari analitik mashina kim tamonidan yaratilgan.",
    "2" : " Charles Babbage",
    "3" : " Inix Helton",
    "4" : " Shelton Holmz",
    "5" : " Daniel Tompson"
  },

  "62":{
    "0" : "2",
    "1" : "Qaysi avlod tizimlaridan boshlab operatsion tizimlar o'rnatila boshlagan.",
    "2" : " 2 - avlod",
    "3" : " 1 - avlod",
    "4" : " 3 - avlod",
    "5" : " 4 - avlod"
  },

  "63":{
    "0" : "2",
    "1" : "Nechilchi yillardan boshlab paketli operatsion tizimlar ishlab chiqarilgan.",
    "2" : " 1960 yil",
    "3" : " 1945 yil",
    "4" : " 1985 yil",
    "5" : " 1970 yil"
  },

  "64":{
    "0" : "2",
    "1" : "4 - avlod kampyuterlariga qanday kompyuterlar kiradi",
    "2" : " Personal va super kompyuterlar",
    "3" : " Lampali",
    "4" : " Integral sxemali kompyuterlar",
    "5" : " hali yaratilmagan"
  },

  "65":{
    "0" : "2",
    "1" : "Multipleksing bu",
    "2" : " Birinchi avlod kampyuterlari multipleksing kim tamonidan yaratilgan.",
    "3" : " Drayverlar jamlanmasi",
    "4" : " amaliy dasturlar jamlanmasi",
    "5" : " to'g'ri javob berilmagan"
  },

  "66":{
    "0" : "2",
    "1" : "Multipleksing necha xil ko'rinishda bo'ladi",
    "2" : " 2",
    "3" : " 3",
    "4" : " 1",
    "5" : " 4"
  },

  "67":{
    "0" : "2",
    "1" : "Multipleksingning ikki xil ko'rinishi bor bular",
    "2" : " Vaqtinchalik, Ajratilgan xotira",
    "3" : " Ajratilmagan xotira, Doimiy xotira",
    "4" : " Qobiq, Drayverlar",
    "5" : " Interfeyslar, amaliy dasturlar"
  },

  "68":{
    "0" : "2",
    "1" : "Trap bu",
    "2" : " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
    "3" : " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
    "4" : " Drayverlarni o'rnatadi",
    "5" : "Qurilmalarni o'rnatadi"
  },

  "69":{
    "0" : "2",
    "1" : "Boot Loader – bu",
    "2" : " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
    "3" : " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
    "4" : " Operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
    "5" : "Qurilmalarni o'rnatadi"
  },

  "70":{
    "0" : "2",
    "1" : "Interrupts (Uzilish) – bu",
    "2" : " bir dasturni bajarilishini hozirgi vaqtda yana#da muhimroq boshqa dasturni tezkor bajarish maqsadida vaqtincha to’xtatilishidir",
    "3" : "Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
    "4" : "Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
    "5" : "operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi"
  },

  "71":{
    "0" : "2",
    "1" : "Masalalarni qayta ishlash rejimi bo'yicha operatsion tizimlar sinflanishi",
    "2" : " bir vazifali , ko'p vazifali",
    "3" : " bir vazifali",
    "4" : " ko'p vazifali",
    "5" : " ko'p foydalanuvchi"
  },

  "72":{
    "0" : "2",
    "1" : "O'zaro bog'lanish bo'yicha operatsion tizimlar sinflanishi",
    "2" : " bir foydalanuvchi va ko'p foydalanuvchi",
    "3" : " bir vazifali , ko'p vazifali",
    "4" : " ko'p vazifali",
    "5" : " ko'p foydalanuvchi"
  },

  "73":{
    "0" : "2",
    "1" : "Meynfraymlar bu",
    "2" : " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
    "3" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
    "4" : " Hajmi va bajaradigan amallar tezligi jihatidan kat#ta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
    "5" : " Juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
  },

  "74":{
    "0" : "2",
    "1" : "Mikrokompyuterlar bu",
    "2" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
    "3" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
    "4" : " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berish#ga yo’naltirilgan",
    "5" : "juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
  },

  "75":{
    "0" : "2",
    "1" : "Super komputerlar bu",
    "2" : " juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi.",
    "3" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
    "4" : " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
    "5" : " Hajmi va bajaradigan amallar tezligi jihat#idan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda"
  },

  "76":{
    "0" : "2",
    "1" : "Minikompyuterlar – bu ...",
    "2" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
    "3" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
    "4" : " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
    "5" : " Juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekun#dda 10 trilliardlab amal bajaradi."
  },

  "77":{
    "0" : "2",
    "1" : "Operatsion tizimlar tuzilishiga ko'ra sinflanishi",
    "2" : " Monolit, ko'p sathli, Klient -Server, Mikro yadroli",
    "3" : " Monolit, Ko'p sathli",
    "4" : " Klient - server",
    "5" : " Mikro yadroli"
  },

  "78":{
    "0" : "2",
    "1" : "Monolit operatsion tizimlar bu",
    "2" : " bu biron bir aniq strukturaga ega bo’lmagan tuzilishga ega operatsion tizim hisoblanadi.",
    "3" : " Faqat sever bilan ishlovchi OT",
    "4" : " Faqat yadro bilan ishlovchi OT",
    "5" : " To'g'ri javob berilmagan"
  },

  "79":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Mikroyadroli operatsion tizim hisoblaniladi",
    "2" : " linux",
    "3" : " To'g'ri javob berilmagan",
    "4" : " Windows",
    "5" : " Solaris"
  },

  "80":{
    "0" : "2",
    "1" : "Tizimli chaqiruv-",
    "2" : " Operasion tizim va ishlayotgan dastur orasidagi interfeysni taminlab beradi",
    "3" : " Xotiradan joy ajratib beradi",
    "4" : " Xotirada saqlaydi",
    "5" : " elektr manbaini ta'inlab beradi"
  },

  "81":{
    "0" : "2",
    "1" : "Operatsion tizimga qo'yiladigan talablar bular",
    "2" : " Barcha javoblar to'g'ri",
    "3" : " dasturlar va a'luotlarni himoyalash",
    "4" : " Samaradorlik, Moslashuvchanlik, Yangilanish",
    "5" : " Ishonchlilik, Qulaylilik, aniqlik"
  },

  "82":{
    "0" : "2",
    "1" : "BIOS bu",
    "2" : " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodastu#rlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi",
    "3" : " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
    "4" : " amaliy dasturlarni boshqaradi",
    "5" : " Barcha javoblar nato'g'ri"
  },

  "83":{
    "0" : "2",
    "1" : "Drayverlar bu",
    "2" : " Tashqi qurilmalarning fiziki darajada ishlashini boshqaruvchi dasturlardir",
    "3" : " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
    "4" : " amaliy dasturlarni boshqaradi",
    "5" : " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi"
  },

  "84":{
    "0" : "2",
    "1" : "Bir masalali OT ga qaysilar kiradi",
    "2" : " MS-DOS, MSX",
    "3" : " Windows, Unix, OS/2",
    "4" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "85":{
    "0" : "2",
    "1" : "Ko'p masalali OT ga qaysilar kiradi",
    "2" : " Windows, Unix, OS/2",
    "3" : " MS-DOS, MSX",
    "4" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "86":{
    "0" : "2",
    "1" : "Bir foydalanuvchilik OT ga qaysilar kiradi",
    "2" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "3" : " Windows, Unix, OS/2",
    "4" : " MS-DOS, MSX",
    "5" : " To'g'ri javob berilmagan"
  },

  "87":{
    "0" : "2",
    "1" : "Ko'p foydal#anuvchilik OT ga qaysilar kiradi",
    "2" : " Windows, Unix, OS/2",
    "3" : " MS-DOS, MSX",
    "4" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "88":{
    "0" : "2",
    "1" : "Operatsion tizim qobiqlari",
    "2" : " Foydalanuvchi uchun tizim funksiyalaridan unumli foydalanish interfeysini ta'inlab beruvchi dasturlar",
    "3" : " Xotirani boshqarish qurilasi",
    "4" : " Tashqi qurilmani boshqarish qurilmasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "89":{
    "0" : "2",
    "1" : "Quyidagi dasturlardan qaysi birlari grafik muxarrir hisoblanadi",
    "2" : " Paint, Adobe Photoshop",
    "3" : " Word",
    "4" : " Excel",
    "5" : " MS-DOS, MSX"
  },

  "90":{
    "0" : "2",
    "1" : "FAT32, Ext2, NTFS — bu …",
    "2" : " Paint, Adobe Photoshop",
    "3" : " Word",
    "4" : " Excel",
    "5" : " MS-DOS, MSX"
  },

  "91":{
    "0" : "2",
    "1" : "Windows operatsion tizimining boshqa operatsion tizimlardan tubdan farqi nimada?",
    "2" : " GUI va bir nechta dasturlarni ishlatish qobiliyati",
    "3" : " Hisoblashning ishonchliligi",
    "4" : " Buyruq tili yo'qligi",
    "5" : " Dialog operatsiyasi yo'qligi"
  },

  "92":{
    "0" : "2",
    "1" : "Shaxsiy kompyuterlar uchun mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
    "2" : " OS / 2",
    "3" : " QNX",
    "4" : " UNIX",
    "5" : " Win NT#"
  },

  "93":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
    "2" : " Bir martalik tarmoq OS va maxsus serverlarga ega OS",
    "3" : " korporativ va mahalliy tarmoq",
    "4" : " LAN va WAN",
    "5" : " Korxona va bo'limlar tarmog'i"
  },

  "94":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlarini yaratishda bir nechta yondashuvlar mavjud bular:",
    "2" : " Mahalliy operatsion tizimlar va qobiq, tarmoq funktsiyalari boshidanoq hisobga olingan",
    "3" : " Mahalliy va Shell",
    "4" : " Client va Server",
    "5" : " Ob'ektga yo'naltirilgan yondashuv"
  },

  "95":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimining masofaviy manbalar va xizmatlarga kirishni ta'minlovchi qismi;",
    "2" : " Mijozlar qismi",
    "3" : " Server qismi",
    "4" : " Aloqa qismi",
    "5" : " Mahalliy qism"
  },

  "96":{
    "0" : "2",
    "1" : "O'z resurslarini ommaviy ravishda taqdim etadigan tarmoq operatsion tizimining bir qismi;",
    "2" : " Server qismi",
    "3" : " mijoz qismi",
    "4" : " Aloqa qismi",
    "5" : " Mahalliy qism"
  },

  "97":{
    "0" : "2",
    "1" : "Tor ma'noda tarmoq operatsion tizimlari:",
    "2" : " Shaxsiy kompyuterning tarmoqda ishlashini ta'minlaydigan operatsion tizimlari",
    "3" : " Xabar almashish va resurslarni umumiy qoidalar asosida almashish maqsadida o'zaro ta'sir qiluvchi alohida #kompyuterlarning operatsion tizimlari to'plami - protokollar",
    "4" : " Boshqa kompyuterga kirishga imkon beruvchi operatsion tizimlar",
    "5" : " Operatsion tizimlari Boshqa kompyuterlarga resurslarni etkazib berish"
  },

  "98":{
    "0" : "2",
    "1" : "Vazifalari: uni ko'rish, qo'shish, o'qish, yozish va o'zgartirish (NTFS fayl tizimida) bu",
    "2" : " standart qarorlari",
    "3" : " Shaxsiy tasdiqlash",
    "4" : " Maxsus tasdiqlashlar",
    "5" : " Tashqi tasdiqlash"
  },

  "99":{
    "0" : "2",
    "1" : "NTFS fayl tizimi",
    "2" : " Yangi texnologik fayl tizimi",
    "3" : " Juda ishonchli",
    "4" : " disk maydonidan samarali foydalanadi",
    "5" : " To'g'ri javob yo'q"
  },

  "100":{
    "0" : "2",
    "1" : "Haqiqiy vaqtdagi operatsion tizimlar ana shunday tizimlardir bu",
    "2" : " Kiruvchi ishlarni belgilangan vaqt oralig'ida qayta ishlashni oshirib yubormaslik",
    "3" : " Dastur ob'ektning hozirgi holatiga qarab tanlanadi",
    "4" : " Dastur rejalashtirilgan ish jadvallari asosida tanlanadi",
    "5" : " Har xil texnologik ob'ektlar va jarayonlarni boshqaradi"
  },

  "101":{
    "0" : "2",
    "1" : "Quyidagi operatsion tizimlardan qaysi biri bitta foydalanuvchi va bitta dasturli operatsion tizimdir",
    "2" : " MS DOS",
    "3" : " OS / 2",
    "4" : " Linux",
    "5" : " OS EC",
    "6" : " UNIX"
  },

  "102":{
    "0" : "2",
    "1" : "Shaxsiy kompyuterlar uchun# mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
    "2" : " OS / 2",
    "3" : " QNX",
    "4" : " UNIX",
    "5" : " Win NT"
  },

  "103":{
    "0" : "2",
    "1" : "UNIX operatsion tizimining osongina ko'chirilishi yoki ko'chirilish xususiyati sababi",
    "2" : " Operatsion tizim kodlari yuqori darajadagi tilda yozilgan (masalan, C)",
    "3" : " kodlari assambleya tilida yozilgan",
    "4" : " Ko'p foydalanuvchi tizimi",
    "5" : " Ko'p dasturli tizim"
  },

  "104":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
    "2" : " Bir martalik tarmoq OT va maxsus serverlarga ega OT",
    "3" : " korporativ va mahalliy tarmoq",
    "4" : " LAN va WAN",
    "5" : " Korxona va bo'limlar tarmog'i"
  },

  "105":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlari ... .. qismlardan iborat",
    "2" : " To'rt",
    "3" : " Ikki",
    "4" : " Uch",
    "5" : " Besh"
  },

  "106":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimi deganda keng tushuniladi",
    "2" : " Xabar almashish va resurslarni birgalikda ishlatish uchun o'zaro ta'sir qiluvchi individual kompyuterlarning operatsion tizimlari to'plami yagona qoidalar - protokollar",
    "3" : " Shaxsiy kompyuterning uni tarmoqda ishlashini ta'minla#ydigan operatsion tizimlari",
    "4" : " Boshqa kompyuterga kirishga imkon beruvchi operatsion tizimlar",
    "5" : " Boshqa kompyuterlarga resurslarni etkazib beradigan operatsion tizimlar"
  },

  "107":{
    "0" : "2",
    "1" : "Foydalanuvchiga u yoki bu turga kirishga imkon beradigan huquqlar to'plami deyiladi (NTFS fayl tizimida)",
    "2" : " Shaxsiy ruxsatnomalar",
    "3" : " standart qarorlari",
    "4" : " Maxsus tasdiqlashlar",
    "5" : " Tashqi tasdiqlash"
  },

  "108":{
    "0" : "2",
    "1" : "Fayllarni boshqarish tizimi quyidagi funksiyalarni bajaradi:",
    "2" : " fayl operatsiyalari va foydalanuvchi interfeysi funktsiyalari",
    "3" : " diskdan tashqari qurilmalar bilan fayl sifatida ishlash",
    "4" : " diskdan tashqari qurilmalar bilan ishlash jarayonlarni boshqaradi",
    "5" : " foydalanuvchi interfeysi va fayllar bilan ishlashni amalga oshiradi"
  },

  "109":{
    "0" : "2",
    "1" : "Boshqarish mexanizmlari bilan protsessor vaqtining 90 foizini egallaydigan va nisbatan past ko'rsatkichlarga ega bo'lgan eng xavfsiz operatsion tizimlar quyidagilar:",
    "2" : " A sinf",
    "3" : " sinf B",
    "4" : " 3-sinf",
    "5" : " 4-sinf"
  },

  "110":{
    "0" : "2",
    "1" : "Yuqori mahsuldorlikka ega fayl tizimi",
    "2" : " HPFS",
    "3" : " FAT",
    "4" : " NTFS",
    "5" : " VFAT"
  },

  "111":{
    "0" : "2",
    "1" : "FAT fayl tizimidagi mantiqiy di#sk quyidagilarga bo'linadi.",
    "2" : " Tizim maydoni va ma'lumotlar maydoni",
    "3" : " Ma'lumotlar maydoni va kataloglari",
    "4" : " Katalog maydoni va tizim maydoni",
    "5" : " yuklash joylari"
  },

  "112":{
    "0" : "2",
    "1" : "FAT fayl tizimiga quyidagilar kiradi:",
    "2" : " Barcha javoblar to'g'ri",
    "3" : " manzilli mantiqiy disk bo'limlari",
    "4" : " Diskdagi bo'sh joy",
    "5" : " Diskdagi nuqsonli joylar"
  },

  "113":{
    "0" : "2",
    "1" : "Fayl bilan ishlash dasturi",
    "2" : " Fayl menejeri",
    "3" : " dastur menejeri",
    "4" : " xotira menejeri",
    "5" : " qurilmalar menejeri"
  },

  "114":{
    "0" : "2",
    "1" : "Zamonaviy fayllarni boshqarish tizimlari",
    "2" : " NTFS",
    "3" : " FAT",
    "4" : " Super FAT",
    "5" : " HPFS"
  },

  "115":{
    "0" : "2",
    "1" : "Fayl tizimidan foydalanish",
    "2" : " Ma'lumotlarni qayta ishlash dasturlari bilan bog'laning va disk maydonini markaziy ravishda taqsimlash",
    "3" : " disk maydoni ajratish",
    "4" : " Ma'lumotlar bazasi bilan bog'lash",
    "5" : " fayllari tarqatish"
  },

  "116":{
    "0" : "2",
    "1" : "Zamonaviy operatsion tizimlarda xotira:",
    "2" : " Har bir segment uchun sahifalar bo'limlari",
    "3" : " O'zgaruvchan bo'limlarda",
    "4" : " segmentlari",
    "5" : " Ruxsat etilgan bo'limlar"
  },

  "117":{
    "0" : "2",
    "1" : "Ochiq manbali operatsion tizimlarda",
    "2" : " Tizim kodlari ochiq, istalgan foydalanuvchi uni o'zgartirishi mumkin",
    "3" : " Dastur kodlari ochiq, a#mmo ularni o'zgartirish mumkin emas",
    "4" : " Tizim kodlari faqat mualliflar uchun ochiq",
    "5" : " Dastur kodlari yopish"
  },

  "118":{
    "0" : "2",
    "1" : "Ma'lumotlarning xotirada joylashishi",
    "2" : " Segment",
    "3" : " Yig'ma",
    "4" : " Qatlam",
    "5" : " Sahifa"
  },

  "119":{
    "0" : "2",
    "1" : "Katta hajmga, samarali foydalanishga va alohida avtonom energiya manbasiga ega bo'lgan xotira deyiladi",
    "2" : " Doimiy xotira",
    "3" : " Ikkilamchi xotira",
    "4" : " Protsessor registrlari",
    "5" : " Elektron disklar"
  },

  "120":{
    "0" : "2",
    "1" : "Zamonaviy operatsion tizimlardagi manbalar quyidagilarni anglatadi:",
    "2" : " Protsessor vaqti, xotira, kirish va chiqish kanallari, tashqi qurilmalar, dastur modullari, axborot resurslari, xabarlar va signallar",
    "3" : " Dastur modullari",
    "4" : " Xabarlar va signallar",
    "5" : " Axborot resurslari"
  },

  "121":{
    "0" : "2",
    "1" : "Ierarxiyadagi eng tezkor va eng qimmat xotira",
    "2" : " Protsessor registrlari",
    "3" : " Elektron disklar",
    "4" : " Asosiy xotira",
    "5" : " Qidiruv xotira"
  },

  "122":{
    "0" : "2",
    "1" : "Resurslarni samarali boshqarish uchun operatsion tizimlar:",
    "2" : " Resurslarni rejalashtirish va resurslar holatini kuzatish",
    "3" : " Dasturlarni boshqarish",
    "4" : " Resurslarni ajratish",
    "5" : " Resurslarning holatini kuzatib boring"
  },

  "123":{
    "0" : "2",
    "1" : "Operatsion tizimn#ing asosiy tarkibiy qismlaridan biri - yadro quyidagi funktsiyalarni bajaradi:",
    "2" : " Vazifalar va manbalarni boshqaradi",
    "3" : " Buyruqlarni qabul qiladi va qayta ishlaydi",
    "4" : " Tashqi qurilmalar yordamida ma'lumotlarni kiritish va chiqarishni amalga oshiradi",
    "5" : " Mantiqiy ma'lumotlar qatlami bilan ishlaydi"
  },

  "124":{
    "0" : "2",
    "1" : "Hisoblash tizimini boshqarish jarayonlari ma'lum vaqt chegaralarini qondiradigan operatsion tizimlar",
    "2" : " Haqiqiy vaqt rejimida ishlaydigan operatsion tizimlar",
    "3" : " Ommaviy rejimda ishlaydigan operatsion tizimlar",
    "4" : " Tarqatilgan operatsion tizimlar",
    "5" : " Monolitik operatsion tizimlar"
  },

  "125":{
    "0" : "2",
    "1" : "Ko'p dasturli va ko'p foydalanuvchili operatsion tizimlar",
    "2" : " UNIX operatsion tizimlari",
    "3" : " MS DOS",
    "4" : " Win 3x",
    "5" : " Win 2.0."
  },

  "126":{
    "0" : "2",
    "1" : "Mikroyadorli operatsion tizimlarida mikroyadro quyidagi funktsiyalarni o'z ichiga oladi:",
    "2" : " Minimal talab qilinadigan xususiyatlar",
    "3" : " Operatsion tizimni yuklash funktsiyalari",
    "4" : " Xotirani ajratish funktsiyalari",
    "5" : " Kiritish-chiqarish funktsiyalari"
  },

  "127":{
    "0" : "2",
    "1" : "Modulli printsip yordamida yaratilgan operatsion tizimlarda das#tur quyidagilardan iborat:",
    "2" : " Mustaqil qismlardan (modullardan)",
    "3" : " Bitta moduldan",
    "4" : " O'zaro bog'liq bo'lgan bir nechta qismlar",
    "5" : " Ko'p qavatli, o'zaro bog'liq tizim"
  },

  "128":{
    "0" : "2",
    "1" : "Kasperskiy antivirus dasturining korporativ versiyasi, u yirik tarmoqlar uchun mo'ljallangan va ularning xavfsizligini quyidagi xususiyatlar bilan ta'minlaydi:",
    "2" : " Markazlashtirilgan masofadan boshqarish pultini taqdim etadi, to'liq statistik ma'lumotlarni taqdim etadi va katta hajmdagi ma'lumotlar bilan ishlaydi (ma'lumotlar bazasi bilan)",
    "3" : " Qulay o'rnatish va o'rnatish",
    "4" : " Cheklangan resurslar bilan ishlaydi",
    "5" : " Katta hajmdagi ma'lumotlar bazalari bilan ishlaydi"
  },

  "129":{
    "0" : "2",
    "1" : "Kasperskiy antivirus dasturining shaxsiy versiyasi quyidagi xususiyatlarga ega",
    "2" : " Qulay o'rnatish va sozlash",
    "3" : " Cheklangan resurslar bilan ishlaydi",
    "4" : " Katta hajmdagi ma'lumotlar bazalari bilan ishlaydi",
    "5" : " Markazlashtirilgan masofadan boshqarishni ta'minlaydi"
  },

  "130":{
    "0" : "2",
    "1" : "Ajratilgan birliklar zaxiralari uchun resurslar ham topiladi, shuning uchun ular:",
    "2" : " Muayyan qoidalarga muvofiq# tarqatiladi",
    "3" : " Muayyan algoritm bo'yicha taqsimlanadi",
    "4" : " Rejaga muvofiq",
    "5" : " Doimiy ravishda"
  },

  "131":{
    "0" : "2",
    "1" : "Tizimda paydo bo'lgan har bir yangi jarayon quyidagicha davom etadi:",
    "2" : " Tayyor holatda",
    "3" : " Ijro holatida",
    "4" : " Vaziyatni to'xtatish",
    "5" : " Kutish holatiga"
  },

  "132":{
    "0" : "2",
    "1" : "Jarayon quyidagi sabablarga ko'ra ishlaydigan holatdan chiqadi:",
    "2" : " Barcha javoblar to'g'ri",
    "3" : " operatsion tizimlari jarayonni to'xtatganda",
    "4" : " Vaqt bo'limi tugaganda",
    "5" : " Jarayon ba'zi bir voqea yoki ma'lumotlarning bajarilishini kutmoqda"
  },

  "133":{
    "0" : "2",
    "1" : "Tizimdagi jarayonlar sonini o'zgartiradigan operatsiyalar",
    "2" : " Bir martalik operatsiyalar",
    "3" : " Qayta foydalaniladigan operatsiyalar",
    "4" : " ustuvor operatsiyalar",
    "5" : " operatsiyalari tayyor holatga keltirish"
  },

  "134":{
    "0" : "2",
    "1" : "Ushbu operatsion tizimlarning qaysi biri ochiq manba hisoblanadi",
    "2" : " Linux",
    "3" : " MS DOS",
    "4" : " UNIX",
    "5" : " WinXP"
  },

  "135":{
    "0" : "2",
    "1" : "Protsessor vaqti:",
    "2" : " cheklangan resurs",
    "3" : " Cheksiz resurs",
    "4" : " Doimiy manba",
    "5" : " seriyali resurs"
  },

  "136":{
    "0" : "2",
    "1" : "Xotirani sobit bo'limlarga ajratishda",
    "2" : " Xotira oldindan aniq o'lchamdagi aniq bo'limlarga bo'linadi",
    "3" : " Ma'lumotlar qismli fayllarga bo'linadi",
    "4" : " #Axborot hajmi bo'yicha joylashtirilgan",
    "5" : " Memory sahifalarga bo'lingan"
  },

  "137":{
    "0" : "2",
    "1" : "NTFS fayllik tizimi nechta bitli prоttsessоr-lar bilan ishlaydi?",
    "2" : " 16 va 32",
    "3" : " 8 va 16",
    "4" : " 32",
    "5" : " 16"
  },

  "138":{
    "0" : "2",
    "1" : "Xоtira ierarxiyasi bo'yicha, eng qimmat tezkоr va qimmat xоtira",
    "2" : " prоtsessоr registrlari",
    "3" : " tashqi xоtira",
    "4" : " elektrоn disklar",
    "5" : " asоsiy xоtira"
  },

  "139":{
    "0" : "2",
    "1" : "Dasturiy ta`minоt quyidagi bo'limlardan ibоrat",
    "2" : " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt, xizmatchi dasturiy ta`minоt, amaliy dasturiy ta`minоt",
    "3" : " tizimli dasturiy ta`minоt",
    "4" : " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt",
    "5" : " asоs dasturiy ta'minоt"
  },

  "140":{
    "0" : "2",
    "1" : "Windows ОT larining bоshqa ОТ lardan printsipial farqi",
    "2" : " grafik interfeysi va bir nechta ilоvalar bilan birgalikda ishlash",
    "3" : " dialоgli ish rejimi",
    "4" : " hisоblashlar ishоnchliligi",
    "5" : " Kоmanda tili yo'qligi"
  },

  "141":{
    "0" : "2",
    "1" : "Amaliy dasturiy ta`minоt – dasturlari",
    "2" : " aniq sоha masalalarini yechishni ta`minlоvchi dastur-lardir",
    "3" : " tizimga xizmat qilu-vchi dasturlar",
    "4" : " interfeysni ta`minlоvchi dasturlar",
    "5" : " tizimni# sоzlоvchi dasturlar"
  },

  "142":{
    "0" : "2",
    "1" : "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
    "2" : " NTFS",
    "3" : " BFS",
    "4" : " FAT",
    "5" : " JFS"
  },

  "143":{
    "0" : "2",
    "1" : "Windows NT/2000/XP ijrо tizimi quyidagi kоmpоnentalardan ibоrat",
    "2" : " jarayonlar, virtual xоtira, оb`ektlar dispetcheri, xavfsizlik mоnitоri, kiritish chiqarish dispetcheri, lоkal prоtseduralarni chaqirish vоsitasi",
    "3" : " jarayonlar, virtual xоtira, оb`ektlar dispetcheri",
    "4" : " jarayonlar, virtual xоtira, оb`ektlar kiritish chiqarish dispetcherlari",
    "5" : " lоkal prоtseduralarni chaqirish vоsitalari"
  },

  "144":{
    "0" : "2",
    "1" : "Quyidagi ОT larning qaysi biri ko'p masalali va ko'p fоydalanuvchili hisоblanadi",
    "2" : " UNIX",
    "3" : " MS-DOS, MSX",
    "4" : " ОS YeS, OS/2",
    "5" : " WINDOWS 95"
  },

  "145":{
    "0" : "2",
    "1" : "Tarmоq оperatsiоn tizimining qaysi qismi ilоvalardan barcha so'rоvlarni qabul qilib ularni analiz qiladi",
    "2" : " server qismi",
    "3" : " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
    "4" : " klient qismi",
    "5" : " kоmmunikatsiоn vоsitalar"
  },

  "146":{
    "0" : "2",
    "1" : "Prоtsessоr vaqti",
    "2" : " chegaralangan resurs",
    "3" : " dоimiy resurs",
    "4" : " vaqtinchalik resurs",
    "5" : " chegaralanmaga#n resurs"
  },

  "147":{
    "0" : "2",
    "1" : "Multidasturlash rejimida ishlaydigan оperatsiоn tizimlar",
    "2" : " rivоjlanish 3-davriga yuzaga keldi",
    "3" : " rivоjlanish 1-davriga yuzaga keldi",
    "4" : " rivоjlanish 4-davriga yu-zaga keldi",
    "5" : " rivоjlanish 2-davriga yu-zaga keldi"
  },

  "148":{
    "0" : "2",
    "1" : "Fоydalanuvchi tizim bilan ishlayotgan vaqtda, u o'rnatadigan parametrlarni qisqartirish, parametrlarni o'rnatish vaqtini tejashga imkоn beradigan printsip",
    "2" : " standart xоlatlar (pо umоl-chaniyu) printsipi",
    "3" : " funktsiоnal tanlanish printsipi",
    "4" : " generatsiya printsipi",
    "5" : " chastоta printsipi"
  },

  "149":{
    "0" : "2",
    "1" : "Qanday axbоrоtlar security accounts manager da saqlanadi",
    "2" : " fоydalanuvchilarning qayd yo-zuvi haqidagi",
    "3" : " Windows оperatsiоn tizim fоydalanuvchi-lari haqidagi",
    "4" : " ma'lumоtlar bazasidagi axbоrоtlar",
    "5" : " ro'yxatdan o'tgan fоyda-lanuvchilar haqidagi"
  },

  "150":{
    "0" : "2",
    "1" : "Tizimli dasturiy ta`minоt bu",
    "2" : " kоmpyuter tizimining dastur-lari va bevоsita apparat ta`minоti bilan o'zarо bоglan-ishini ta`minlaydi",
    "3" : " amaliy masalalarni yechimini ta`minlaydi",
    "4" : " kоmpyuter ishini nazоrat qiladi",
    "5" : " kоmpyu#ter qurilmalarini ishlashini ta`minlaydi"
  },

  "151":{
    "0" : "2",
    "1" : "Mоnоlit ОT larda tuzilishi",
    "2" : " 2 ta bo'lakdan ibоrat (bоsh dastur va prоtseduralar)",
    "3" : " 5 ta satxdan ibоrat",
    "4" : " 6 ta satxdan ibоrat (ko'p satxli dastur)",
    "5" : " 3 ta satxdan ibоrat (bоsh dastur, prоtsedura va ser-vis dasturlari)"
  },

  "152":{
    "0" : "2",
    "1" : "Amaliy dasturiy ta`minоt",
    "2" : " ma`lum ish jоyida aniq ma-salalarni yechishga yordam beradigan dastur",
    "3" : " hisоblash tizimini nazоrat qiluvchi",
    "4" : " stastikani оlib beradi",
    "5" : " qurilmalarni ishlatuvchi"
  },

  "153":{
    "0" : "2",
    "1" : "Multidasturlash bu",
    "2" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
    "3" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi",
    "4" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
    "5" : " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaq-tning o'zida bir nechta dastur bajariladi"
  },

  "154":{
    "0" : "2",
    "1" : "Matn redaktоri Word bu",
    "2" : " amaliy da#sturiy",
    "3" : " asоs dasturiy",
    "4" : " xizmatchi dasturiy",
    "5" : " tizimli dasturiy"
  },

  "155":{
    "0" : "2",
    "1" : "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
    "2" : " NTFS",
    "3" : " JFS",
    "4" : " BFS",
    "5" : " FAT"
  },

  "156":{
    "0" : "2",
    "1" : "Tizimli dasturiy taminоt nechtaga bo'linadi",
    "2" : " 3",
    "3" : " 5",
    "4" : " 2",
    "5" : " 4"
  },

  "157":{
    "0" : "2",
    "1" : "Windows server bu qaysi kompaniyaga tegishli",
    "2" : " Microsoft",
    "3" : " IBM",
    "4" : " Unix",
    "5" : " PS/OS"
  },

  "158":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Linux serveri hisoblanadi",
    "2" : " Ubuntu, Debian, CentOS",
    "3" : " Ubuntu, IBMm Debian",
    "4" : " Microsoft, Debian,",
    "5" : " IBM, Microsoft, Oracle"
  },

  "159":{
    "0" : "2",
    "1" : "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
    "2" : " Canonical",
    "3" : " Microsoft",
    "4" : " IBM",
    "5" : " Oracle"
  },

  "160":{
    "0" : "2",
    "1" : "Operatsion tizim nima",
    "2" : " operatsion tizim bu foydalanuvchi va kompyuter o'rtasidagi muloqatni ta'minlab beruvchi dasturlar jamlanmasi",
    "3" : " Operatsion tizim bu grafik interfeysni ikkilik sanoqqa o'tkazib beruvchi dasturlar jamlanmasi",
    "4" : " Amaliy dasturlar jamlanmasi",
    "5" : " Multimediyali dasturlar jamlanmasi"
  },

  "161":{
    "0" : "2",
    "1" : "Operatsion tizim asoson ...",
    "2" : " tizimli dasturlar jamlanmasi",
    "3" : " Amalaiy dasturlar jamlanmasi",
    "4" : " Multimediyali qurilmalar jamlanmasi",
    "5" : " Qo#biqdan iborat"
  },

  "162":{
    "0" : "2",
    "1" : "Operatsion tizimda hisoblash tizimining tarkibi bu",
    "2" : " Konfiguratsiya",
    "3" : " Drayverlar",
    "4" : " Aparat vositalar",
    "5" : " amaliy dasturlar"
  },

  "163":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri Operatsion tizimning asosiy tashkil etuvchilari hisoblaniladi",
    "2" : " Yadro, kiritish-chiqarish tizimi, kamanda prosessori, fayl tizimi",
    "3" : " Amaliy dasturlar, Yadro, Fayl tizimi",
    "4" : " Kamanda prosessori, konfiguratsiya",
    "5" : " To'g'ri javob berilmagan"
  },

  "164":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi yadro bu",
    "2" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "3" : " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "165":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi kiritish - chiqarish tizimi bu",
    "2" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "3" : " ma#salalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "4" : " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "166":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi kamanda prosessori bu",
    "2" : " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
    "3" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
  },

  "167":{
    "0" : "2",
    "1" : "Operatsion tizimning asosiy tashkil etuvchisi fayl tizimi bu",
    "2" : " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi.",
    "3" : " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yi#cha asos funksiyalarni ta’minlaydi.",
    "4" : " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
    "5" : " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi"
  },

  "168":{
    "0" : "2",
    "1" : "Operatsion tizim interfeysi bu",
    "2" : " Foydalanuvchi aloqa o'rnatadigan qulay qobiq",
    "3" : " Drayverlar jamlanmasi",
    "4" : " Fayl tizimi",
    "5" : "To'g'ri javob berilmagan"
  },

  "169":{
    "0" : "2",
    "1" : "Buyruq interpretatori bu",
    "2" : " Dastur tilidan mashina tiliga o'giradi (Tarjimon)",
    "3" : " Drayverlarni ishga tushiradi",
    "4" : " Amaliy dasturlarni ishga tushiradi",
    "5" : "To'g'ri javob berilmagan"
  },

  "170":{
    "0" : "2",
    "1" : "Kompyuter tashkil etuvchisi bu",
    "2" : " Turli xil qurilmalarni boshqarish dasturi",
    "3" : " Multimediya qurilmalarni boshqarish",
    "4" : " O'yinlarni yaratish dasturi",
    "5" : " Tizimni boshqarish"
  },

  "171":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 2-avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1955 - 1965",
    "3" : " 1965 - 1975",
    "4" : " 1945 - 1955",
    "5" : " 1985 - 1995"
  },

  "172":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 3 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1965 - 1980",
    "3" : " 1945 -# 1955",
    "4" : " 1955 - 1965",
    "5" : " 1985 - 1995"
  },

  "173":{
    "0" : "2",
    "1" : "Operatsion tizimning rivojlanish tarixi 4 - avlod nechinchi yillarni o'z ichiga oladi.",
    "2" : " 1980 yildan to hozirgacha",
    "3" : " 1965 - 1980",
    "4" : " 1955 - 1965",
    "5" : " 1945 - 1955"
  },

  "174":{
    "0" : "2",
    "1" : "Birinchi avlod kompyuterlari analitik mashina kim tamonidan yaratilgan.",
    "2" : " Charles Babbage",
    "3" : " Inix Helton",
    "4" : " Shelton Holmz",
    "5" : " Daniel Tompson"
  },

  "175":{
    "0" : "2",
    "1" : "4 - avlod kampyuterlariga qanday kompyuterlar kiradi",
    "2" : " Personal va super kompyuterlar",
    "3" : " Lampali",
    "4" : " Integral sxemali kompyuterlar",
    "5" : " hali yaratilmagan"
  },

  "176":{
    "0" : "2",
    "1" : "Multipleksing bu",
    "2" : " resurslar ishlashining ketma – ketligi va davomiyligi",
    "3" : " Drayverlar jamlanmasi",
    "4" : " amaliy dasturlar jamlanmasi",
    "5" : " to'g'ri javob berilmagan"
  },

  "177":{
    "0" : "2",
    "1" : "Multipleksingning ikki xil ko'rinishi bor bular",
    "2" : " Vaqtinchalik, Ajratilgan xotira",
    "3" : " Ajratilmagan xotira, Doimiy xotira",
    "4" : " Qobiq, Drayverlar",
    "5" : " Interfeyslar, amaliy dasturlar"
  },

  "178":{
    "0" : "2",
    "1" : "Boot Loader – bu",
    "2" : " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
    "3" : " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlaga#ncha resurslar ketma-ketlikda ishlatadi",
    "4" : " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
    "5" : " Qurilmalarni o'rnatadi"
  },

  "179":{
    "0" : "2",
    "1" : "Interrupts (Uzilish) – bu",
    "2" : " bir dasturni bajarilishini hozirgi vaqtda yanada muhimroq boshqa dasturni tezkor bajarish maqsadida vaqtincha to’xtatilishidir",
    "3" : " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
    "4" : " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
    "5" : " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi"
  },

  "180":{
    "0" : "2",
    "1" : "Masalalarni qayta ishlash rejimi bo'yicha operatsion tizimlar sinflanishi",
    "2" : " bir vazifali , ko'p vazifali",
    "3" : " bir vazifali",
    "4" : " ko'p vazifali",
    "5" : " ko'p foydalanuvchi"
  },

  "181":{
    "0" : "2",
    "1" : "Meynfraymlar bu",
    "2" : " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
    "3" :   "Opejation tizimlari",
    "4" : " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
    "5" : " juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
  },

  "182":{
    "0" : "2",
    "1" : "Operatsion tizimlar tuzilishiga ko'ra sinflanishi",
    "2" : " Monolit, ko'p sathli, Klient -Server, Mikro yadroli",
    "3" : " Monolit, Ko'p sathli",
    "4" : " Klient - server",
    "5" : " Mikro yadroli"
  },

  "183":{
    "0" : "2",
    "1" : "Monolit operatsion tizimlar bu",
    "2" : " bu biron bir aniq strukturaga ega bo’lmagan tuzilishga ega operatsion tizim hisoblanadi.",
    "3" : " Faqat sever bilan ishlovchi OT",
    "4" : " Faqat yadro bilan ishlovchi OT",
    "5" : " To'g'ri javob berilmagan"
  },

  "184":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi# biri Mikroyadroli operatsion tizim hisoblaniladi",
    "2" : " linux",
    "3" : " To'g'ri javob berilmagan",
    "4" : " Windows",
    "5" : " Solaris"
  },

  "185":{
    "0" : "2",
    "1" : "Operatsion tizimga qo'yiladigan talablar bular",
    "2" : " Barcha javoblar to'g'ri",
    "3" : " dasturlar va a'luotlarni himoyalash",
    "4" : " Samaradorlik, Moslashuvchanlik, Yangilanish",
    "5" : " Ishonchlilik, Qulaylilik, aniqlik"
  },

  "186":{
    "0" : "2",
    "1" : "BIOS bu",
    "2" : " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi",
    "3" : " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
    "4" : " amaliy dasturlarni boshqaradi",
    "5" : " Barcha javoblar nato'g'ri"
  },

  "187":{
    "0" : "2",
    "1" : "Drayverlar bu",
    "2" : " Tashqi qurilmalarning fiziki darajada ishlashini boshqaruvchi dasturlardir",
    "3" : " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
    "4" : " amaliy dasturlarni boshqaradi",
    "5" : " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi"
  },

  "188":{
    "0" : "2",
    "1" : "Bir masalali OT ga qaysilar kiradi",
    "2" : " MS-DOS, MSX",
    "3" : " Windows, Unix, OS/2",
    "4" : " MS-DOS, Windows 3.x,# OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "189":{
    "0" : "2",
    "1" : "Ko'p masalali OT ga qaysilar kiradi",
    "2" : " Windows, Unix, OS/2",
    "3" : " MS-DOS, MSX",
    "4" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "190":{
    "0" : "2",
    "1" : "Bir foydalanuvchilik OT ga qaysilar kiradi",
    "2" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "3" : " Windows, Unix, OS/2",
    "4" : " MS-DOS, MSX",
    "5" : " To'g'ri javob berilmagan"
  },

  "191":{
    "0" : "2",
    "1" : "Ko'p foydalanuvchilik OT ga qaysilar kiradi",
    "2" : " Windows, Unix, OS/2",
    "3" : " MS-DOS, MSX",
    "4" : " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "192":{
    "0" : "2",
    "1" : "Operatsion tizim qobiqlari",
    "2" : " Foydalanuvchi uchun tizim funksiyalaridan unumli foydalanish interfeysini ta'inlab beruvchi dasturlar",
    "3" : " Xotirani boshqarish qurilasi",
    "4" : " Tashqi qurilmani boshqarish qurilmasi",
    "5" : " To'g'ri javob berilmagan"
  },

  "193":{
    "0" : "2",
    "1" : "Quyidagi dasturlardan qaysi birlari grafik muxarrir hisoblanadi",
    "2" : " Paint, Adobe Photoshop",
    "3" : " Word",
    "4" : " Excel",
    "5" : " MS-DOS, MSX"
  },

  "194":{
    "0" : "2",
    "1" : "FAT32, Ext2, NTFS — bu …",
    "2" : " Paint, Adobe Photoshop",
    "3" : " Word",
    "4" : " Excel",
    "5" : " MS-DOS, MSX"
  },

  "195":{
    "0" : "2",
    "1" : "Shaxsiy kompyuterlar uchun mo'l#jallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
    "2" : " OS / 2",
    "3" : " QNX",
    "4" : " UNIX",
    "5" : " Win NT"
  },

  "196":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
    "2" : " Bir martalik tarmoq OS va maxsus serverlarga ega OS",
    "3" : " korporativ va mahalliy tarmoq",
    "4" : " LAN va WAN",
    "5" : " Korxona va bo'limlar tarmog'i"
  },

  "197":{
    "0" : "2",
    "1" : "NTFS fayl tizimi",
    "2" : " Yangi texnologik fayl tizimi",
    "3" : " Juda ishonchli",
    "4" : " disk maydonidan samarali foydalanadi",
    "5" : " To'g'ri javob yo'q"
  },

  "198":{
    "0" : "2",
    "1" : "Quyidagi operatsion tizimlardan qaysi biri bitta foydalanuvchi va bitta dasturli operatsion tizimdir",
    "2" : " MS DOS",
    "3" : " OS / 2",
    "4" : " OS EC",
    "5" : " UNIX"
  },

  "199":{
    "0" : "2",
    "1" : "Shaxsiy kompyuterlar uchun mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
    "2" : " OS / 2",
    "3" : " QNX",
    "4" : " UNIX",
    "5" : " Win NT"
  },

  "200":{
    "0" : "2",
    "1" : "Tarmoq operatsion tizimlari ... .. qismlardan iborat",
    "2" : " To'rt",
    "3" : " Ikki",
    "4" : " Uch",
    "5" : " Besh"
  },

  "201":{
    "0" : "2",
    "1" : "Yuqori mahsuldorlikka ega fayl tizimi",
    "2" : " HPFS",
    "3" : " FAT",
    "4" : " NTFS",
    "5" : "VFAT"
  },

  "202":{
    "0" : "2",
    "1" : "FAT fayl tizimidagi mantiqiy disk quyidagilarga bo'linadi.",
    "2" : " Tizim maydoni va ma'lumotlar maydoni",
    "3" : " Ma'lumotlar maydoni va kataloglari",
    "4" : " Katalog maydoni va tizim maydoni",
    "5" : " yuklash joylari"
  },

  "203":{
    "0" : "2",
    "1" : "FAT fayl tizimiga quyidagilar kiradi:",
    "2" : " Barcha javoblar to'g'ri",
    "3" : " Manzilli mantiqiy disk bo'limlari",
    "4" : " Diskdagi bo'sh joy",
    "5" : " Diskdagi nuqsonli joylar"
  }

};

Map<String, Map<String,String>>makro={
  "0":{
    "0" : "2",
    "1" : "Makroiqtisodiyot qanday darajadagi iqtisodiyot?",
    "2" : "Butun milliy va jahon iqtisodiyoti;",
    "3" : "Butun xalq xo`jaligi;",
    "4" : " Iqtisodiyotning davlat sektori;",
    "5" : "Iqtisodiyotning kooperativ sektori;"
  },
  "1":{
    "0" : "2",
    "1" : "Makroiqtisodiyot qanday darajadagi iqtisodiyot?",
    "2" : "Butun milliy va jahon iqtisodiyoti;",
    "3" : "Butun xalq xo`jaligi;",
    "4" : " Iqtisodiyotning davlat sektori;",
    "5" : "Iqtisodiyotning kooperativ sektori;"
  },

  "2":{
    "0" : "2",
    "1" : "Milliy iqtisod tarmoq tuzilishining rivojlanishiga ta’sir ko`rsatuvchi asosiy omil nima?",
    "2" : "Mehnat taqsimotining chuqurlashuvi;",
    "3" : "Fan-texnika taraqqiyoti;",
    "4" : "Iqtisodiy integrasiya;",
    "5" : "Mehnat kooperasiyasi;"
  },

  "3":{
    "0" : "2",
    "1" : "Makroiqtisodiy ko`rsatgichlar yordamida nimalar taxlil qilinadi?",
    "2" : "Milliy ishlab chiqarish xajmi; milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi omillar; milliy iqtisodiyotdagi muvozanatlik va bandlik",
    "3" : "ishlab chiqarish xajmi; milliy iqtisodiyot faoliyat qilishiga ta’sir qiluvchi omillar",
    "4" : "milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi omillar aniqlanadi;",
    "5" : "milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi yotdagi muvozanatlik va bandlikka baxo beriladi;"
  },

  "4":{
    "0" : "2",
    "1" : "Nima uchun jami ijtimoiy mahsulot ko`rsatgichi milliy iqtisodiyotning rivojlanish darajasini to`liq tavsiflab berolmaydi?",
    "2" : "Oraliq mahsulotlar qiymati bir necha marta hisobga olinadi;",
    "3" : "Faqat moddiy ishlab chiqarish soxalari natijalarini hisobga olish bilan cheklanadi;",
    "4" : "Xizmatlar qiymatini o`z ichiga olmaydi;",
    "5" : "Bozor baxolari bo`yicha hisoblanmaydi;"
  },

  "5":{
    "0" : "2",
    "1" : "Pirovard mahsulot – bu:",
    "2" : "Iste’mol uchun tayyor bo`lgan, sotilgan yoki sotiladigan tovar va xizmatlarning bozor baxosidagi xajmi;",
    "3" : "Ishlov beriladigan mahsulot;",
    "4" : "Qayta ishlanadigan mahsulot;",
    "5" : "Sotish maqsadida xarid qilingan tovarlar;"
  },

  "6":{
    "0" : "2",
    "1" : "Milliy boylik tushunchasiga quyidagilardan qaysi biri mos?",
    "2" : "ajdodlar mehnati bilan yaratilgan va jamiyatda jamg‘arilib kelingan ne'matlar va tabiat in'omlari yig‘indisi",
    "3" : "holi qo‘lida to‘plangan mablag‘lar",
    "4" : "yer osti va yer usti boyliklari",
    "5" : "ishloq ho‘jaligida yaratilgan mahsulotlar"
  },

  "7":{
    "0" : "2",
    "1" : "Ko‘rsatilganlardan qaysi biri iqtisodiy potensialning omillariga kiritilmaydi?",
    "2" : "jamg‘arilgan potensial",
    "3" : "mehnat potensiali",
    "4" : "ilm-ma'rifat potensiali",
    "5" : "texnologik, tabiiy potensial"
  },

  "8":{
    "0" : "2",
    "1" : "Pul nima?",
    "2" : "umumiy ekvivalent vazifasini bajaruvchi mahsus tovar",
    "3" : "maxsus tovar",
    "4" : "qimmatbaho qog‘oz",
    "5" : "valyuta"
  },

  "9":{
    "0" : "2",
    "1" : "Qiymat qonunining ijtimoiy taraqqiyotdagi eng muhim vazifasi nima?",
    "2" : "texnika taraqqiyotini rag‘batlantiradi",
    "3" : "ishlab chiqarishni tartibga solish",
    "4" : "ijtimoiy mehnat xarajatlarini tejashga undaydi",
    "5" : "tovar ishlab chiqaruvchilarni raqobatlashtiradi"
  },

  "10":{
    "0" : "2",
    "1" : "Makroiqtisodiy maqsadlar nima?",
    "2" : "Iqtisodiy o‘sish, ishsizlik, inflyatsiya va tashqi savdo balansi",
    "3" : "Iqtisodiy o‘sish, ishsizlik, inflyatsiya va korxona rentabelligi",
    "4" : "ishsizlik, inflyatsiya va tashqi savdo balansi",
    "5" : "monopol bozorning tugatilishi"
  },

  "11":{
    "0" : "2",
    "1" : "Makroiqtisodiy muvozanat – bu ........",
    "2" : "tovar va xizmatlar, pul, sarmoya va mehnat bozoridagi muvozanat.",
    "3" : "tovar va xizmatlar bozoridagi muvozanat",
    "4" : "pul bozoridagi muvozanat",
    "5" : "sarmoya bozoridagi muvozanat"
  },

  "12":{
    "0" : "2",
    "1" : "Milliy daromad quyidagicha aniqlanadi",
    "2" : "SM dan egri soliqlarni ayirish orqali",
    "3" : "YaIM dan amortizatsiya xarajatlarini ayirish orqali",
    "4" : "Aholi daromadlariga to‘g‘ri soliqlarni qo‘shish orqali",
    "5" : "YaIM va SMning yig‘indisi hisoblanadi"
  },

  "13":{
    "0" : "2",
    "1" : "Ouken qonuni nimani ifodalaydi?",
    "2" : "Iqtisodiy rivojlanish va ishsizlik o‘rtasidagi munosabatni",
    "3" : "Inflyatsiya va ishsizlik o‘rtasidagi munosabatni",
    "4" : "Iqtisodiy rivojlanish va inflyatsiya o‘rtasidagi munosabatni",
    "5" : "Inflyatsiya va tashqi savdo balansi o‘rtasidagi munosabatni"
  },

  "14":{
    "0" : "2",
    "1" : "Fillips egrisi nimani ifodalaydi?",
    "2" : "Inflyatsiya va ishsizlik o‘rtasidagi munosabatni",
    "3" : "Iqtisodiy rivojlanish va inflyatsiya o‘rtasidagi munosabatni",
    "4" : "Iqtisodiy rivojlanish va ishsizlik o‘rtasidagi munosabatni",
    "5" : "nflyatsiya va tashqi savdo balansi o‘rtasidagi munosabatni"
  },

  "15":{
    "0" : "2",
    "1" : "Makroiqtisodiyot qanday darajadagi iqtisodiyot?",
    "2" : "Butun milliy va jahon iqtisodiyoti",
    "3" : "Butun xalq xo`jaligi",
    "4" : "Iqtisodiyotning davlat sektori",
    "5" : "Iqtisodiyotning kooperativ sektori;"
  },

  "16":{
    "0" : "2",
    "1" : "Milliy iqtisod tarmoq tuzilishining rivojlanishiga ta’sir ko`rsatuvchi asosiy omil nima?",
    "2" : "Mehnat taqsimotining chuqurlashuvi;",
    "3" : "Fan-texnika taraqqiyoti;",
    "4" : "Iqtisodiy integrasiya;",
    "5" : "Mehnat kooperasiyasi;"
  },

  "17":{
    "0" : "2",
    "1" : "Makroiqtisodiy ko`rsatgichlar yordamida nimalar taxlil qilinadi?",
    "2" : "Milliy ishlab chiqarish xajmi; milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi omillar;",
    "3" : "milliy iqtisodiyotdagi muvozanatlik va bandlik ishlab chiqarish xajmi;",
    "4" : "milliy iqtisodiyot faoliyat qilishiga ta’sir qiluvchi omillar milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi omillar aniqlanadi;",
    "5" : "milliy iqtisodiyot faoliyat qilishiga ta’sir ko`rsatuvchi yotdagi muvozanatlik va bandlikka baxo beriladi;"
  },

  "18":{
    "0" : "2",
    "1" : "Nima uchun jami ijtimoiy mahsulot ko`rsatgichi milliy iqtisodiyotning rivojlanish darajasini to`liq tavsiflab berolmaydi?",
    "2" : "Oraliq mahsulotlar qiymati bir necha marta hisobga olinadi;",
    "3" : "Faqat moddiy ishlab chiqarish soxalari natijalarini hisobga olish bilan cheklanadi;",
    "4" : "Xizmatlar qiymatini o`z ichiga olmaydi;",
    "5" : "Bozor baxolari bo`yicha hisoblanmaydi;"
  },

  "19":{
    "0" : "2",
    "1" : "Pirovard mahsulot – bu:",
    "2" : "Iste’mol uchun tayyor bo`lgan, sotilgan yoki sotiladigan tovar va xizmatlarning bozor baxosidagi xajmi;",
    "3" : "Ishlov beriladigan mahsulot;",
    "4" : "Qayta ishlanadigan mahsulot;",
    "5" : "Sotish maqsadida xarid qilingan tovarlar;"
  },

  "20":{
    "0" : "2",
    "1" : "Milliy boylik tushunchasiga quyidagilardan qaysi biri mos?",
    "2" : "ajdodlar mehnati bilan yaratilgan va jamiyatda jamg‘arilib kelingan ne'matlar va tabiat in'omlari yig‘indisi",
    "3" : "aholi qo‘lida to‘plangan mablag‘lar",
    "4" : "yer osti va yer usti boyliklari",
    "5" : "qishloq ho‘jaligida yaratilgan mahsulotlar"
  },

  "21":{
    "0" : "2",
    "1" : "Qiymat qonunining ijtimoiy taraqqiyotdagi eng muhim vazifasi nima?",
    "2" : "texnika taraqqiyotini rag‘batlantiradi",
    "3" : "ishlab chiqarishni tartibga solish",
    "4" : "ijtimoiy mehnat xarajatlarini tejashga undaydi",
    "5" : "tovar ishlab chiqaruvchilarni raqobatlashtiradi"
  },

  "22":{
    "0" : "2",
    "1" : "Mulkiy munosabatlar deganda nimani tushunasiz?",
    "2" : "mulkni o‘zlashtirish jarayonida vujudga keladigan munosabat",
    "3" : "mulk moddiy boylik degani",
    "4" : "mulk moddiy boyliklar, kiyim-kechaklar, oziq-ovqatlar, zebi-ziynatlar",
    "5" : "mulk biror shaxs yoki korxona, tashkilotlarga tegishli narsa"
  },

  "23":{
    "0" : "2",
    "1" : "Mulkchilik ob'ektiga quyidagilarning qaysi biri kiritilmaydi?",
    "2" : "xududiy birlashmalar, xar xil tashkilotlar",
    "3" : "yer, suv, konlar",
    "4" : "o‘simlik va xayvonot dunyosi",
    "5" : "mashinalar, uskunalar"
  },

  "24":{
    "0" : "2",
    "1" : "Sotsial – iqtisodiy tizim qanday izoxlanadi?",
    "2" : "Jamiyatning sotsial-iqtisodiy tuzilishi",
    "3" : "Ishlab chiqarishni tashkil etuvchi jarayon",
    "4" : "Jamiyatning ishlab chiqaruvchi kuchlari",
    "5" : "Jamiyatning ishlab chiqarish munosabatlari"
  },

  "25":{
    "0" : "2",
    "1" : "Mulkiy jixatdan qaraganda sotsial-iqtisodiy tizimlarni qanday toifalarga ajratish mumkin?",
    "2" : "Monostrukturali tizim Aralash iqtisodiyot",
    "3" : "Natural ishlab chiqarish",
    "4" : "Tovar ishlab chiqarish",
    "5" : "To’g’ri javob yoq"
  },

  "26":{
    "0" : "2",
    "1" : "Monoiqtisodiyot qanday izoxlanadi?",
    "2" : "Yakka mulk shakliga tayangan iqtisodiyot",
    "3" : "Bozor iqtisodiyotiga asoslangan iqtisodiyot",
    "4" : "Erkin raqobatga asoslangan iqtisodiyot",
    "5" : "Aralash iqtisodiyot"
  },

  "27":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri poliiqtisodiyot tizimiga mansub?",
    "2" : "Turli tuman mulk shaklllariga asoslangan aralash iqtisodiyot",
    "3" : "Bozor iqtisodiyotiga asoslangan iqtisodiyot",
    "4" : "Yakka mulk shakliga asoslangan iqtisodiyot",
    "5" : "Erkin raqobatga asoslangan iqtisodiyot"
  },

  "28":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri totalitar rejali iqtisodiy tizimga xos emas?",
    "2" : "Ko`p turli mulkchilikka asoslangan erkin iqtisodiyot",
    "3" : "Iqtisodiyotni davlatlashtirishning yuqori darajasi",
    "4" : "Ishlab chiqarishni reja asosida amalga oshirish",
    "5" : "Siyosatni iqtisodiyotdan ustuvorligi."
  },

  "29":{
    "0" : "2",
    "1" : "Firmaning doimiy xarajatlari bu – ….",
    "2" : "firma mahsulot ishlab chiqarmasa ham sarflanadigan xarajatlar;",
    "3" : "mahsulot ishlab chiqarish hajmi o‘zgarishiga bog‘liq xarajatlar;",
    "4" : "mahsulot ishlab chiqarish uchun sarflangan o‘rtacha xarajatlar;",
    "5" : "me’yoriy xarajatlar;"
  },

  "30":{
    "0" : "2",
    "1" : "Bozor iqtisodiyotini xarakatga soluvchi vosita xili?",
    "2" : "Raqobat",
    "3" : "Ish kuchi",
    "4" : "Tovarlarning xilma-xilligi",
    "5" : "Manfaatlarning ustunligi"
  },

  "31":{
    "0" : "2",
    "1" : "Bozor munosabatlari iqtisodning jadal borishini ta'minlovchi qanday kuchni yuzaga chikaradi?",
    "2" : "Iqtisodiy faoliyat erkinligi",
    "3" : "Narxlarning liberallashuvi",
    "4" : "Iqtisodiy monopolizm",
    "5" : "Iqtisodiyotni davlat tomonidan boshqarilishi"
  },

  "32":{
    "0" : "2",
    "1" : "Bozor iqtisodiyotiga o`tish yo`llarining xususiyatlariga xos belgini aniqlang:",
    "2" : "Sotsial iqtisodiy sharoit",
    "3" : "Geografik joylashuvi",
    "4" : "Jahon xo`jaligida tutgan o`rni",
    "5" : "Iqtisodiy aloqalarning rivojlanishi"
  },

  "33":{
    "0" : "2",
    "1" : "Quyidagi ko`rsatilganlardan qaysi biri O`zbekistonning bozor iqtisodiyotiga o`tishda asosiy tamoyillariga xos emas?",
    "2" : "Revolyusion sakrashlar orqali tezlik bilan o`tishi",
    "3" : "Iqtisodiyotning siyosatdan ustuvorligi",
    "4" : "qonunlarning barcha narsalardan ustun turishi",
    "5" : "Bosqichma-bosqich utishni ta'minlash"
  },

  "34":{
    "0" : "2",
    "1" : "Bozor – bu …",
    "2" : "Ishlab chiqaruvchi va iste'molchilar o`rtasidagi aloqalarni tovar-pul orqali tashkil etilishidan iborat munosabatlar yigindisi",
    "3" : "Davlat korxonalari va jamoa xo`jaliklari o`rtasidagi munosabatlar",
    "4" : "Fermer xo`jaliklari va jamoa xo`jaliklari o`rtasidagi munosabatlar",
    "5" : "Ijaraga beruvchilar va ijaraga oluvchilar o`rtasidagi munosabatlar"
  },

  "35":{
    "0" : "2",
    "1" : "Bozor ob'ektining tarkibiga quyidagi lardan nimani kiritish mumkin emas?",
    "2" : "yer, suv, tabiiy boyliklar",
    "3" : "Iste'mol tovarlari",
    "4" : "Ishlab chiqarish vositalar bo`lgan tovarlar",
    "5" : "Akliy mehnat maxsuli bo`lgan tovarlar"
  },

  "36":{
    "0" : "2",
    "1" : "Bozorning sub'ektlari – ishtirokchilari kimlar?",
    "2" : "Sotuvchilar va xaridorlar",
    "3" : "Dillerlar",
    "4" : "Tovar birjalari",
    "5" : "Savdo dukonlari"
  },

  "37":{
    "0" : "2",
    "1" : "Bozorning vazifalariga quyidagi lardan qaysi biri kirmaydi?",
    "2" : "Iste'molchilarga tovarlarni reklama qilish",
    "3" : "Ishlab chiqarish bilan iste'molni boglash",
    "4" : "Tovarni qiymat shaklidan pul shakliga aylantirish",
    "5" : "Iqtisodiyotni tartibga solishda ishtirok etish"
  },

  "38":{
    "0" : "2",
    "1" : "Monopollashgan bozorning xillariga quyidagi lardan qaysi biri kirmaydi?",
    "2" : "Rejalashtirilgan bozor",
    "3" : "Monopol raqobatli bozor",
    "4" : "Oligopolistik bozor",
    "5" : "Sof monopoliya bozori"
  },

  "39":{
    "0" : "2",
    "1" : "Ayirboshlash miqyosi jixatidan bozor bo'linadi:",
    "2" : "Iste'mol tovarlari va xizmatlari bozori",
    "3" : "Rejali, tartibga solinadigan bozor",
    "4" : "Mahalliy, hududiy bozor",
    "5" : "Tashqi bozor"
  },

  "40":{
    "0" : "2",
    "1" : "Bozorning yetuklik darajasiga karab qanday darajalarga bulish mumkin?",
    "2" : "Xozirgi zamon rivojlangan bozori",
    "3" : "Tartiblanadigan bozor",
    "4" : "Rejalashtiriladigan bozor",
    "5" : "Kapitalistik bozor"
  },

  "41":{
    "0" : "2",
    "1" : "Talab nima?",
    "2" : "Tolo'vchi qobil, pul bilan ta'minlangan ehtiyoj",
    "3" : "Biron-bir ne'matlar va xizmatlarga bo`lgan extiyoj",
    "4" : "Iste'molchilarning bozordagi xarakati",
    "5" : "Xayotiy extiyoj"
  },

  "42":{
    "0" : "2",
    "1" : "Talabga ta'sir qiluvchi omillar ichiga qaysi biri kirmaydi?",
    "2" : "Resurslar narxi",
    "3" : "Mahsulotlar narxi",
    "4" : "Xaridor didi",
    "5" : "Xaridorlar soni"
  },

  "43":{
    "0" : "2",
    "1" : "Bozorda taklif qilinadigan tovar xajmiga narxdan tashkari ta'sir kiladigan omillarga qaysi biri kirmaydi?",
    "2" : "Iste'molchilarning bozordagi xarakati",
    "3" : "Resurslar narxi",
    "4" : "Ishlab chiqarish texnologiyasi",
    "5" : "Narx o`zgarishining kutilishi"
  },

  "44":{
    "0" : "2",
    "1" : "Nomukammal raqobat turiga quyidagi lardan qaysi bi#ri kiritilmaydi?",
    "2" : "tarmoqlararo raqobat",
    "3" : "monopolistik raqobat",
    "4" : "oligopolistik raqobat",
    "5" : "sof monopoliya raqobati"
  },

  "45":{
    "0" : "2",
    "1" : "Narxni aniqlang?",
    "2" : "tovar qiymatining puldagi ifodasi",
    "3" : "tovarni ayirboshlash shakli",
    "4" : "tovarga quyilgan xarajatlar miqdori",
    "5" : "ishlab chiqarilgan tovarlarni aniqlovchi omil"
  },

  "46":{
    "0" : "2",
    "1" : "Narx vazifalariga quyidagi larning qaysi biri kiritilmaydi?",
    "2" : "ishlab chiqarish bilan iste‘molni boglash",
    "3" : "bozor munosabatlarini taminlash",
    "4" : "hisob-kitob, ulchov vazifasi",
    "5" : "iqtisodiy regulyator"
  },

  "47":{
    "0" : "2",
    "1" : "Moliyaviy resurslar turiga ko`rsat ilganlardan qaysi biri kiritilmaydi?",
    "2" : "davlat ixtiyoridagi resurs",
    "3" : "mikroresurslar",
    "4" : "makroresurslar",
    "5" : "zaxiradagi resurs"
  },

  "48":{
    "0" : "2",
    "1" : "Moliyaning vazifalariga ko`rsat ilganlardan qaysi biri kiritilmaydi?",
    "2" : "ishlab chiqarish bilan iste’molchilarni boglash",
    "3" : "taqsimlash",
    "4" : "ragbatlantirish sotsial ximoya",
    "5" : "To’g’ri javob yoq"
  },

  "49":{
    "0" : "2",
    "1" : "Davlat moliyasining tarkuibiga quyidagilardan qaysi biri kirmaydi?",
    "2" : "banklarda jamg‘arilgan jamg‘arlmalar",
    "3" : "davlat byudjeti",
    "4" : "byudjetdan tashqari uyushtirilgan pul fondlari",
    "5" : "davlat krediti"
  },

  "50":{
    "0" : "2",
    "1" : "Davlat daromatlarining manbalarini aniqlang?",
    "2" : "ichki va tashqi manbalar",
    "3" : "aralash manbalar",
    "4" : "jamg‘arlma fondlar",
    "5" : "amortizatsiya fondlar"
  },

  "51":{
    "0" : "2",
    "1" : "Soliqning vazifalariga qaysi ko‘rsatkichlar kiritilmaydi?",
    "2" : "taqsimlash",
    "3" : "fiskal",
    "4" : "xo`jalik faoliyatini ragbatlantirish",
    "5" : "aholi ayrim toifalarini sotsial ximoya qilish"
  },

  "52":{
    "0" : "2",
    "1" : "Quyidagi lardan qaysi biri byudjet daromatlarining manbalari emas?",
    "2" : "milliy daromatning bir qismi",
    "3" : "soliqlar",
    "4" : "aksiz yiginlari bojxona to`lovlari",
    "5" : "To’g’ri javob yoq"
  },

  "53":{
    "0" : "2",
    "1" : "Byudjet xarajatlarining ishlatilishiga qaysi omil kiritilmaydi?",
    "2" : "jamg‘arlish fondini tashkil qilish uchun",
    "3" : "ishlab chiqarishni rivojlantirish",
    "4" : "sotsial-madaniy sarflar",
    "5" : "davlat boshqarish va mudofa sarflari"
  },

  "54":{
    "0" : "2",
    "1" : "Bozor iqtisodiyotida taqsimot turiga qaysi biri kiritilmaydi?",
    "2" : "umumiy taqsimot",
    "3" : "taqsimotning dolzarb qoidalari",
    "4" : "noekvivalent taqsimot",
    "5" : "ekvivalent taqsimot"
  },

  "55":{
    "0" : "2",
    "1" : "Taqsimot natijasida mulk egalariega bo`lmaydigan narsani aniqlang?",
    "2" : "obligatsiya",
    "3" : "ish haqi",
    "4" : "foyda",
    "5" : "pensiya"
  },

  "56":{
    "0" : "2",
    "1" : "Tumush darajalari bu …",
    "2" : "ehtiyojlarni qadrlash meyorlari",
    "3" : "kishilarning iste’mol buyumlari bilan taminlanishщi",
    "4" : "yil davomida iste’mol qilingan tovarlar va xizmatlar summasi",
    "5" : "hozirgi kundagi iste’mol"
  },

  "57":{
    "0" : "2",
    "1" : "Ish haqi nimani ifodalaydi?",
    "2" : "ish kuchi sohibining sarflagan mehnatining qiymatini ifodalaydi",
    "3" : "ish kuchini ekvivalentligi",
    "4" : "mehnat haqini",
    "5" : "ish kuchi sohibining tirikchilik vositalari narxini ifodalaydi"
  },

  "58":{
    "0" : "2",
    "1" : "Turmush darajasiga tasir etuvchi omillarga qaysi biri kirmaydi?",
    "2" : "soliqlar vatulovlar",
    "3" : "pul daromadining miqdori",
    "4" : "narx-navo darajasi",
    "5" : "tovarlarning mo`l-ko`lligi"
  },

  "59":{
    "0" : "2",
    "1" : "Quyidagi tariflardan qaysi biri jaxon xo’jaligini tugri ifodalaydi?",
    "2" : "xalqaro iqtisodiy munosabatlar tizimiva ularni amalga oshirishvositalarining",
    "3" : "qo`shni mamlakatlar xo`jaligi",
    "4" : "o`zaro shartnomalar bilan bog `liq davlatlar yigindisi",
    "5" : "bir ijtimoiy tizimga xos mamlakatlar"
  },

  "60":{
    "0" : "2",
    "1" : "Jaxon xujaligini moddiy asosini tashkil etuvchi omil?",
    "2" : "xalqaro mehnat taqsimoti",
    "3" : "geografik muhit",
    "4" : "shartnomalar",
    "5" : "Do‘stona munosabatlar"
  },

  "61":{
    "0" : "2",
    "1" : "Xalqaro iqtisodiy munosabatlarning asosiy shakllariga kiritish mumkin emas?",
    "2" : "mamlakatlarning iqtisodiy tashkilotlariga a'zo bulishlari",
    "3" : "savdo-sotiq",
    "4" : "xalqaro kredit",
    "5" : "integratsiya alokalari"
  },

  "62":{
    "0" : "2",
    "1" : "Jaxon bozorining tarkibiga qaysi ko`rsat kich kiritilmaydi?",
    "2" : "iste’mol tovarlari bozori",
    "3" : "xizmatlar moliya bozorlari",
    "4" : "tovarlar bozori",
    "5" : "ilmiy ishlamalar,mehnat bozori"
  },

  "63":{
    "0" : "2",
    "1" : "Jaxon bozrlari orqali mamlakatlar orasida taxsimlanadi?",
    "2" : "pul kapitali,ish kuchi,texnologiya",
    "3" : "iqtisodiy resurslar",
    "4" : "ishlab chiqarish kuchlari",
    "5" : "yalpi milliy mahsulot"
  },

  "64":{
    "0" : "2",
    "1" : "Umum jaxon krediti qanday yunalishda boradi?",
    "2" : "odatdagi kredit,imtiyozli kredit",
    "3" : "uzoq muddatli kredit",
    "4" : "chetga kapital chiqarish",
    "5" : "qisqa muddatli kredit"
  },

  "65":{
    "0" : "2",
    "1" : "Jaxon xujaligida qanday valyuta kursi ma'kul topilgan?",
    "2" : "suzib yuruvchi(tebranuvchi) valyuta kursi",
    "3" : "qat'iy valyuta kursi",
    "4" : "kelishilgan valyuta turi",
    "5" : "territoriyalarning uziga xos valyuta kursi"
  },

  "66":{
    "0" : "2",
    "1" : "Mulkchilik sub'ektiga quyidagilardan qay birini kiritish mumkin emas?",
    "2" : "yer, suv, konlar",
    "3" : "ayrim kishilar, oilalar, aholining sotsial guruhlari",
    "4" : "hududiy birlashmalar",
    "5" : "xar xil jamoalar, ijtimoiy, dikiy tashkilotlar"
  },

  "67":{
    "0" : "2",
    "1" : "Mulkchilik shakllariga quyidagilardan qaysisini kiritib bo‘lmaydi?",
    "2" : "davlat byudjeti",
    "3" : "xususiy mulk",
    "4" : "davlat mulki",
    "5" : "jamoa mulki"
  },

  "68":{
    "0" : "2",
    "1" : "Xususiy mulk nima?",
    "2" : "daromad topishga qaratilgan mulk",
    "3" : "oila a'zolarining mulki",
    "4" : "diniy tashkilotlar mulki",
    "5" : "fuqarolar mulki"
  },

  "69":{
    "0" : "2",
    "1" : "O‘zbekistonda qaysi soha xususiy mulk bo‘la olmaydi?",
    "2" : "yer, yerosti, yerusti boyliklari",
    "3" : "sanoat korxonalari",
    "4" : "xizmat ko‘satish sohasi korxonalari",
    "5" : "binolar, inshoatlar"
  },

  "70":{
    "0" : "2",
    "1" : "Davlat mulki turlariga quyidagilardan qaysi biri kirmaydi?",
    "2" : "korporativ-guruxiy mulk",
    "3" : "respublika ixtiyoridagi mulk",
    "4" : "Qoraqalpog‘iston Respublikasi mulki",
    "5" : "ma'muriy-hududiy (kommunal) mulk"
  },

  "71":{
    "0" : "2",
    "1" : "Aralash mulk tarkibiga quyidagilapdan qaysi biri kiritiladi?",
    "2" : "chet-el fuqarolari, tashkilotlari mulki",
    "3" : "ijtimoiy tashkilotlar mulki",
    "4" : "korporativ-guruxiy mulk",
    "5" : "mahalla mulki"
  },

  "72":{
    "0" : "2",
    "1" : "Mulkni davlat tasarrufidan chiqarishning maqsadi…",
    "2" : "davlat tomonidan mulkka nisbatan yakka hokimlikni tugatish",
    "3" : "raqobatchilik muhitini shakllantiri",
    "4" : "mulkni demokratlashtirish",
    "5" : "mulkni tarqatib yuborish"
  },

  "73":{
    "0" : "2",
    "1" : "O‘zbekistondan boshqa davlatlarda uchramaydigan mulk turi qaysi?",
    "2" : "mahalla mulki",
    "3" : "diniy tashkilotlar mulki",
    "4" : "oila mulki",
    "5" : "ijtimoiy tashkilotlar mulki"
  },

  "74":{
    "0" : "2",
    "1" : "Quyidagilardan qaysi biri taklif omili emas?",
    "2" : "Xaridorlar miqdori",
    "3" : "mahsulotning tovarlik darajasi",
    "4" : "ishlab chiqaruvchilar miqdori",
    "5" : "resurslar narxi"
  },

  "75":{
    "0" : "2",
    "1" : "Bozor muvozanati deb ataladi qachonki…",
    "2" : "talab va taklif miqdoran hamda tarkiban mos bo`lsa",
    "3" : "narxlar past bo`lsa",
    "4" : "xaridor va sotuvchilar miqdori teng bo`lsa",
    "5" : "narxlar koniqarli darajada bo`lsa"
  },

  "76":{
    "0" : "2",
    "1" : "Talab va taklif muvozanatini kim ta'minlaydi?",
    "2" : "bozor mexanizmi",
    "3" : "davlat",
    "4" : "xaridorlar",
    "5" : "sotuvchilar"
  },

  "77":{
    "0" : "2",
    "1" : "Tadbirkorlik deb nimaga aytiladi?",
    "2" : "tavakkalchilik asosida, uz mol-mulki javobgarligi asosida ish yuritish",
    "3" : "foyda olish maqsadida ish yuritish",
    "4" : "foyda olish maqsadida, tavakkalchilik asosida iqtisodiy faoliyat yuritish",
    "5" : "yuqori foyda olish maqsadida qo`shimcha korxonalarni tashkil qilish"
  },

  "78":{
    "0" : "2",
    "1" : "Tadbirkorlikning muxim belgilariga quyidagilardan qaysi biri kiritilmaydi?",
    "2" : "xo`jalikni reja asosida yuritish",
    "3" : "mulkiy munosabatlarning ishtirokchisi bo`llish",
    "4" : "iqtisodiy erkinlik",
    "5" : "foyda olish maqsadida ish yuritish"
  },

  "79":{
    "0" : "2",
    "1" : "Aksionerlik korxonalarning asosiy maqsadi",
    "2" : "Ishlab chiqarishda band bo`lmagan mablag`larni birlashtirib, uni yangi yo`nalishlarga sarflash",
    "3" : "Barcha resurslardan samarali foydalanish",
    "4" : "Moddiy resurslardan samarali foydalanish",
    "5" : "Mehnat resurslaridan samarali foydalanish"
  },

  "80":{
    "0" : "2",
    "1" : "Aksiya nima?",
    "2" : "Daromaddan o`z ulushini olish huquqini ta’minlovchi qimmatbaho qog`oz",
    "3" : "Mulkdan foydalanish xuquqini beradi",
    "4" : "Mol-mulkka ega bo`ladi",
    "5" : "Qiymatga ega emas."
  },

  "81":{
    "0" : "2",
    "1" : "Makroiqtisodiy maqsadlar nima?",
    "2" : "Iqtisodiy o‘sish, ishsizlik, inflyatsiya va tashqi savdo balansi",
    "3" : "Iqtisodiy o‘sish, ishsizlik, inflyatsiya va korxona rentabelligi",
    "4" : "ishsizlik, inflyatsiya va tashqi savdo balansi",
    "5" : "monopol bozorning tugatilishi"
  },

  "82":{
    "0" : "2",
    "1" : "Makroiqtisodiy muvozanat – bu ........",
    "2" : "tovar va xizmatlar, pul, sarmoya va mehnat bozoridagi muvozanat.",
    "3" : "tovar va xizmatlar bozoridagi muvozanat",
    "4" : "pul bozoridagi muvozanat",
    "5" : "sarmoya bozoridagi muvozanat"
  },

  "83":{
    "0" : "2",
    "1" : "Milliy daromad quyidagicha aniqlanadi.",
    "2" : "SM dan egri soliqlarni ayirish orqali",
    "3" : "YaIM dan amortizatsiya xarajatlarini ayirish orqali",
    "4" : "Aholi daromadlariga to‘g‘ri soliqlarni qo‘shish orqali",
    "5" : "YaIM va SMning yig‘indisi hisoblanadi"
  },

  "84":{
    "0" : "2",
    "1" : "Ouken qonuni nimani ifodalaydi?",
    "2" : "Iqtisodiy rivojlanish va ishsizlik o‘rtasidagi munosabatni",
    "3" : "Inflyatsiya va ishsizlik o‘rtasidagi munosabatni",
    "4" : "Iqtisodiy rivojlanish va inflyatsiya o‘rtasidagi munosabatni",
    "5" : "Inflyatsiya va tashqi savdo balansi o‘rtasidagi munosabatni"
  },

  "85":{
    "0" : "2",
    "1" : "Fillips egrisi nimani ifodalaydi",
    "2" : "Inflyatsiya va ishsizlik o‘rtasidagi munosabatni",
    "3" : "Iqtisodiy rivojlanish va inflyatsiya o‘rtasidagi munosabatni",
    "4" : "Iqtisodiy rivojlanish va ishsizlik o‘rtasidagi munosabatni",
    "5" : "Inflyatsiya va tashqi savdo balansi o‘rtasidagi munosabatni"
  },

  "86":{
    "0" : "2",
    "1" : "Monetarizm makroiqtisodiy nazariyasining asosida .......... degan fikr yotadi",
    "2" : "Iqtisodiy islohotlarda pul massasini nazorat qilish katta ahamiyatga ega",
    "3" : "Iqtisodiy islohotlarda davlat aralashuvi katta ahamiyatga ega",
    "4" : "Iqtisodiy islohotlarda chet el investitsiyalari katta ahamiyatga ega",
    "5" : "Iqtisodiy islohotlarda ijtimoiy jamg‘arlmalar katta ahamiyatga ega"
  },

  "87":{
    "0" : "2",
    "1" : "Kunikmaga asoslangan taxminlar – bu ......",
    "2" : "oldingi bo‘lgan hodisalar ta’sirida yuzaga kelgan taxmindir.",
    "3" : "oldingi xodisalarni hisobga olmagan holda bugungi hodisa",
    "4" : "taxlili asosida xosil bo‘lgan taxmindir",
    "5" : "kechikishlar asosida yuzaga kelgan taxmindir."
  },

  "88":{
    "0" : "2",
    "1" : "Ratsional taxminlar – bu ......",
    "2" : "Oldingi hodisalarni hisobga olmagan holda bugungi hodisa",
    "3" : "taxlili asosida hosil bo‘lgan taxmindir",
    "4" : "Oldingi bo‘lgan hodisalar ta’sirida yuzaga kelgan taxmindir.",
    "5" : "Kechikishlar asosida yuzaga kelgan taxmindir."
  },

  "89":{
    "0" : "2",
    "1" : "Klassik elastik talab egrisining gorizontal xolatda bo‘lishiga asosiy sabab",
    "2" : "ish xaqining elastikligi",
    "3" : "mehnat bozorining shaffofligi",
    "4" : "ish xaqining pastga nisbatan yopishqoqligi",
    "5" : "investitsiya darajasining elastikligi"
  },

  "90":{
    "0" : "2",
    "1" : "Real foiz darajasi – bu ......",
    "2" : "nominal foiz darajasi bilan infilyatsiya o‘rtasidagi farq",
    "3" : "nominal pul massasi bilan real pul miqdori o‘rtasidagi farq",
    "4" : "kelajakda qilinadigan xarajatlar miqdori",
    "5" : "real foiz darajasi bilan infilyatsiya o‘rtasidagi farq"
  },

  "91":{
    "0" : "2",
    "1" : "Qanday xususiyatga ega bo‘lgan ashyo pul vazifasini bajarishi mumkin?",
    "2" : "qarzni to‘lay olish qobiliyatiga ega bo‘lgan ashyo.",
    "3" : "Davlat tomonidan qonuniy to‘lov vakolati berilgan.",
    "4" : "Ikkilamchi bozorga ega bo‘lgan ashyo.",
    "5" : "Likvidlilik darajasi yuqori bo‘lgan xar qanday ashyo."
  },

  "92":{
    "0" : "2",
    "1" : "Pulning klassik funksiyalari qay biri?",
    "2" : "qiymat o‘lchov, ayirbosh va jamg‘arma.",
    "3" : "Rag‘batlantirish, ayirbosh va qiymat o‘lchov.",
    "4" : "Gegemonlik, daromadlarni qayta taqsimlovchi va rag‘batlantiruvchi.",
    "5" : "Jamg‘arma, daromadlarni qayta taqsimlovchi va rag‘batlantiruvchi."
  },

  "93":{
    "0" : "2",
    "1" : "Qiymat o‘lchov funksiyasi nuqtai nazardan pul quyidagini ifodalaydi….",
    "2" : "Barcha tovar qiymatini o‘zida aks ettiruvchi tovardir.",
    "3" : "Tovarlarning sifati va miqdorini aks ettiradigan tovardir.",
    "4" : "qarzni to‘lay olish qobiliyatiga ega bo‘lgan tovardir.",
    "5" : "O‘zaro hisob – kitoblarda tulov vositasi sifatida qatnashadigan tovardir."
  },

  "94":{
    "0" : "2",
    "1" : "Pul ayirbosh vositasi funksiyasini bajarishi uchun quyidagi xususiyatlarga ega bo‘lishi kerak…",
    "2" : "Birlikka mos baxo, chidamlilik va bo‘linish.",
    "3" : "Ixchamlilik, chidamlilik va bo‘linish.",
    "4" : "Tashib yurishga qulaylilik, ixchamlilik va bo‘linish.",
    "5" : "Birlikka mos baxo, qulaylilik va ixchamli#k."
  },

  "95":{
    "0" : "2",
    "1" : "Jamg‘arma vositasi sifatida pul vazifasini bajaruvchi ashyo ……………….. vazifani bajarishi kerak.",
    "2" : "kelajakdagi to‘lovlar uchun o‘lchov",
    "3" : "boylikning qiymatini saqlash",
    "4" : "kelajakdagi moddiy zararlarni himoyalash",
    "5" : "boylikning moddiy shaklni saqlash"
  },

  "96":{
    "0" : "2",
    "1" : "Pulning zamonoviy funksiyalari bu…",
    "2" : "rag‘batlantiruvchi, daromadni taqsimlovchi va kuch-qudrat.",
    "3" : "jamg‘arma, daromadni taqsimlovchi, ayirbosh.",
    "4" : "qiymat o‘lchov, rag‘batlantiruvchi va jamg‘arma.",
    "5" : "ixchamlik, birlikka mos baxo va jamg‘arma."
  },

  "97":{
    "0" : "2",
    "1" : "Pul tizimlarining bosqichini to‘g‘ri ko‘rsatib bering?",
    "2" : "Bir metalli, ikki metalli, qog‘oz pul va elektron pul.",
    "3" : "Tovar-pul, natural – pul, elektron pul.",
    "4" : "Bir metalli, ikki metalli, tovar – pul va natural – pul.",
    "5" : "Ikki metalli, elektron pul."
  },

  "98":{
    "0" : "2",
    "1" : "Naqd pul qiymatining naqdsiz pul qiymatiga nisbatan ortishiga asosiy sabab, bu….",
    "2" : "«Qora bozorning» rivojlanishi va norasmiy tadbirkorlik faoliyatining ortishi.",
    "3" : "Tovar ishlab chiqarishning kamayib, iqtisodiyotga ma’muriy aralashuvning ortishi.",
    "4" : "Markaziy bank tomonidan pul massasini boshqarish instrumentlarining optimal shaklda amaliyotga kiritilmasligi.",
    "5" : "Tadbirkorlikning cheklanishi va pul massasining kamayishi."
  },

  "99":{
    "0" : "2",
    "1" : "Pul siyosati deganda nimani tushunasiz va olib boruvchi mas’ul tashkilot?",
    "2" : "Pul siyosati markaziy bank tomonidan olib borilib, pul massasini nazorat qilishga yo‘naltiriladi.",
    "3" : "Pul siyosati iqtisod vazirligi tomonidan olib borilib, budjet komamadining oldini olish maqsadida yuritiladi.",
    "4" : "Pul siyosati moliya vazirligi tomonidan amalga oshirilib, pul massasini nazorat qilishga yo‘naltiriladi.",
    "5" : "Pul siyosati markaziy bank tomonidan amalga oshirilib, budjet kamomadini nazorat qilishga yo‘naltiriladi."
  },

  "100":{
    "0" : "2",
    "1" : "Friksion ishsizlik nima?",
    "2" : "Yashirish ishsizlik",
    "3" : "Ko‘ngilli ishsizlik",
    "4" : "Ko‘ngilsiz ishsizlik",
    "5" : "Mavsumiy ishsizlik"
  },

  "101":{
    "0" : "2",
    "1" : "Ko‘ngilli ishsizlik nima?",
    "2" : "Mehnatga layoqatli ishchi kuchining mehnatdan bosh tortishi",
    "3" : "Mehnatga layoqatsiz ishchi kuchining mehnatdan bosh tortishi",
    "4" : "Ish yerlari mavjud bo‘lgan holda mehnatga layoqatli ishchi kuchi tanqisligi",
    "5" : "Mavsumiy ish yerlardagi ishsizlar soni"
  },

  "102":{
    "0" : "2",
    "1" : "Ko‘ngilsiz ishsizlik nima?",
    "2" : "Ish yerlari mavjud bo‘lgan holda mehnatga layoqatli ishchi kuchi tanqisligi",
    "3" : "Mehnatga layoqatli ishchi kuchining mehnatdan bosh tortishi",
    "4" : "Mehnatga layoqatsiz ishchi kuchining mehnatdan bosh tortishi",
    "5" : "Mavsumiy ish yerlardagi ishsizlar soni"
  },

  "103":{
    "0" : "2",
    "1" : "Mavsumiy ishsizlik nima?",
    "2" : "Mavsumiy ish yerlardagi ishsizlar soni",
    "3" : "Mehnatga layoqatli ishchi kuchining mehnatdan bosh tortishi",
    "4" : "Mehnatga layoqatsiz ishchi kuchining mehnatdan bosh tortishi",
    "5" : "Ish yerlari mavjud bo‘lgan holda mehnatga layoqatli ishchi kuchi tankisligi"
  },

  "104":{
    "0" : "2",
    "1" : "Inflyatsiya nima?",
    "2" : "umumiy narxlar darajasining o‘sishi",
    "3" : "maoshlarning oshishi",
    "4" : "ishlab chiqarish hajmining kamayishi",
    "5" : "narxlarning o‘sishi"
  },

  "105":{
    "0" : "2",
    "1" : "Agar muomiladagi pul miqdori oshsa, buning sababi bo‘ladi:",
    "2" : "pul multiplikatori yuqori bo‘lib, pul manbasini (bazasini) ko‘payishi",
    "3" : "Tijorat banki ortiqcha zaxiralarning pasayishi",
    "4" : "Aholi jami to‘lov mablag‘laridan naqd pul ulushining qisqarishi",
    "5" : "To’gri javob yoq"
  },

  "106":{
    "0" : "2",
    "1" : "Davlat budjeti defitsiti quyidagi holatlarda tashkil topadi:",
    "2" : "Davlat xarajatlari summasi soliq tushumlaridan oshib ketsa",
    "3" : "Davlat aktivlarini summasi majburiyatlardan oshib ketsa",
    "4" : "Davlat xarajatlari kamayganda",
    "5" : "Davlat majburiyatlari aktivlardan oshganda"
  },

  "107":{
    "0" : "2",
    "1" : "Makroiqtisodiyotdagi asosiy sub’ektlardan biri qaysi javobda to‘g‘ri berilgan?",
    "2" : "davlat",
    "3" : "uy xo‘jaliklari",
    "4" : "korxona",
    "5" : "Tijorat banklari"
  },

  "108":{
    "0" : "2",
    "1" : "Pul taklifi va narxlar darajasi o‘zgarmasdan, ishlab chiqarish hajmi oshsa, iqtisodiyotda nima o‘zgarish ro‘y beradi?",
    "2" : "pulga bo‘lgan talab va foiz stavkasi oshadi",
    "3" : "pulga bo‘lgan talab va foiz stavkasi kamayadi",
    "4" : "pulga bo‘lgan talab oshadi va foiz stavkasi kamayadi",
    "5" : "pulga bo‘lgan talab kamayadi va foiz stavkasi oshadi"
  },

  "109":{
    "0" : "2",
    "1" : "Agar iqtisodiyotda bitimlar miqdori oshsa, unda:",
    "2" : "pulga bo‘lgan transaksion talab oshadi",
    "3" : "pulga bo‘lgan transaksion talab kamayadi",
    "4" : "pul taklifi oshadi",
    "5" : "pul taklifi kamayadi"
  },

  "110":{
    "0" : "2",
    "1" : "Iqtisodiy yuksalish davrida jami talab:",
    "2" : "oshadi",
    "3" : "o‘zgarmaydi",
    "4" : "kamayadi",
    "5" : "xam oshishi, xam kamayishi mumkin"
  },

  "111":{
    "0" : "2",
    "1" : "Talab inflyatsiyasiga sabab bo‘ladigan omil qaysi javobda to‘g‘ri berilgan?",
    "2" : "davlat budjeti taqchilligining oshishi",
    "3" : "neft narxlarining oshishi",
    "4" : "iste’molga me’yoriy moyillikning pasayishi",
    "5" : "iste’molga me’yoriy moyillikning pasayishi,neft narxlarining oshishi"
  },

  "112":{
    "0" : "2",
    "1" : "Taklif inflyatsiyasiga sabab bo‘ladigan omil qaysi javobda to‘g‘ri berilgan",
    "2" : "davlat budjeti taqchilligining oshishi",
    "3" : "pul massasining oshishi ish xaqi - maoshlarning oshishi",
    "4" : "Narxlarning oshishi",
    "5" : "To’g’ri javob"
  },

  "113":{
    "0" : "2",
    "1" : "Bozor iqtisodiyoti sharoitida davlat vazifalariga quyidagilar kirmaydi?",
    "2" : "xususiy bo‘g‘inning mahsulotiga narxlar belgilash",
    "3" : "qonun chiqarish raqobatbardosh muxitni ximoya qilish",
    "4" : "iqtisodiyotdagi muammolarni xal qilish",
    "5" : "To’g’ri javob yoq"
  },

  "114":{
    "0" : "2",
    "1" : "Davlat jami xarajatlarning qaysi qismiga ta’sir qilishi mumkin?",
    "2" : "davlatning umumiy xaridlariga",
    "3" : "xususiy investitsiyalarga",
    "4" : "uy xo‘jaliklari kundalik xarajatlariga",
    "5" : "istemolga"
  },

  "115":{
    "0" : "2",
    "1" : "Nominal almashtirish kursi nima?",
    "2" : "xorijiy valyutaning bir birligiga teng bo‘lgan milliy valyutaning miqdori",
    "3" : "so‘mga sotib olish mumkin bo‘lgan tovar va xizmatlar hajmi",
    "4" : "import narxlar darajasi",
    "5" : "eksport-import narxlar nisbati"
  },

  "116":{
    "0" : "2",
    "1" : "Agar valyuta kursi milliy valyutaning xorijiy valyutaga nisbati tarzida aniqlansa, unda devalvatsiya:",
    "2" : "nominal almashtirish kursining o‘sishi",
    "3" : "nominal almashtirish kursining kamayishi",
    "4" : "import narxlarining kamayishi",
    "5" : "eksport narxlarining oshishi"
  },

  "117":{
    "0" : "2",
    "1" : "Agar valyuta kursi milliy valyutaning xorijiy valyutaga nisbati tarzida aniqlansa, unda revalvatsiya:",
    "2" : "nominal almashtirish kursining kamayishi",
    "3" : "nominal almashtirish kursining o‘sishi",
    "4" : "import narxlarining kamayishi",
    "5" : "eksport narxlarining oshishi"
  },

  "118":{
    "0" : "2",
    "1" : "Iqtisodiy o‘sish qanday o‘lchanadi?",
    "2" : "real YaIM ning o‘sishi orqali",
    "3" : "mehnat unumdorligining o‘sishi orqali",
    "4" : "kapital bilan ta’minlanganlikning o‘sishi orqali",
    "5" : "tovar aylanishining o‘sishi orqali"
  },

  "119":{
    "0" : "2",
    "1" : "Inflyatsiya va ishsizlik o‘rtasidagi bog‘lanishni qaysi olim tadqiq qilgan:",
    "2" : "Filipps",
    "3" : "Fridman",
    "4" : "Ouken",
    "5" : "Keyns"
  },

  "120":{
    "0" : "2",
    "1" : "Bozor iqtisodiyotining qaysi sub’ekti iqtisodiy resurslarni yetkazib beruvchi va pirovard mahsulotlar iste’molchisi hisoblanadi?",
    "2" : "uy xo‘jaliklari",
    "3" : "korxonalar",
    "4" : "davlat tashkilotlari",
    "5" : "davlat muassasalari"
  },

  "121":{
    "0" : "2",
    "1" : "Davlat budjeti – bu:",
    "2" : "xukumat tasarrufida bo‘lgan markazlashgan jamg‘armalar",
    "3" : "maxalliy organlar tasarrufidagi pul jamg‘armalari",
    "4" : "mamlakat butun pul mablag‘lari yig‘indisi",
    "5" : "pul mablag‘lari yig‘indisi"
  },

  "122":{
    "0" : "2",
    "1" : "Nominal YaIM qanday narxlarda hisoblanadi?",
    "2" : "joriy narxlarda",
    "3" : "o‘zgarmas narxlarda",
    "4" : "chakana narxlarda",
    "5" : "ulgurji narxlarda"
  },

  "123":{
    "0" : "2",
    "1" : "Qo‘shilgan qiymat qanday miqdor?",
    "2" : "pirovard mahsulot xajmidan boshqa korxona va firmalardan sotib olingan xom-ashyo va materiallar qiymatini chiqarib tashlangan miqdor",
    "3" : "pirovard mahsulot xajmidan ish xaqi chiqarib tashlangan miqdor",
    "4" : "pirovard mahsulot xajmidan amortizatsiya ajratmasi chiqarib tashlangan miqdor",
    "5" : "pirovard mahsulot xajmidan o‘zgaruvchi xarajatlar chiqarib tashlangan miqdor"
  },

  "124":{
    "0" : "2",
    "1" : "Aralash iqtisodiyotdagi jami daromad va xarajatlarning doiraviy aylanish modelida milliy bozordagi “o‘yin qoidalari”ni kim belgilaydi?",
    "2" : "davlat",
    "3" : "ishlab chiqarish sohasi",
    "4" : "iste’mol bozori",
    "5" : "bank tizimi"
  },

  "125":{
    "0" : "2",
    "1" : "Real YaIM nima?",
    "2" : "doimiy narxlarda hisoblangan YaIM",
    "3" : "joriy bozor narxlarida hisoblangan YaIM",
    "4" : "pulning o‘zgarib turuvchi kurslarida hisoblangan YaIM",
    "5" : "iqtisodiy xarajatlar bo‘yicha hisoblangan YaIM"
  },

  "126":{
    "0" : "2",
    "1" : "M0 pul agregatiga quyidagilar kiritiladi.",
    "2" : "Naqd pul va tangalar",
    "3" : "Muddatsiz omonatlar",
    "4" : "Muddatli omonatlar",
    "5" : "Valyuta"
  },

  "127":{
    "0" : "2",
    "1" : "Ochiq bozor operatsiyalari deganda nimani tushunasiz?",
    "2" : "Davlat qimmatbaxo qog‘ozlarining markaziy bank tomonidan oldi – sottisi",
    "3" : "Tijorat banklari tomonidan jalb qilingan mablag‘larga nisbatan majburiy ajratmalar stavkasi",
    "4" : "Kassa rejasi.",
    "5" : "Markaziy bank tomonidan kredit mablag‘lariga o‘rnatilgan foiz stavkalari eng kam yoki eng yuqori stavkasi."
  },

  "128":{
    "0" : "2",
    "1" : "Qayta moliyalash stavkasi deganda nimani tushunasiz?",
    "2" : "Markaziy bank tomonidan kredit mablag‘lariga o‘rnatilgan foiz stavkalari eng kam yoki eng yuqori stavkasi.",
    "3" : "Davlat qimmatbaxo qog‘ozlarining markaziy bank tomonidan oldi – sottisi",
    "4" : "Tijorat banklari tomonidan jalb qilingan mablag‘larga nisbatan majburiy ajratmalar stavkasi",
    "5" : "Kassa rejasi."
  },

  "129":{
    "0" : "2",
    "1" : "Quyidagi ko'rsatkichlardan qaysi biri sof milliy mahsulot, amortizatsiya to'lovlari va bilvosita soliqlarni qo'shish natijasida olingan qiymatga teng ekanligini ko'rsating:",
    "2" : "yalpi ichki mahsulot;",
    "3" : "yalpi milliy mahsulot;",
    "4" : "qo'shimcha qiymat;",
    "5" : "sof milliy daromad"
  },

  "130":{
    "0" : "2",
    "1" : "Makroiqtisodiyotning asosiy sub'ektlari:",
    "2" : "uy xo'jaliklari;",
    "3" : "markaziy bank;",
    "4" : "sanoat;",
    "5" : "tovarlar va xizmatlar bozori;"
  },

  "131":{
    "0" : "2",
    "1" : "Inflyatsiya sharoitida fuqarolarning daromadlarini o'rganish uchun tahlilning qaysi usuli qo'llaniladi:",
    "2" : "qiyosiy;",
    "3" : "tartibga soluvchi",
    "4" : "statistik;",
    "5" : "o‘rtacha"
  },

  "132":{
    "0" : "2",
    "1" : "Yalpi ichki mahsulot (YaIM) nima?",
    "2" : "barcha yakuniy tovarlar va xizmatlarning bozor qiymati.",
    "3" : "ishlab chiqarilgan barcha tovarlar va xizmatlar yig'indisi",
    "4" : "sotilgan barcha tovarlar va xizmatlar yig'indisi;",
    "5" : "barcha tayyor mahsulotlar va xizmatlar yig'indisi;"
  },

  "133":{
    "0" : "2",
    "1" : "Yalpi ichki mahsulot o'lchanadi:",
    "2" : "bozor narxlarida;",
    "3" : "asosiy narxlarda;",
    "4" : "ishlab chiqaruvchilar narxlarida;",
    "5" : "eksport narxlarida."
  },

  "134":{
    "0" : "2",
    "1" : "Yalpi ichki mahsulot deflyatori:",
    "2" : "nominal Yalpi ichki mahsulotning real YaMMga nisbatiga teng;",
    "3" : "real YaMMning nominal YaMMga nisbatiga teng;",
    "4" : "inflyatsiyani tezlashishi bilan kamayadi",
    "5" : "joriy narxlarda;"
  },

  "135":{
    "0" : "2",
    "1" : "Milliy daromad qiymatini aniqlash uchun quyidagilar zarur:",
    "2" : "YaIM qiymatini ishlatilgan asosiy qiymat amortizatsiya miqdoriga kamaytirish mablag;",
    "3" : "YaIM qiymatidan bilvosita soliqlar miqdorini chegirib tashlash;",
    "4" : "YaIM qiymatidan ma'lum bir davr uchun amortizatsiya to'lovlari miqdorini, bilvosita soliqlar miqdorini va hukumat subsidiyalari miqdorini chiqarib tashlash;",
    "5" : "YaIMga davlat ijtimoiy transfert to'lovlari miqdorini qo'shish"
  },

  "136":{
    "0" : "2",
    "1" : "Agar mamlakatda yil davomida narxlarning umumiy darajasi sezilarli darajada o'sib borsa va tovar va xizmatlar ishlab chiqarish o'zgarmasa, unda boshqa narsalar teng bo'lganda …",
    "2" : "nominal YaIM o'sadi",
    "3" : "real yalpi ichki mahsulot (YaIM) ko'payadi;",
    "4" : "nominal YaIM kamayadi;",
    "5" : "mamlakatda haqiqiy hayot darajasi ko'tariladi."
  },

  "137":{
    "0" : "2",
    "1" : "Quyidagi ko'rsatkichlardan qaysi biri sof milliy mahsulot, amortizatsiya to'lovlari va bilvosita soliqlarni qo'shish natijasida olingan qiymatga teng ekanli#gini ko'rsating:",
    "2" : "yalpi ichki mahsulot",
    "3" : "yalpi milliy mahsulot",
    "4" : "qo'shimcha qiymat",
    "5" : "sof milliy daromad"
  },

  "138":{
    "0" : "2",
    "1" : "Milliy boylik bu:",
    "2" : "ishlab chiqarish vositalari, to'plangan mulk, tabiiy resurslar, moddiy va madaniy qadriyatlar.",
    "3" : "tabiiy boyliklar va madaniy qadriyatlar;",
    "4" : "tabiiy resurslar va inson resurslari;",
    "5" : "madaniy qadriyatlar"
  },

  "139":{
    "0" : "2",
    "1" : "Transfer to'lovlari:",
    "2" : "mahsulot ishlab chiqarish va xizmatlar ko'rsatish bilan bog'liq bo'lmagan to'lovlar;",
    "3" : "kechiktirilgan to'lovlar;",
    "4" : "ishlab chiqarilgan mahsulotning daromad shakliga ega bo'lmagan qismi;",
    "5" : "ijara daromadlari."
  },

  "140":{
    "0" : "2",
    "1" : "Shaxsiy ixtiyoriy daromad bu:",
    "2" : "soliq va soliqqa tortilmagan majburiy to'lovlarni olib tashlagan holda olingan umumiy daromad",
    "3" : "hisoblangan ish haqi;",
    "4" : "olingan umumiy daromad (ish haqi va boshqa daromadlar)",
    "5" : "real daromadlar"
  },

  "141":{
    "0" : "2",
    "1" : "Ro'yxatdagi bayonotlardan quyidagilar to'g'ri",
    "2" : "AD egri chizig'i salbiy nishabga ega",
    "3" : "davlat atrof-muhitni muhofaza qilish bo'yicha talablarni kuchaytirganda, bu mahsulot birligi uchun ishlab chiqarish xarajatlarining oshishiga olib keladi va yig'ma ta'minot egri chizig'ini o'ngga siljitadi;",
    "4" : "real ishlab chiqarish hajmining o'sishi narxlarning oshishi bilan birga bo'lishi mumkin emas.",
    "5" : "To’g’ri javob yoq"
  },

  "142":{
    "0" : "2",
    "1" : "Barcha resurslar jalb qilingan sharoitda YaMMning potentsial hajmiga erishiladi, talabning o'sishi quyidagilarni keltirib chiqaradi:",
    "2" : "doimiy ta'minot bilan narxlarning o'sishiga",
    "3" : "tovarlar taklifining ko'payishiga",
    "4" : "tovarlar taklifining kamayishiga",
    "5" : "doimiy ta'minot bilan narxlarning pasayishiga"
  },

  "143":{
    "0" : "2",
    "1" : "Agar narx darajasi ko'tarilib, ishlab chiqarish pasayib ketsa, bunga quyidagilar sabab bo'ladi:",
    "2" : "yig'ma ta'minot egri chizig'ining chapga siljishi;",
    "3" : "yalpi talab egri chizig'ining o'ngga siljishi;",
    "4" : "yalpi talab egri chizig'ining chapga siljishi;",
    "5" : "yalpi ta'minot egri chizig'ining o'ng tomonga siljishi"
  },

  "144":{
    "0" : "2",
    "1" : "Yalpi taklif egri chizig'idagi Keyns segmenti:",
    "2" : "gorizontal chiziq bilan ifodalanadi",
    "3" : "ijobiy nishabga ega",
    "4" : "salbiy nishabga ega",
    "5" : "vertikal chiziq bilan ifodalangan"
  },

  "145":{
    "0" : "2",
    "1" : "Agar davlat xarajatlari va sof eksport nolga teng bo'lishi sharti bilan yalpi taklif yalpi talabdan oshsa, unda:",
    "2" : "tejash rejalashtirilgan sarmoyadan oshib ketadi",
    "3" : "iste'mol va investitsiya xarajatlari yig'indisi jamg'armaga teng",
    "4" : "jamg'armalar investitsiyalarga teng",
    "5" : "jamg'armalar investitsiyalardan kamayadi"
  },

  "146":{
    "0" : "2",
    "1" : "Iste'mol hajmi va yig'indidagi jamg'arma hajmi quyidagilarga teng:",
    "2" : "daromad hajmi",
    "3" : "iqtisodiy o'sish sharoitida",
    "4" : "ko'proq daromad",
    "5" : "har doim kam daromad"
  },

  "147":{
    "0" : "2",
    "1" : "Multiplikatorning ta'siri (printsipi) quyidagilarni ko'rsatadi:",
    "2" : "investitsiyalar o'zgarganda daromadning o'zgarishi",
    "3" : "investitsiyalar ko'payishi bilan daromadning o'zgarishi",
    "4" : "investitsiyalar kamayishi bilan daromadning o'zgarishi",
    "5" : "doimiy investitsiya miqdori bilan daromadning o'zgarishi"
  },

  "148":{
    "0" : "2",
    "1" : "Iqtisodiy o'sish sharoitida iste'mol va jamg'arma o'rtasidagi nisbat:",
    "2" : "o'zgaradi",
    "3" : "bir nechta",
    "4" : "Bir biriga teng",
    "5" : "o'zgarmaydi"
  },

  "149":{
    "0" : "2",
    "1" : "Jamg'arma bu:",
    "2" : "maishiy daromadlarning ma'lum bir vaqt ichida sarflanmagan qismi",
    "3" : "uy xo'jaliklarining barcha to'plangan mulki va aholining jamg'armalari",
    "4" : "daromadlarning qimmatli qog'ozlarga qo'yilgan qismi",
    "5" : "barcha bozor sub'ektlarining naqd pul qoldiqlari"
  },

  "150":{
    "0" : "2",
    "1" : "Iste'mol bu:",
    "2" : "joriy davrda tovarlar va xizmatlarni sotib olishga sarflangan uy xo'jaliklari daromadlarining bir qismi;",
    "3" : "kelgusi davrda tovar va xizmatlarni sotib olishga mo'ljallangan daromadning bir qismi;",
    "4" : "bank hisobvaraqlarida to'plangan daromad qoldig'i",
    "5" : "barcha bozor sub'ektlarining naqd pul qoldiqlari;"
  },

  "151":{
    "0" : "2",
    "1" : "Investitsiyalar:",
    "2" : "barcha turdagi ishlab chiqarish va noishlab chiqarish resurslariga investitsiyalar;",
    "3" : "daromadning joriy davrda sarflanmagan qismi;",
    "4" : "ko'chmas mulkni sotib olish;",
    "5" : "uzoq muddatli mahsulotlarni, shuningdek, valyuta va oltinni sotib olish;"
  },

  "152":{
    "0" : "2",
    "1" : "Teskari munosabat quyidagilar o'rtasidagi munosabatni ifodalaydi:",
    "2" : "investitsiya xarajatlari va foiz stavkalari darajasi;",
    "3" : "jamg'arma va foiz stavkalari darajasi;",
    "4" : "investitsiya xarajatlari va milliy daromad;",
    "5" : "iste'mol xarajatlari va bir martalik daromad;"
  },

  "153":{
    "0" : "2",
    "1" : "Jamg'arma mablag'laridan oshishi mumkin, agar:",
    "2" : "foiz stavkalari darajasi oshsa;",
    "3" : "uzoq vaqt davomida iqtisodiyotda ortiqcha ishlab chiqarish va ishsizlik mavjud;",
    "4" : "rejali iqtisodiyot sharoitida;",
    "5" : "foiz stavkalari darajasi kamaysa;"
  },

  "154":{
    "0" : "2",
    "1" : "Davlat qarzi bu miqdor:",
    "2" : "byudjet defitsiti, byudjet profitsiti;",
    "3" : "byudjet taqchilligi;",
    "4" : "mudofaa xarajatlari;",
    "5" : "davlat xarajatlari;"
  },

  "155":{
    "0" : "2",
    "1" : "Davlat qarzining haqiqiy muammolaridan biri bu:",
    "2" : "milliy mahsulotning bir qismi mamlakat tashqarisiga chiqadi;",
    "3" : "ishlab chiqarish samaradorligini oshirish uchun imtiyozlar ko'paymoqda;",
    "4" : "daromadlar tengsizligini kamaytiradi;",
    "5" : "jamg'arma ulushi barcha daromad darajalarida ko'payadi;"
  },

  "156":{
    "0" : "2",
    "1" : "Makroiqtisodiyotdagi yalpi talab bu:",
    "2" : "iqtisodiyotning barcha makroiqtisodiy sub'ektlarining talabi;",
    "3" : "korxonalarning davlat xarajatlari va investitsiya talabi;",
    "4" : "uy xo'jaliklarining talabi va sof eksport;",
    "5" : "uy xo'jaligi talabi va korxonalarning investitsiya talabi;"
  },

  "157":{
    "0" : "2",
    "1" : "Kutilayotgan inflyatsiyaning o'sishi Fillips egri chizig'ining (inflyatsiya darajasi vertikal o'qi bo'ylab) siljishiga sabab bo'ladi:",
    "2" : "ushbu o'sishga teng bo'lgan miqdorda.",
    "3" : "inflyatsiya o'sishiga teng miqdorda o'ngga;",
    "4" : "inflyatsiya o'sishiga teng miqdorda chapga;",
    "5" : "ushbu o'sishga teng miqdordagi pasayish;"
  },

  "158":{
    "0" : "2",
    "1" : "Uzoq muddatli istiqbolda davlat inflyatsiyaga qarshi siyosati quyidagilarga asoslanadi:",
    "2" : "pul massasini cheklash.",
    "3" : "faoliyatning ayrim turlari uchun mablag'larni ko'paytirish;",
    "4" : "grantlar va subsidiyalarning o'sishi;",
    "5" : "byudjet taqchilligining o'sishi;"
  },

  "159":{
    "0" : "2",
    "1" : "Quyidagi omillardan qaysi biri talab inflyatsiyasini keltirib chiqarishi mumkin?",
    "2" : "davlat qimmatli qog'ozlarining defitsitining o'sishi;",
    "3" : "neft narxining ko'tarilishi;",
    "4" : "iste'mol qilishga chekka moyillikning pasayishi;",
    "5" : "shaxsiy daromad solig'i stavkalarining o'sishi;"
  },

  "160":{
    "0" : "2",
    "1" : "Agar xomashyo narxlari ko'tarilsa, ish haqi ko'tarilsa va ishlab chiqarish va bandlik pasayib ketsa, demak bu:",
    "2" : "ishlab chiqarish xarajatlari inflyatsiyasi.",
    "3" : "ortiqcha talab inflyatsiyasi;",
    "4" : "stagflyatsiya;",
    "5" : "ortiqcha taklif inflyatsiyasi;"
  },

  "161":{
    "0" : "2",
    "1" : "Agar dastlab iqtisodiyot uzoq muddatli muvozanat holatida bo'lsa, u holda pul muomalasi tezligining oshishi quyidagilarga olib kelishi mumkin:",
    "2" : "qisqa muddatda ishlab chiqarish hajmining o'sishi va uzoq muddatda narxlarning o'sishi;",
    "3" : "qisqa muddatda mahsulotning pasayishiga va uzoq muddatda narxlarning pasayishiga;",
    "4" : "qisqa muddatda mahsulotning pasayishi va uzoq muddatda narxlarning o'sishi;",
    "5" : "uzoq muddatda ishlab chiqarish hajmining o'sishi va qisqa muddatda narxlarning o'sishi."
  },

  "162":{
    "0" : "2",
    "1" : "Klassik model qoidalariga muvofiq:",
    "2" : "yalpi talab darajasi ishlab chiqarish hajmi bilan belgilanadi;",
    "3" : "narxlar va nominal ish haqi qat'iy;",
    "4" : "yalpi ta'minot egri chizig'i vertikal bo'lib, na o'ngga va na chapga siljiy olmaydi;",
    "5" : "iqtisodiyotdagi investitsiyalar va jamg'armalar turli xil omillar bilan belgilanadi va foiz stavkasining o'zgarishi bilan muvozanatlasha olmaydi."
  },

  "163":{
    "0" : "2",
    "1" : "Klassik model Yalpi ichki mahsulotning pasayishini narx darajasining pasayishi bilan izohlaydi:",
    "2" : "bir vaqtning o'zida yalpi talab va potentsial Yalpi ichki mahsulotning pasayishi;",
    "3" : "yalpi ichki mahsulotning doimiy potentsiali bilan yalpi talabning o'sishi;",
    "4" : "doimiy yalpi talab bilan potentsial Yalpi ichki mahsulotning o'sishi;",
    "5" : "bir vaqtning o'zida yalpi talab va potentsial Yalpi ichki mahsulotning o'sish;"
  },

  "164":{
    "0" : "2",
    "1" : "Narxlar darajasining ko'tarilishi va mamlakatda bir vaqtning o'zida ishsizlik darajasining ko'tarilishi ...",
    "2" : "yalpi taklifning pasayishi bilan bog'liq bo'lishi mumkin;",
    "3" : "mumkin emas;",
    "4" : "faqat markazlashgan tizimda mumkin;",
    "5" : "yalpi talabning pasayishi natijasida yuzaga kelishi mumkin."
  },

  "165":{
    "0" : "2",
    "1" : "Iqtisodiyotda uzoq vaqt davomida davlat xarajatlari ko'payishi bilan potentsial darajadagi ishlab chiqarish hajmi bilan nima sodir bo'ladi:",
    "2" : "doimiy ishlab chiqarish hajmi bilan narxlarning umumiy darajasi oshadi;",
    "3" : "doimiy narx darajasi bilan ishlab chiqarish hajmi oshadi;",
    "4" : "ishlab chiqarish hajmi o'zgarmaydi, narxlarning umumiy darajasi pasayadi;",
    "5" : "doimiy narx darajasi bilan ishlab chiqarish hajmi pasayadi ;"
  },

  "166":{
    "0" : "2",
    "1" : "Pul massasi o'sishining uzoq muddatli oqibatlari quyidagilarda ifodalanadi:",
    "2" : "mahsulot hajmini o'zgartirmasdan narxlar darajasining oshishi;",
    "3" : "narx darajasini o'zgartirmasdan ishlab chiqarishni ko'paytirish;",
    "4" : "narxlar va ishlab chiqarishning parallel o'sishi;",
    "5" : "narxlar darajasida ham, ishlab chiqarilgan mahsulot hajmida ham o'zgarishlarning yo'qligi;"
  },

  "167":{
    "0" : "2",
    "1" : "Yalpi milliy mahsulot quyidagilarga teng",
    "2" : "C+ Ig+ G+ Xn;",
    "3" : "A + B + C + D;",
    "4" : "C + Iv + L + Xr;",
    "5" : "C + Iv + L;"
  },

  "168":{
    "0" : "2",
    "1" : "Daromad bo'yicha YaMMni hisoblashda quyidagilar e'tiborga olinmaydi:",
    "2" : "o'tkazmalar;",
    "3" : "ish haqi;",
    "4" : "foiz;",
    "5" : "foyda;"
  },

  "169":{
    "0" : "2",
    "1" : "Qanday ko'rsatkichlarni makroiqtisodiy ko'rsatkichlarga kiritish mumkin?",
    "2" : "Inflyatsiya, ishsizlik, real yalpi ichki mahsulot;",
    "3" : "Xarajatlar, umumiy xarajatlar;",
    "4" : "marjinal xarajatlar;",
    "5" : "Mehnat unumdorligi va ish haqi;"
  },

  "170":{
    "0" : "2",
    "1" : "1929 yil inqirozidan keyin paydo bo'lgan makroiqtisodiyot yo'nalishi, yalpi talabni tartibga solishda hukumatning aralashuvi zarurligini tasdiqladi:",
    "2" : "Keynschilar;",
    "3" : "monetaristlar;",
    "4" : "neoklassik yo'nalish;",
    "5" : "Ratsional kutishlar nazariyasiga asoslangan yo'nalish;"
  },

  "171":{
    "0" : "2",
    "1" : "Yopiq iqtisodiyotda daromadlar va xarajatlarning aylanishi shuni isbotlaydi",
    "2" : "Iqtisodiyotdagi daromadlar xarajatlarga teng;",
    "3" : "Iqtisodiyotdagi daromad xarajatlardan kam;",
    "4" : "Iqtisodiyot muvozanatli emas va tashqi kreditlar talab qilinadi;",
    "5" : "Mavjud jamg'armalar va kreditlar hisobiga ko'proq daromad sarflash;"
  },

  "172":{
    "0" : "2",
    "1" : "Makroiqtisodiyotga xos bo'lgan tadqiqot usullarini ayting.",
    "2" : "birlashma;",
    "3" : "ilmiy mavhumlik;",
    "4" : "tahlil va sintez;",
    "5" : "tarixiy va mantiqiy tadqiqotlar;"
  },

  "173":{
    "0" : "2",
    "1" : "YaIM deflyatori:",
    "2" : "nominal YaIM, real YaIM",
    "3" : "real YaIM, nominal YaIM",
    "4" : "iste'mol narxlari indeksi",
    "5" : "Laspeyres narxlari indeksi;"
  },

  "174":{
    "0" : "2",
    "1" : "Hisob-kitoblarga ko'ra Markaziy bank birlik M 2 ga teng:",
    "2" : "M 1 + aholining muddatli omonatlari;",
    "3" : "M 1 + muomaladagi naqd pul;",
    "4" : "M 1 + sertifikatlari va davlat zayomlari;",
    "5" : "M 1 + aktsiyalar va obligatsiyalar."
  },

  "175":{
    "0" : "2",
    "1" : "Pulga talabni keltirib chiqaradigan sabablardan biri bu:",
    "2" : "tranzaktsion motiv;",
    "3" : "transplantatsiya motivi;",
    "4" : "transduktsiya motivi;",
    "5" : "transliteratsiya motivi;"
  },

  "176":{
    "0" : "2",
    "1" : "Makroiqtisodiyotdagi MD qisqartmasi quyidagilarni anglatadi:",
    "2" : "pulga bo'lgan talab;",
    "3" : "pul muomalasining tezligi;",
    "4" : "pul miqdori;",
    "5" : "naqd pul qoldiqlariga talab;"
  },

  "177":{
    "0" : "2",
    "1" : "Mamlakatda umumiy narx darajasining oshishi qanday nomlanadi?",
    "2" : "inflyatsiya;",
    "3" : "senaraj;",
    "4" : "stagflyatsiya;",
    "5" : "turg'unlik;"
  },

  "178":{
    "0" : "2",
    "1" : "Yalpi ichki mahsulot va ishsizlik darajasi o'rtasidagi bog'liqlik qanday?",
    "2" : "ishsizlik ko'payadi, YaIM pasayadi;",
    "3" : "ishsizlik o'smoqda, YaIM o'sib bormoqda;",
    "4" : "ishsizlik ko'tariladi, YaIM o#'zgarmaydi",
    "5" : "ishsizlik o'zgarmaydi, YaIM tushadi"
  },

  "179":{
    "0" : "2",
    "1" : "Iste'mol narxlari indeksi nimani ko'rsatadi?",
    "2" : "ma'lum tovar va xizmatlar to'plamining narx darajasi;",
    "3" : "YaIM narxlari darajasi;",
    "4" : "iste'molchilarning istaklari;",
    "5" : "iste'mol savatining tarkibi;"
  },

  "180":{
    "0" : "2",
    "1" : "Tovarlar va xizmatlarga narx yoki tarifga qo'shimcha to'lovlar shaklida belgilangan soliqlar qanday nomlanadi?",
    "2" : "bilvosita.",
    "3" : "antidemping;",
    "4" : "avtonom;",
    "5" : "import qilingan;"
  },

  "181":{
    "0" : "2",
    "1" : "Byudjet taqchilligini moliyalashtirishning tashqi manbalariga quyidagilar kiradi.",
    "2" : "davlat qimmatli qog'ozlarini chiqarish yo'li bilan chet el valyutasida amalga oshiriladigan davlat ssudalari;",
    "3" : "davlat qimmatli qog'ozlarini chiqarish yo'li bilan amalga oshiriladigan davlat kreditlari",
    "4" : "hukumat tomonidan kredit tashkilotlaridan olingan kreditlar;",
    "5" : "xususiylashtirishdan tushadigan mablag'lar;"
  },

  "182":{
    "0" : "2",
    "1" : "Ishsizlikning tabiiy darajasi bu:",
    "2" : "to'liq kunlik ishsizlik darajasi;",
    "3" : "butun mehnatga layoqatli aholi ishlamasa;",
    "4" : "ish bilan bandlik darajasi;",
    "5" : "kattalar aholisining ishsiz qismining ma'lum bir foizini;"
  },

  "183":{
    "0" : "2",
    "1" : "Yalpi milliy mahsulotdan (YaMM) sof milliy mahsulotga (MNP) o'tish uchun quyidagilar zarur:",
    "2" : "asosiy vositalar amortizatsiyasini hisobdan chiqarish;",
    "3" : "sof investitsiya xarajatlarini qo'shish;",
    "4" : "sof investitsiyalarni yalpi ichki mahsulotdan ushlab qolish;",
    "5" : "YaMMga amortizatsiya qo'shish;"
  },

  "184":{
    "0" : "2",
    "1" : "Yalpi ichki mahsulotning potentsial hajmiga hali erishilmagan vaziyatda barcha resurslardan foydalanilmagan bo'lsa, talabning o'sishi quyidagilarni keltirib chiqaradi:",
    "2" : "tovarlar taklifining o'sishiga;",
    "3" : "doimiy ta'minot bilan narxlarning o'sishiga;",
    "4" : "tovarlar taklifining kamayishiga;",
    "5" : "doimiy ta'minot bilan narxlarning kamayishiga;"
  },

  "185":{
    "0" : "2",
    "1" : "Yalpi talab egri chizig'ining o'ngga siljishi quyidagilarni aks ettirishi mumkin emas:",
    "2" : "narxlar darajasining o'sishi va bir vaqtning o'zida real YaIMning pasayishi",
    "3" : "bir vaqtning o'zida narxlar va real YaIM darajasining o'sishi;",
    "4" : "real YaIM o'sishi bo'lmagan taqdirda narxlar darajasining o'sishi;",
    "5" : "narxlar oshmagan taqdirda real YaIMning o'sishi;"
  },

  "186":{
    "0" : "2",
    "1" : "Yalpi talab egri chizig'i quyidagilar o'rtasidagi munosabatni ifodalaydi:",
    "2" : "narxlar darajasi va tovar va xizmatlarni sotib olishga sarflanadigan xarajatlar umumiy darajasi;",
    "3" : "real darajadagi narxlar darajasi va ishlab chiqarilgan YaIM;",
    "4" : "xaridorlar tan oladigan narx darajasi va sotuvchilarni qoniqtiradigan narx darajasi;",
    "5" : "real qiymatda ishlab chiqarilgan va iste'mol qilingan YaIM hajm"
  },

  "187":{
    "0" : "2",
    "1" : "Agar real ishlab chiqarilgan YaIM hajmi muvozanat qiymatidan kam bo'lsa, u holda ishlab chiqaruvchilar:",
    "2" : "kamayadi ishlab chiqarish zaxiralari va ishlab chiqarishni kengaytirish",
    "3" : "ishlab chiqarish zaxiralarini ko'paytirish va ishlab chiqarishni kengaytirish;",
    "4" : "ishlab chiqarish zaxiralarini ham, ishlab chiqarishni ham kamaytirish;",
    "5" : "ishlab chiqarish zaxiralarini ko'paytirish va ishlab chiqarishni kamaytirish;"
  },

  "188":{
    "0" : "2",
    "1" : "Barcha resurslar jalb qilinganida, YaIMning potentsial hajmiga erishiladi, yalpi talabning o'sishi quyidagilarga olib keladi:",
    "2" : "doimiy ta'minot bilan narxlarning o'sishi;",
    "3" : "tovarlar taklifining o'sishiga;",
    "4" : "doimiy tovar etkazib beriladigan narxlarni pasaytirish;",
    "5" : "tovarlar taklifining kamayishi;"
  },

  "189":{
    "0" : "2",
    "1" : "Agar biznesga soliqlar o'ssa, unda:",
    "2" : "AS kamayib bormoqda, lekin AD hajmi o'zgarmaydi;",
    "3" : "AD kamayadi, lekin AS hajmi o'zgarmaydi;",
    "4" : "AS va AD qisqartirilgan;",
    "5" : "AS va AD o'sadi;"
  },

  "190":{
    "0" : "2",
    "1" : "Keynsian modeli quyidagilarni nazarda tutadi",
    "2" : "potentsialdan past bo'lgan YaIM darajasiga mos keladigan narxlarning ma'lum darajasida gorizontal egri chiziq;",
    "3" : "potentsial YaIM darajasida vertikal AS egri chizig'i;",
    "4" : "foiz stavkalari ta'sirining ta'sirini aks ettiruvchi yengil ijobiy nishab bilan AS egri chizig'i;",
    "5" : "faqat AD ning chapga siljishi bilan;"
  },

  "191":{
    "0" : "2",
    "1" : "Klassik model narxlar darajasini saqlab qolish bilan birga YaIMning pasayishini quyidagicha izohlaydi:",
    "2" : "bir vaqtning o'zida yalpi talab va potentsial YaIMning pasayishi;",
    "3" : "doimiy potentsial YaIM bilan yalpi talabning o'sishi;",
    "4" : "doimiy AD bilan potentsial YaIMning o'sishi;",
    "5" : "potentsial YaIMning pasayishi bilan ADning o'sishi."
  },

  "192":{
    "0" : "2",
    "1" : "Uy xo'jaliklarining shaxsiy iste'mol xarajatlari:",
    "2" : "uzoq muddatli va qisqa muddatli tovarlar va xizmatlarni sotib olish uchun uy xo'jaliklari xarajatlari;",
    "3" : "uy xo'jaliklarining uzoq umr ko'riladigan tovar va xizmatlarni sotib olish uchun sarf-xarajatlari;",
    "4" : "to'lovlarni va soliqlarni o'tkazish;",
    "5" : "tovar va xizmatlarni sotib olish uchun uy xarajatlari va shaxsiy soliqlar."
  },

  "193":{
    "0" : "2",
    "1" : "Narxlar darajasining ko'tarilishi va mamlakatda bir vaqtning o'zida ishsizlik darajasining ko'tarilishi ...",
    "2" : "yalpi taklifning pasayishi bilan bog'liq bo'lishi mumkin;",
    "3" : "mumkin emas;",
    "4" : "faqat markazlashgan tizimda mumkin;",
    "5" : "yalpi talabning pasayishi natijasida yuzaga kelishi mumkin;"
  },

  "194":{
    "0" : "2",
    "1" : "Iqtisodiy inqiroz tufayli ishsiz qolganlar ushbu toifaga kiradi.",
    "2" : "davriy ishsizlar;",
    "3" : "tarkibiy ishsizlar;",
    "4" : "ishqalanadigan ishsizlar;",
    "5" : "ixtiyoriy ishsizlar;"
  },

  "195":{
    "0" : "2",
    "1" : "Iqtisodiyot uchun normal bo'lgan ishsizlik bu:",
    "2" : "ishsizlikning tabiiy darajasi.",
    "3" : "yuqori ish haqi tufayli ishsizlik;",
    "4" : "ishsizlik nafaqalarining past darajasi tufayli ishsizlik;",
    "5" : "jami talabning etishmasligi tufayli ishsizlik;"
  },

  "196":{
    "0" : "2",
    "1" : "Inflyatsiya darajasining oshishi bilan belgilangan foiz stavkasi bo'lgan davlat obligatsiyalarining bozor narxi:",
    "2" : "pasayishga moyil bo'ladi;",
    "3" : "o'sish tendentsiyasiga ega bo'ladi;",
    "4" : "barqaror va nominal qiymatiga teng bo'ladi;",
    "5" : "nolga tushadi;"
  },

  "197":{
    "0" : "2",
    "1" : "Davlat tomonidan tartibga solishning iqtisodiy usullarini keng qo'llash:",
    "2" : "bozor mexanizmlari ta'sirini susaytirishi mumkin;",
    "3" : "bozor mexanizmini neytral qoldiradi;",
    "4" : "bozor mexanizmiga ta'sir qilmaydi;",
    "5" : "bozor mexanizmlari ta'sirini kuchaytirishi mumkin;"
  },

  "198":{
    "0" : "2",
    "1" : "Ta'minot inflyatsiyasi quyidagilarga olib kelishi mumkin:",
    "2" : "ish haqi stavkalarining o'sishi;",
    "3" : "davlat byudjeti kamomadining o'sishi;",
    "4" : "mamlakat to'lov byudjeti taqchilligining o'sishi;",
    "5" : "sof eksport hajmining o'sishi;"
  },

  "199":{
    "0" : "2",
    "1" : "Quyidagi omillardan qaysi biri talab inflyatsiyasini keltirib chiqarishi mumkin?",
    "2" : "davlat qimmatli qog'ozlarining defitsitining o'sishi;",
    "3" : "neft narxining ko'tarilishi;",
    "4" : "iste'mol qilishga chekka moyillikning pasayishi;",
    "5" : "shaxsiy daromad solig'i stavkalarining o'sishi;"
  },

  "200":{
    "0" : "2",
    "1" : "Monetaristik kontseptsiyaga ko'ra inflyatsiya va ishsizlik o'rtasida teskari bog'liqlik mavjud:",
    "2" : "qisqa muddatda;",
    "3" : "uzoq muddatda;",
    "4" : "ham qisqa, ham uzoq muddatli istiqbolda.",
    "5" : "To’g’ri javob yoq#"
  }

};

Map<String, Map<String, String>> infocom = {
  "0":{
    "0" : "2",
    "1" : "1.Асосий 5 та энергия манбаларини айтинг?",
    "2" : "қуёш нурланиши, қуёшнинг ҳаракати ва тортилиши, шунингдек ой ва ернинг гравитацион тортишиши, ер ядросининг иссиқлик энергияси, ядро реакцияси, турли моддаларнинг кимёвий реакциялари",
    "3" : "АЭС, ГРЭС, биомасса, геотермал, сувнинг қуйилиши",
    "4" : "геотермал, сувнинг қуйилиши ва қайтиши, АЭС, ГРЭС, ГЭС",
    "5" : "ГЭС, ГРЭС, ТЭЦ, Қуёш, шамол"
  },
  "1":{
    "0" : "2",
    "1" : "1.Асосий 5 та энергия манбаларини айтинг?",
    "2" : "қуёш нурланиши, қуёшнинг ҳаракати ва тортилиши, шунингдек ой ва ернинг гравитацион тортишиши, ер ядросининг иссиқлик энергияси, ядро реакцияси, турли моддаларнинг кимёвий реакциялари",
    "3" : "АЭС, ГРЭС, биомасса, геотермал, сувнинг қуйилиши",
    "4" : "геотермал, сувнинг қуйилиши ва қайтиши, АЭС, ГРЭС, ГЭС",
    "5" : "ГЭС, ГРЭС, ТЭЦ, Қуёш, шамол"
  },

  "2":{
    "0" : "2",
    "1" : "2.0,22,5 мкм тўлқин узунлиги диапазонида ерга тушадиган Қуёш нурланиши оқимининг зичлиги қандай?",
    "2" : "1 кВт/м2",
    "3" : "5 кВт/м2",
    "4" : "200 Вт/м2",
    "5" : "500 Вт/м2"
  },

  "3":{
    "0" : "2",
    "1" : "3.Қуёш энергиясини электр энергиясига ўзгартириш жараёни қайси эффект билан боради?",
    "2" : "фотоэлектрик",
    "3" : "ядровий",
    "4" : "кимёвий",
    "5" : "иссиқлик"
  },

  "4":{
    "0" : "2",
    "1" : "4.Бирламчи электр таъминоти манбаларига қанадай қурилмалар киради?",
    "2" : "генераторлар,",
    "3" : "Аккумуляторлар, қуёш элементлари ва ҳ. к",
    "4" : "кучайтиргичлар, чеклагичлар, детекторлар ва ҳ.к",
    "5" : "трансформаторлар, тўғрилагичлар, ўзгартиргичлар ва ҳ. к"
  },

  "5":{
    "0" : "2",
    "1" : "5.Иккиламчи электр таъминоти манбаларига қанадай қурилмалар киради?",
    "2" : "трансформаторлар, тўғрилагичлар, ўзгартиргичлар ва ҳ. к",
    "3" : "кучайтиргичлар, чеклагичлар, детекторлар ва ҳ. к",
    "4" : "генераторлар, аккумуляторлар, қуёш элементлари ва ҳ. к",
    "5" : "узаткичлар, қабуллагичлар,частота ўзгартиргичлари ва ҳ. к"
  },

  "6":{
    "0" : "2",
    "1" : "6.Қуёш ва шамол энергияси қайси энергия турига киради?",
    "2" : "ноанъанавий энергия манбалари",
    "3" : "анъанавий энергия манбалари",
    "4" : "қайта тикланмайдиган энергия манбалари",
    "5" : "қайта тикланадиган энергия манбалари"
  },

  "7":{
    "0" : "2",
    "1" : "7.Трансформаторнинг ишлаш принципи қайси қонунга асосланган?",
    "2" : "электромагнит индукция қонунига",
    "3" : "Кулон қонунига",
    "4" : "Ампер қонунига",
    "5" : " Ленц қонунига"
  },

  "8":{
    "0" : "2",
    "1" : "8.Қайси мақсадга кўра ток трансформаторининг иккиламчи чўлғами ерга уланади?",
    "2" : "ишловчи ходимларнинг хавфсизлигини таъминлаш учун",
    "3" : "берилган иш тартибини таъминлаш учун",
    "4" : "аниқлик кўрсаткичларини ошириш учун",
    "5" : "трансформаторни ҳимоялаш учун"
  },

  "9":{
    "0" : "2",
    "1" : "9.Трансформатор қандай ток тури аппарати ҳисобланади?",
    "2" : "ўзгарувчан ток",
    "3" : "ўзгармас ток",
    "4" : "ўзгарувчан ва ўзгармас ток",
    "5" : "ток турига боғлиқ эмас"
  },

  "10":{
    "0" : "2",
    "1" : "10.Трасформаторнинг трасформациялаш коэффициентининг ифодасини топинг?",
    "2" : " n=W1/W2",
    "3" : "Kп=U0~ /U0",
    "4" : "S=(n1-n2)/n2",
    "5" : "Sтр=1,7P0"
  },

  "11":{
    "0" : "2",
    "1" : "11.Трансформатор магнит ўзагида магнит занжирини туташтириш учун хизмат қиладиган қисм нима дийилади?",
    "2" : " ярмо",
    "3" : "стержень",
    "4" : "асос",
    "5" : "тирқиш"
  },

  "12":{
    "0" : "2",
    "1" : "12.Трансформатор магнит ўзагида чўлғам ўраладиган қисм нима дейилади?",
    "2" : " стержень",
    "3" : "ярмо",
    "4" : "тирқиш",
    "5" : "асос"
  },

  "13":{
    "0" : "2",
    "1" : "13.Агар n=U1/U2 >1 бўлса, трансформатор қандай трансформатор бўлади?",
    "2" : "пасайтирувчи",
    "3" : "кучайтирувчи",
    "4" : "мослаштирувчи",
    "5" : "чиқиш"
  },

  "14":{
    "0" : "2",
    "1" : "14.Тармоқ трансформатори магнит ўзаги пластинкалариниқандай қалинликларда бўлиши мумкин?",
    "2" : "0,35 ёки 0,5 мм",
    "3" : "0,08-0,2 мм",
    "4" : "0,1-0,3 мм",
    "5" : "0,5-1,0 мм"
  },

  "15":{
    "0" : "2",
    "1" : "15.Трансформатор юклама режимида унинг қайси параметри аниқланади?",
    "2" : "турли юкламалардаги ташқи характеристикаси",
    "3" : "ростлаш характеристикаси",
    "4" : "пўлат ўзакдаги йўқотишлар",
    "5" : "чўлғамлардаги йўқотишлар"
  },

  "16":{
    "0" : "2",
    "1" : "16.Келтирилган шартлардан файси бири трансформаторнинг салт ишлаш режимини аниқламайди?",
    "2" : "бирламчи чулғам токи нолга тенг",
    "3" : "юклама токи нолга тенг",
    "4" : "Бирламчи чулғамга номинал куланиш берилган",
    "5" : "Чулғамлардаги ток частотаси номинал частотага тенг"
  },

  "17":{
    "0" : "2",
    "1" : "17.Уч фазали ток тармоғини икки фазали ток тармоғига ўзгартириш учун қандай схема қўлланилади?",
    "2" : "Скотт схемаси",
    "3" : "Миткеевич схемаси",
    "4" : "Ларионов схемаси",
    "5" : "Герц схемаси"
  },

  "18":{
    "0" : "2",
    "1" : "18. схема бўйича йиғилган уч фазали трансформаторлар қайси гуруҳларга киради?",
    "2" : "тоқ",
    "3" : "жуфт",
    "4" : "ихтиёрий бўлиши мумкин",
    "5" : "нолинчи"
  },

  "19":{
    "0" : "2",
    "1" : "19.Y/Y схема бўйича йиғилган уч фазали трансформатор қайси гуруҳга киради?",
    "2" : "0-гуруҳга",
    "3" : "4-гуруҳга",
    "4" : "6-гуруҳга",
    "5" : "8-гуруҳга"
  },

  "20":{
    "0" : "2",
    "1" : "20.Кучланиш трансформаторлари қайси режимда ишлайди?",
    "2" : "салт ишига яқин режимда",
    "3" : "қисқа туташувга яқин режимда",
    "4" : "трансформаторнинг ишлаш шартига боғлиқ",
    "5" : "юкламага яқин режимда"
  },

  "21":{
    "0" : "2",
    "1" : "21.Пасайтирувчи трансформаторнинг қайси чўлғамида ток катта бўлади?",
    "2" : "иккинчисида",
    "3" : "биринчисида",
    "4" : "юклама характерига боғлиқ",
    "5" : "трансформаторнинг ишлаш шартига боғлиқ"
  },

  "22":{
    "0" : "2",
    "1" : "22.Агар таъминлаш манбаидаги частота 2 марта ошса, трансформатор чиқишидаги ЭЮК қандай ўзгаради?",
    "2" : "2 марта ортади",
    "3" : "ўзгармайди",
    "4" : "2 марта камаяди",
    "5" : "4 марта камаяди"
  },

  "23":{
    "0" : "2",
    "1" : "23.Агар трансформаторнинг бирламчи чўлғамидаги кучланиш ортса, ўзакдаги йўқотишлар қандай ўзгаради?",
    "2" : "Рст ортади",
    "3" : "Рст ўзгармайди",
    "4" : "Рст камаяди",
    "5" : "Рст ростланади"
  },

  "24":{
    "0" : "2",
    "1" : "24.Трансформаторнинг салт ишлаш режимида ваттметр нимани кўрсатади?",
    "2" : "магнит ўзакдаги йўқотишни",
    "3" : "чўлғамлардаги йўқотишни",
    "4" : "иккиламчи чўлғамдаги йўқотишни",
    "5" : "бирламчи чўлғамдаги йўқотишни"
  },

  "25":{
    "0" : "2",
    "1" : "25.Агар таъминлаш манбаидаги частота 2 марта камайса, трансфоматор чиқишидаги ток қандай ўзгаради?",
    "2" : "2 марта камаяди",
    "3" : "ўзгармайди",
    "4" : "2 марта ортади",
    "5" : "4 марта камаяди"
  },

  "26":{
    "0" : "2",
    "1" : "26.Трансформаторнинг қайси иш режимида мис чўлғамлардаги йўқотишни ифодалаш мумкин?",
    "2" : "қисқа туташув режимида",
    "3" : "салт ишлаш режимида",
    "4" : "юклама режимида",
    "5" : "юклама характерига боғлиқ"
  },

  "27":{
    "0" : "2",
    "1" : "27.Ўлчовчи ток трансформаторлари қайси режимда ишлайди?",
    "2" : "қисқа туташувга яқин режимда",
    "3" : "салт ишлашга яқин режимда",
    "4" : "трансформаторнинг ишлаш шартига боғлиқ",
    "5" : "юклама характерига боғлиқ"
  },

  "28":{
    "0" : "2",
    "1" : "28.Трансформаторнинг салт ишлаш режимида истеъмол қиладиган қуввати нимага сарф бўлади?",
    "2" : "ўзакдаги йўқотишга",
    "3" : "чўлғамдаги йўқотишга",
    "4" : "магнит оқимини ҳосил қилишга",
    "5" : "трансформатордаги умумий йўқотишларга"
  },

  "29":{
    "0" : "2",
    "1" : "29.Трансформатор чўлғамларидаги кириш қаршилигини қайси режимда аниқлаш мумкин?",
    "2" : "салт ишлаш режимида",
    "3" : "қисқа туташув режимида",
    "4" : "юклама режимида",
    "5" : "юклама характерига боғлиқ"
  },

  "30":{
    "0" : "2",
    "1" : "30.Ток трансформаторлари қайси режимида ишлайди?",
    "2" : "қисқа туташувга яқин режимда",
    "3" : "салт ишлашга яқин режимда",
    "4" : "трансформаторнинг ишлаш шартига боғлиқ",
    "5" : "трансформаторнинг ишлаш шартига боғлиқ"
  },

  "31":{
    "0" : "2",
    "1" : "31.Қисқа туташув режимида трансформаторнинг тармоқдан оладиган қуввати нимага сарф бўлади?",
    "2" : "чўлғамлардаги йўқотишга",
    "3" : "ўзакдаги йўқотишга",
    "4" : "магнит оқимини ҳосил қилишга",
    "5" : "иккиламчи чўлғамдаги йўқотишни"
  },

  "32":{
    "0" : "2",
    "1" : "32.Магнит ўтказгич ва чўлғамлардаги қувват йўқотишларининг қайси муносабатида трансформатор максимал ФИКка эришади?",
    "2" : " Рмў = Рчўл",
    "3" : "Рмў < Рчўл",
    "4" : "Рмў > Рчўл",
    "5" : "Рст > > Роб"
  },

  "33":{
    "0" : "2",
    "1" : "33.Келтирилган камчиликларданқайс#и бири автотрансформатор учун хусусиятли эмас?",
    "2" : "уч фазали ўзгарувчан ток тармоқларида қўлланиш имкониятининг йўқлиги",
    "3" : "Кичик трансформациялаш коэффициенти",
    "4" : "Катта қисқа туташув токи",
    "5" : "Бирламчи ва иккиламчи чулғамлар орасидаги электр алоқа"
  },

  "34":{
    "0" : "2",
    "1" : "34.Ампер кучининг йўналиши қайси қоидага кўра аниқланади?",
    "2" : "чап қўл қоидаси",
    "3" : "ўнг қўл қоидаси",
    "4" : "парма қоидаси",
    "5" : "ленц қоидаси"
  },

  "35":{
    "0" : "2",
    "1" : "35.Токли ўтказгич магнит майдони куч чизиқларининг йўналиши қайси қоидага кўра аниқланади?",
    "2" : "парма қоидаси",
    "3" : "ўнг қўл қоидаси",
    "4" : "чап қўл қоидаси",
    "5" : "ленц қоидаси"
  },

  "36":{
    "0" : "2",
    "1" : "36.Электр машиналарда қандай энергия электр энергиясига ўзгартирилади?",
    "2" : "механик",
    "3" : "кинетик",
    "4" : "кимёвий",
    "5" : "иссиқлик"
  },

  "37":{
    "0" : "2",
    "1" : "37.Электр машинасининг ташқи қобиғидаги клеммалар қутичаси нима учун хизмат қилади?",
    "2" : "статор чўлғамларини Y ёки Δ схемада улаш учун",
    "3" : "статор чўлғамлари қаршилигини ўзгартириш учун",
    "4" : "ротор тезлигини бошқариш учун",
    "5" : "ротор чўлғамлари қаршилигини ўзгартириш учун"
  },

  "38":{
    "0" : "2",
    "1" : "38.Роторнинг сирпаниши ифодасини топинг?",
    "2" : "S=(n1-n2)/n1",
    "3" : "S=0,5(S1+S2)",
    "4" : "S=π/√2U0I0",
    "5" : "S=(n2-n1)/n1"
  },

  "39":{
    "0" : "2",
    "1" : "39.Асинхрон машинада айланувчан магнит майдони ва ротор айланиш тезликлари ўртасида қандай муносабат мавжуд?",
    "2" : "n1 > n2",
    "3" : "n1 < n2",
    "4" : "n1 = n2",
    "5" : "n1 < < n2"
  },

  "40":{
    "0" : "2",
    "1" : "40.Синхрон машинада айланувчан магнит майдони ва ротор айланиш тезликлари ўртасида қандай муносабат мавжуд?",
    "2" : "n1 = n2",
    "3" : "n1 < n2",
    "4" : "n1 > n2",
    "5" : "n1 < < n2"
  },

  "41":{
    "0" : "2",
    "1" : "41.Катта қувватли синхрон машинада жуфт қутблар қаерга жойлаштирилади?",
    "2" : "роторга",
    "3" : "статорга",
    "4" : "фарқи йўқ",
    "5" : "якорда"
  },

  "42":{
    "0" : "2",
    "1" : "42.Электр машинанинг ЭЮК индукцияланадиган қисми нима деб аталади?",
    "2" : "якор",
    "3" : "статор",
    "4" : "ротор",
    "5" : "станина"
  },

  "43":{
    "0" : "2",
    "1" : "43.Агар асинхрон двигатель магнит оқими 1500 айлмин, ротори 1470 айлмин тезликда айланса, роторнинг сирпаниши нимага тенг бўлади?",
    "2" : "0,02",
    "3" : "0,04",
    "4" : "0,2",
    "5" : "0,04"
  },

  "44":{
    "0" : "2",
    "1" : "44.Синхрон генераторининг бир жуфт қутбли ротори 3000 айлмин тезликда айланса, токнинг частотасини топинг?",
    "2" : "50 Гц",
    "3" : "5 Гц",
    "4" : "500 Гц",
    "5" : "100 Гц"
  },

  "45":{
    "0" : "2",
    "1" : "45.Айланувчан магнит оқими ҳосил бўлиши учун бир фазали асинхрон двигател статорида чўлғамларни ўзаро қандай бурчак остида жойлаштириш керак?",
    "2" : "1200",
    "3" : "900",
    "4" : "1800",
    "5" : "1500"
  },

  "46":{
    "0" : "2",
    "1" : "46.Асинхрон двигателда иш туширувчи реостат нима учун хизмат қилади?",
    "2" : "ротор қаршилигини ва ротор тезлигини бошқариш учун",
    "3" : "двигателни қўзғатиш учун",
    "4" : "статор магнит оқимини ҳосил қилиш учун",
    "5" : "ротор магнит оқимини ҳосил қилиш учун"
  },

  "47":{
    "0" : "2",
    "1" : "47.Ўзгармас ток машинасининг коллектори нима учун хизмат қилади?",
    "2" : "ўзгарувчан ЭЮКни тўғрилаш учун",
    "3" : "двигателни қўзғатиш учун",
    "4" : "статор магнит оқимини ҳосил қилиш учун",
    "5" : "ротор магнит оқимини ҳосил қилиш учун"
  },

  "48":{
    "0" : "2",
    "1" : "48.Тўғрилагич деб нимага айтилади?",
    "2" : "ўзгарувчан токни ўзгармас токка айлантириб берувчи қурилма",
    "3" : "ўзгармас токни ўзгарувчан токка айлантириб берувчи қурилма",
    "4" : "ўзгарувчан ток энергиясини ўзгартириб берувчи қурилма",
    "5" : "ўзгармас ток энергиясини ўзгартириб берувчи қурилма"
  },

  "49":{
    "0" : "2",
    "1" : "49.Тўғрилагичнинг пульсация коэффициентининг ифодасини топинг?",
    "2" : "Kп = U0~ /U0",
    "3" : "Kп=U2/U0",
    "4" : "Kп=I2/I0",
    "5" : "Kп=UVD/U0"
  },

  "50":{
    "0" : "2",
    "1" : "50.Қуйида келтиридган кийматлардан актив юкламада ишлайдиган бир ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
    "2" : "1,57",
    "3" : "0,9",
    "4" : "∞",
    "5" : "0,5"
  },

  "51":{
    "0" : "2",
    "1" : "51.Қайси ифода трансформатор габарит қувватига тўғри келади?",
    "2" : "SТР=0,5 (S1 S2)",
    "3" : "SТР=(12)() U0 (1,21 21) I0",
    "4" : "SТР= ( ) U0 ( 2) I0",
    "5" : "SТР=( ) U0"
  },

  "52":{
    "0" : "2",
    "1" : "52.Актив юкламада ишлаётган бир фазали кўприксимон тўғрилаш схемасидаги токнинг тўғриланган қиймати қандай аниқланади?",
    "2" : "I0=2/ π ∙I2m",
    "3" : "I0= π /22 ∙I2m",
    "4" : "I0= π /22 ∙I2m/n",
    "5" : "I0= π /2 ∙I2m"
  },

  "53":{
    "0" : "2",
    "1" : "53.Актив юкламада ишлаётган бир фазали бир ярим даврли тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
    "2" : "UТЕСК=3,14 U0",
    "3" : "UТЕСК=1,57 U0",
    "4" : "UТЕСК=2,1 U0",
    "5" : "UТЕСК =2,4 U0"
  },

  "54":{
    "0" : "2",
    "1" : "54.Қуйида келтирилган қийматлардан актив юкламали ўрта нуқтали икки ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
    "2" : "0,67",
    "3" : "∞",
    "4" : "0,9",
    "5" : "1,57"
  },

  "55":{
    "0" : "2",
    "1" : "55.Қуйида келтирилган қийматлардан актив юкламали уч фазали бир ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
    "2" : " 0,25",
    "3" : " ∞",
    "4" : "0,67",
    "5" : "1,57"
  },

  "56":{
    "0" : "2",
    "1" : "56.Қуйида келтирилган қийматлардан актив юкламали бир фазали кўприксимон тўғрилаш схемаси учун пульсация коэффициентини танланг:",
    "2" : "0,67",
    "3" : "∞",
    "4" : "0,25",
    "5" : "1,57"
  },

  "57":{
    "0" : "2",
    "1" : "57.Актив юкламада ишлаётган бир ярим даврли тўғрилаш схемасидаги вентил токнинг таъсир этувчи қиймати нимага тенг?",
    "2" : "IB=1,57∙I0",
    "3" : "IB=0,785∙I0",
    "4" : "IB=0,983∙I0",
    "5" : "IB=3,14∙I0"
  },

  "58":{
    "0" : "2",
    "1" : "58.Икки ярим даврли тўғрилаш схемаси учун вентил токининг таъсир этувчи қиймати ва иккиламчи чўлғам фазаси ўзаро қандай боғлиқликка эга?",
    "2" : "IB<I2",
    "3" : "IB=I2",
    "4" : " IB>I2",
    "5" : "IB>>I2"
  },

  "59":{
    "0" : "2",
    "1" : "59.Актив юкламада ишлаётган ўрта нуқтали икки ярим даврли тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
    "2" : "UТЕСК=3,14 U0",
    "3" : "UТЕСК=1,57 U0",
    "4" : " UТЕСК=2,1 U0",
    "5" : "UТЕСК =2,4 U0"
  },

  "60":{
    "0" : "2",
    "1" : "60.Пулъсация коэффициенти нима?",
    "2" : "тўғриланган кучланиш к-нчи гармоника амплитудасининг тўғрилаиган кучланиш ўрта қийматига нисбати",
    "3" : "ҳарорат ўзгариши билаи чиқиш кучланиши ўзгаришини ҳисобга олувчи коэффициент",
    "4" : "бирламчи ва иккиламчи чўлғамлардаги ўрамлар сони нисбати",
    "5" : "бирламчи ва иккиламчи чўлғамлардаги кучланишлар нисбати трансформатора"
  },

  "61":{
    "0" : "2",
    "1" : "61.Актив юклама ишлаётгаи кўприксимон тўғрилаш схемаси учун тўғриланган кучланишнинг ўзгармас ташкил этувчи қаидай аниқланади?",
    "2" : "Uo=0,9∙U2",
    "3" : "U0=0,745∙U2",
    "4" : "U0=(√2/) ∙U2",
    "5" : "Uo=1,57∙U2"
  },

  "62":{
    "0" : "2",
    "1" : "62.Қандай схемаларда трансформаторнинг мажбурий магнитланиши мавжуд?",
    "2" : "бир ярим даврли тўғрилаш схемасида",
    "3" : "ўрта нуктали икки ярим даврли тўғрилаш схемасида",
    "4" : "бир фазали кўприксимон тўғрилаш схемасида",
    "5" : " уч фазали кўприксимон тўғрилаш схемасида"
  },

  "63":{
    "0" : "2",
    "1" : "63.Актив юкламада ишлаётган икки ярим даврли тўғрилаш схемасидаги трансформаторнинг габарит қуввати нимага тенг?",
    "2" : "SТР=1,48 Р0",
    "3" : "SТР=3,09 Р0",
    "4" : "SТР=1,7Р0",
    "5" : "SТР=1,57Р0"
  },

  "64":{
    "0" : "2",
    "1" : "64. Актив юкламада ишлаётган бир фазали кўприксимон тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
    "2" : "UТЕСК=1,57 U0",
    "3" : " UТЕСК=3,1 U0",
    "4" : "UТЕСК=2,82 U0",
    "5" : "UТЕСК =3,14 U0"
  },

  "65":{
    "0" : "2",
    "1" : "65.Актив юкламада ишлаётган бир фазали, бир ярим даврли тўғрилаш схемасида токнинг тўғриланган қиймати қандай аниқланади?",
    "2" : "I0=I2m/π",
    "3" : "I0=(2/π )∙I2m",
    "4" : "I0=( π /2√3) ∙I2m",
    "5" : "I0=( π /√3) ∙I2m"
  },

  "66":{
    "0" : "2",
    "1" : "66.Нима учун бир ярим даврли тўғрилаш схемасида фильтр индуктивликдан бошланмайди?",
    "2" : "тўғрилагичнинг юклама характеристикаси кескин тушувга эга бўлади, тўғриланган ток узлукли бўлади, тескари кучланиш импульслари тик фронтли бўлади",
    "3" : "тўғри#ланган кучланишнинг пульсация миқдори катта бўлади ва силлиқловчи фильтр ўрнатиш лозим бўлади",
    "4" : "вентилда юқори тескари кучланиш пайдо бўлади",
    "5" : "вентилда юқори тескари ток пайдо бўлади"
  },

  "67":{
    "0" : "2",
    "1" : "67.Актив юкламада ишлаётган ўрта нуқтли икки ярим даврли схемада токнинг тўғриланган қиймати қандай аниқланади?",
    "2" : "I0=(2/ π) ∙I2m",
    "3" : "I0=( π /4) ∙I2m",
    "4" : "I0=( π /2√3) ∙I2m",
    "5" : "I0=( π /√3) ∙I2m"
  },

  "68":{
    "0" : "2",
    "1" : "68. Бошқариладиган тўғрилагичда тескари уланган диод қандай вазифани бажаради?",
    "2" : "дроссель энергиясини тиристор ёпиқ бўлганида юкламага узатиш",
    "3" : "қайтар токлардан ҳимоялаш",
    "4" : "бошқариш",
    "5" : "коммутациялаш"
  },

  "69":{
    "0" : "2",
    "1" : "69.Пассив фильтрлар қандай элементлардан ташкил топади?",
    "2" : "дросселлар, конденсаторлар ва резисторлар",
    "3" : "Транзисторлар, микросхемалар",
    "4" : "диодлар",
    "5" : "тиристорлар"
  },

  "70":{
    "0" : "2",
    "1" : "71.Силлиқловчи фильтрларда индуктивлик нима учун юкламага кетма-кет уланади?",
    "2" : "дроссель ўзгарувчан ток бўйича катта қаршиликка эга",
    "3" : ": дроссель ўзгарувчан ток бўйича кичик қаршиликка эга",
    "4" : "актив-индуктив юклама бўлиши учун",
    "5" : "актив-сиғим юклама бўлиши учун"
  },

  "71":{
    "0" : "2",
    "1" : "72.Силлиқловчи фильтрларда сиғим нима учун юкламага параллел уланади?",
    "2" : "конденсатор ўзгарувчан ток бўйича кичик қаршиликка эга",
    "3" : "конденсатор ўзгарувчан ток бўйича катта қаршиликка эга",
    "4" : "актив-сиғим юклама бўлиши учун",
    "5" : "актив-индуктив юклама бўлиши учун"
  },

  "72":{
    "0" : "2",
    "1" : "73.Резонанс фильтрлар қайси ҳолларда қўлланилади?",
    "2" : "истеъмолчи маълум бир гармоникага сезгир бўлганида",
    "3" : "катта кириш кучланишида",
    "4" : "юклама токи катта бўлганида",
    "5" : "юклама токи кичик бўлганида"
  },

  "73":{
    "0" : "2",
    "1" : "74.Актив фильтрларда фильтрлаш вазифасини қандай асбоблар бажаради?",
    "2" : "транзисторлар ва микросхемалар",
    "3" : "диодлар ва тиристорлар",
    "4" : "дросселлар ва конденсаторлар",
    "5" : "резисторлар и конденсаторлар"
  },

  "74":{
    "0" : "2",
    "1" : "75.Транзисторли фильтрнинг ишлаши учун қандай шарт бажарилиши керак?",
    "2" : "Rдин>>Rст",
    "3" : "Rдин<<Rст",
    "4" : "Rдин=Rст",
    "5" : "Rдин>Rст"
  },

  "75":{
    "0" : "2",
    "1" : "76.Параметрик стабилизаторларда қандай элементлар хоссаларидан фойдаланилади?",
    "2" : "ночизиқли элементлар",
    "3" : "чизиқли элементлар",
    "4" : "рақамли элементлар",
    "5" : "мантиқий элементлар"
  },

  "76":{
    "0" : "2",
    "1" : "77.Ўзгармас кучланиш параметрик стабилизаторларда асосий элемент сифатида қандай асбоб ишлатилади?",
    "2" : "стабилитрон",
    "3" : "LС-контур",
    "4" : "тиристор",
    "5" : "диод"
  },

  "77":{
    "0" : "2",
    "1" : "78.Ўзгарувчан кучланиш параметрик стабилизаторларда асосий элемент сифатида қандай асбоб ишлатилади?",
    "2" : "LС-контур",
    "3" : "транзистор",
    "4" : "стабилитрон",
    "5" : "тиристор"
  },

  "78":{
    "0" : "2",
    "1" : "79.Ўзгармас кучланишни узлуксиз ростловчи стабилизаторларида ростловчи элемент сифатида қандай асбоблар ишлатилади?",
    "2" : "транзисторлар ва тиристорлар",
    "3" : "дросселлар",
    "4" : " стабилитронлар",
    "5" : "диод"
  },

  "79":{
    "0" : "2",
    "1" : "80.Қайси ҳолда стабилизатор ростловчи элементи таркибий транзисторларда йиғилади?",
    "2" : "катта юклама токида",
    "3" : "катта чиқиш кучланишида",
    "4" : "катта чиқиш қувватида",
    "5" : "катта кириш токида"
  },

  "80":{
    "0" : "2",
    "1" : "81.Кучайтирувчи элемент операцион кучайтиргичда йиғилганда стабилизаторнинг қайси параметрлари ортади?",
    "2" : "стабилизациялаш тезлиги",
    "3" : "чиқиш токи",
    "4" : "чиқиш кучланиши",
    "5" : "чиқиш қуввати"
  },

  "81":{
    "0" : "2",
    "1" : "82.Таянч кучланиши манбаи қайси элементлардан йиғилиши мумкин?",
    "2" : "стабилитронлар ва интеграл стабилизаторларда",
    "3" : "диодлар ва коденсаторлар",
    "4" : "транзисторлар ва тиристорлар",
    "5" : "дросселлар ва резисторлар"
  },

  "82":{
    "0" : "2",
    "1" : "83.КР142ЕН сериядаги интеграл стабилизаторларда стабилизациялаш қайси услубда амалга оширилади?",
    "2" : "узлуксиз ростлаш",
    "3" : "параметрик",
    "4" : "импульсли",
    "5" : "фаза-импульсли"
  },

  "83":{
    "0" : "2",
    "1" : "84.Ўлчовчи элементда қўшимча диод нима учун қўйилади?",
    "2" : "термокомпенсацияни таъминлаш учун",
    "3" : "чиқиш токини ошириш учун",
    "4" : "чиқиш кучланишини ошириш учун",
    "5" : "бошқариш учун"
  },

  "84":{
    "0" : "2",
    "1" : "85.Импульсли стабилизаторларда ростловчи транзистор қайси режимда ишлайди?",
    "2" : "калит режимида",
    "3" : "чизиқли режимда",
    "4" : "ночизиқли режимда",
    "5" : "тўйиниш режимда"
  },

  "85":{
    "0" : "2",
    "1" : "86.Кенгликимпульсли модуляцияли импульсли стабилизаторларда бошқариш импульсининг нимаси ўзгаради?",
    "2" : "импульснинг кенглиги",
    "3" : "импульснинг даври",
    "4" : "паузанинг узунлиги",
    "5" : "импульснинг фронти"
  },

  "86":{
    "0" : "2",
    "1" : "87.Релели (икки позицияли) импульсли стабилизаторларда бошқариш импульсининг нимаси ўзгаради?",
    "2" : "импульснинг даври",
    "3" : "импульснинг кенглиги",
    "4" : "паузанинг узунлиги",
    "5" : "импульснинг фронти"
  },

  "87":{
    "0" : "2",
    "1" : "88.Инверторларда қандай жараён амалга оширилади?",
    "2" : "инверторлаш",
    "3" : "конверторлаш",
    "4" : "кучайтириш",
    "5" : "стабилизация"
  },

  "88":{
    "0" : "2",
    "1" : "89.Инверторларда калит элементи сифатида қандай элементлар ишлатилади?",
    "2" : "транзисторлар ва тиристорлар",
    "3" : "диодлар ва стабилитронлар",
    "4" : "микросхемалар",
    "5" : "дросселлар и резисторлар"
  },

  "89":{
    "0" : "2",
    "1" : "90.Ўзгартиргич трансформатори қайси частоталарда ишлайди?",
    "2" : "юқори частотаталарда",
    "3" : "50 Гц ва ундан юқори частоталарда",
    "4" : "50 Гц дан паст частоталарда",
    "5" : "50 Гц частотада"
  },

  "90":{
    "0" : "2",
    "1" : "91.Шахсий компьютерлар электр таъминоти манбаи (ШК ЭТМ) киришида ва чиқишида ҳалақитларни сўндириш фильтрлари нима учун қўйилади?",
    "2" : "юқори частотали ҳалақитларни сўндириш учун",
    "3" : "ўзгартиргични таъминот манбаидан гальваник ажратиш учун",
    "4" : "фильтрлаш учун",
    "5" : "стабилизациялаш учун"
  },

  "91":{
    "0" : "2",
    "1" : "92.ШК ЭТМнинг номинал чиқиш кучланишларини топинг?",
    "2" : "12 В, 5 В",
    "3" : "15 В, 5 В",
    "4" : " 9 В, 5 В",
    "5" : "15 В, 12 В"
  },

  "92":{
    "0" : "2",
    "1" : "93.ШК ЭТМ чиқиш тўғрилагичларида Шоттки диодлари нима учун қўлланилади?",
    "2" : "динамик йўқотишларни камайтиришг учун",
    "3" : "статик йўқотишларни камайтиришг учун",
    "4" : "ШК ЭТМ ўлчамларини камайтириш учун",
    "5" : "ШК ЭТМ нархини камайтириш учун"
  },

  "93":{
    "0" : "2",
    "1" : "94.ШК ЭТМи ўзгартиргичларида қўшимча таъминот манбаи нима учун ишлатилади?",
    "2" : "бошқариш схемаси ва қувват кучайтиргичини ёрдамчи кучланиш билан таъминлаш учун",
    "3" : "инверторни ёрдамчи таъминот кучланиши билан таъминлаш учун",
    "4" : "электр таъминоти манбаини ҳимоялаш учун",
    "5" : "бошқариш учун"
  },

  "94":{
    "0" : "2",
    "1" : "95.Электр энергияси тизимларига юқори гармоникаларнинг таъсири қуйидагича номоён бўлади:",
    "2" : "барча жавоблар тўғри",
    "3" : "электр энергиясини генерациялаш, узатиш ва ундан фойдаланиш процесслари самараларининг камайиши",
    "4" : "аппаратура изоляциясининг эскириши, бунинг натижасида хизмат муддатини камайиши ва аппаратуранинг хато ишлаши",
    "5" : "электр энергияси тизимларига юқори гармоникаларнинг таъсири кетма-кет ва параллел резонанслар натижасида токлар ва кучланишлар гармоникаларининг ортиши"
  },

  "95":{
    "0" : "2",
    "1" : "96.Электр энергияси тизимларига юқори гармоникаларнинг таъсири қуйидагича номоён бўлади:",
    "2" : "кучланишлар",
    "3" : "нинг носимметриклигини камайтириш ва истеъмол токининг эгрилигини яхшилаш учун реактив қувват заҳирасини таъминлайдиган тузатувчи қурилмалар ишлатилади",
    "4" : "ҳалақитларни сўндириш фильтрлар ишлатилади",
    "5" : "паст частотали фильтрлар ишлатилади"
  },

  "96":{
    "0" : "2",
    "1" : "97.«офф-лайн» синфидаги узлуксиз электр таъминоти агрегатларида электр энергияси истеъмолчига қандай узатилади?",
    "2" : "нормал режимда электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва электр тармоқда авария бўлганида синусоидал кучланиш генератори уланади",
    "3" : "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш, частота ва синусоидаллик бўйича стабил электр энергияси юкламага узатилади",
    "4" : "авария режимида электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва нормал режимда синусоидал кучланиш генератори уланади",
    "5" : "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш узатилади"
  },

  "97":{
    "0" : "2",
    "1" : "98.Радиоэлектрон аппаратуралар ўзгартиргичларида қўшимча қувват кучайтиргичлари нима учун ишлатилади?",
    "2" : "кичик қувватли микросхема бошқариш сигалини кучайтириш учун",
    "3" : "бошқариш схемасини инвертор билан мослаштириш учун",
    "4" : "радиоэлектрон аппаратурани ишончли ишлаши учун",
    "5" : "электр таъминоти манбаини ҳимоялаш учун"
  },

  "98":{
    "0" : "2",
    "1" : "99.Радиоэлектрон аппаратура электр таъминоти манбаи ўзгартиргичи транзисторларини химоялаш қандай амалга оширилади?",
    "2" : " бошқариш схемаси орқали, у ортиқча юкланиш ҳақида ҳимоя резисторидан сигнал олади",
    "3" : "чиқиш LС фильтри орқали",
    "4" : "кириш импульсли стабилизатори орқали",
    "5" : "чиқиш импульсли стабилизатори орқали"
  },

  "99":{
    "0" : "2",
    "1" : "100.Аккумуляторларда қандай жараён амалга оширилади?",
    "2" : "электр энергияси кимёвий энергияга, кейин кимёвий энергия электр энергиясига айлантирилади",
    "3" : "электр энергияси механик энергияга, кейин механик энергия электр энергиясига айлантирилади",
    "4" : "электр энергияси иссиқлик энергияга, кейин иссиқлик энергия электр энергиясига айлантирилади",
    "5" : "электр энергияси кинетик энергияга, кейин кинетик энергия электр энергиясига айлантирилади#"
  }

};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TestParser"),
      ),
      body: Container(),
    );
  }

}
