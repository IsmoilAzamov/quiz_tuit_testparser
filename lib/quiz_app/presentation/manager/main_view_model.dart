
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AutoNextCubit extends Cubit<bool>{

  AutoNextCubit():super(false);
  void changeValuetoTrue()=>emit(true);
  void changeValueto(bool value)=>emit(value);

}


class QuestionNumberCubit extends Cubit<int>{
  QuestionNumberCubit():super(0);
  void changeValue()=>emit(state+1);
}

class QuestionsListCubit extends Cubit<Map<String, Map<String,String>>> {
  QuestionsListCubit() :super({

    "0":{
      "0" : "2",
      "1" : "“Ekonometrika” tushunchasiga qaysi ta’rif mos keladi? ",
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
        "1" : "Quyida sanab o’tilgan modellar ichidan bir tenglamali regression modelni tanlang? 1) yetkazib berish xajmidan narx modeli; 2) talab va taklif modeli; 3) trend va mavsumiylik modeli; 4) ishlab chiqarish xajmining ishlab chitsarish omillariga bog’liqligi modeli",
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



  });

}

class ResultCubit extends Cubit<int>{
  ResultCubit():super(0);
  void incrementScore()=>emit(state+5);
}

class SubmettedButtonCubit extends Cubit<bool>{
  SubmettedButtonCubit():super(false);
  void changeValue()=>emit(true);
  void changeValueToFalse()=>emit(false);
}

class ChoosenAnswerCubit extends Cubit<int>{
  ChoosenAnswerCubit():super(0);
  void changeValue(int value)=>emit(value);
}