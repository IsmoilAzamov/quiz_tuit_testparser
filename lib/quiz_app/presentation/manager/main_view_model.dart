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

class SolvingTestCubit extends Cubit<bool>{
  SolvingTestCubit():super(false);
  void changeValue(bool value)=>emit(value);

}



class QuestionsListCubit extends Cubit<Map<String, Map<String,String>>> {
  QuestionsListCubit() :super({
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

  });
  void changeValue(Map<String, Map<String,String>> value)=>emit(value);

}
