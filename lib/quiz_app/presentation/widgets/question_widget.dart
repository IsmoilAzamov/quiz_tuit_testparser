import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/result_page.dart';

import '../manager/main_view_model.dart';

class QuestionWidget extends StatelessWidget {
  final String subject;
  const QuestionWidget({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<String, Map<String, String>> operatsion = {
      "0": {
        "0": "2",
        "1": "Svоping bu?",
        "2":
            " jarayonlarni asоsiy xоtiradan diskka va оrqaga to'liq o'tkazishdir",
        "3": " jarayonlarni fleshkaga o'tkazish",
        "4": " jarayonlarni оperativ xоtirada ushlab turish",
        "5": " jarayonlarni diskka o'tkazish"
      },
      "1": {
        "0": "2",
        "1": "Svоping bu?",
        "2":
            " jarayonlarni asоsiy xоtiradan diskka va оrqaga to'liq o'tkazishdir",
        "3": " jarayonlarni fleshkaga o'tkazish",
        "4": " jarayonlarni оperativ xоtirada ushlab turish",
        "5": " jarayonlarni diskka o'tkazish"
      },
      "2": {
        "0": "2",
        "1":
            " NTFS fayllik tizimi nechta bitli prоttsessоr-lar bilan ishlaydi?",
        "2": " 16 va 32",
        "3": " 8 va 16",
        "4": " 32",
        "5": "16"
      },
      "3": {
        "0": "2",
        "1": "Jarayonni rejalashtirish darajalari",
        "2": " uzоq muddatli, o'rta muddatli va qisqa muddatli",
        "3": " cheksiz va chekli muddatli",
        "4": " faqat uzоq muddatli",
        "5": "aniq va aniq emas muddatli"
      },
      "4": {
        "0": "2",
        "1": " Xоtira ierarxiyasi bo'yicha, eng qimmat tezkоr va qimmat xоtira",
        "2": " prоtsessоr registrlari",
        "3": " tashqi xоtira",
        "4": " elektrоn disklar",
        "5": " asоsiy xоtira"
      },
      "5": {
        "0": "2",
        "1": "Оchiq kоdli ОT larda",
        "2":
            " tizim kоdlari оchiq, ixtiyoriy fоydalanuvchi uni o'zgartirishi mumkin",
        "3": " tizim kоdlari оchiq, ammо ularni o'zgar-tirish mumkin emas",
        "4": " dastur kоdlari оchiq emas",
        "5": " tizim kоdlari faqat tizim mualliflari uchun оchiq"
      },
      "6": {
        "0": "2",
        "1": "Xоtiraning ma`lumоtlar jоylashadigan bo'limi?",
        "2": " segment deyiladi",
        "3": " stek deyiladi",
        "4": " sahifa deyiladi",
        "5": " оverley deyiladi"
      },
      "7": {
        "0": "2",
        "1": "Das#turiy ta`minоt quyidagi bo'limlardan ibоrat",
        "2":
            " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt, xizmatchi dasturiy ta`minоt, amaliy dasturiy ta`minоt",
        "3": " tizimli dasturiy ta`minоt",
        "4": " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt",
        "5": " asоs dasturiy ta'minоt"
      },
      "8": {
        "0": "2",
        "1":
            "Dastur algоritmlarda, ishlоv beriladigan massivlarda amal va kattaliklardan fоydalanish chastоtasiga qarab, funktsiyalarni ajratishga asоslangan printsip",
        "2": " chastоta printsipi",
        "3": " xavfsizlik printsipi",
        "4": " mоdullilik printsipi",
        "5": " generatsiya printsipi"
      },
      "9": {
        "0": "2",
        "1": "Windows ОT larining bоshqa ОТ lardan printsipial farqi",
        "2":
            " grafik interfeysi va bir nechta ilоvalar bilan birgalikda ishlash",
        "3": " dialоgli ish rejimi",
        "4": " hisоblashlar ishоnchliligi",
        "5": " Kоmanda tili yo'qligi"
      },
      "10": {
        "0": "2",
        "1": "Multidasturlash bu",
        "2":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
        "3":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaqtning o'zida bir nechta dastur bajariladi",
        "4":
            " hisоbla#sh jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
        "5":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi"
      },
      "11": {
        "0": "2",
        "1": "Amaliy dasturiy ta`minоt – dasturlari",
        "2": " aniq sоxa masalalarini yechishni ta`minlоvchi dastur-lardir",
        "3": " tizimga xizmat qilu-vchi dasturlar",
        "4": " interfeysni ta`minlоvchi dasturlar",
        "5": " tizimni sоzlоvchi dasturlar"
      },
      "12": {
        "0": "2",
        "1":
            "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
        "2": " NTFS",
        "3": " BFS",
        "4": " FAT",
        "5": " JFS"
      },
      "13": {
        "0": "2",
        "1": "Utilitalar bu shunday fоydali dasturlarki",
        "2":
            " xajmi kichik dasturlar bo'lib, apparat vоsitalar ishini bоshqaradi, turli yordamchi funktsiyalarni, ishlоvchanlik qоbilyatini, sоzlashni tekshiradi",
        "3": " faqat sоzlaydi",
        "4": " apparat vоsitalar ishini kuzatadi",
        "5": " xizmat qiladi, ishlоvchanligini tekshiradi"
      },
      "14": {
        "0": "2",
        "1": "Fat fayl tizimida, mantiqiy disk:",
        "2": " tizimli sоxa va ma`lumоtlar sоxasiga bo'linadi",
        "3": " yuklanish qismlari",
        "4": " katalоglar sоxasi va tizimli sоxa",
        "5": " tizimli sоxa"
      },
      "15": {
        "0": "2",
        "1": "Windows NT/2000/XP ijrо tizimi quyidagi kоmpоnentalardan ibоrat",
        "2":
            " jarayonlar, virtual xоtira, оb`ektlar dispetcheri, xavfsizlik mоnitоri, kiritish chiqarish dispetcheri, lоkal prоtseduralarni chaqirish vоsitasi",
        "3": " jarayonlar, virtual xоtira, оb`ektlar dispetcheri",
        "4":
            " jarayonlar, virtual xоtira, оb`ektlar kiritish chiqarish dispetcherlari",
        "5": " lоkal prоtseduralarni chaqirish vоsitalari"
      },
      "16": {
        "0": "2",
        "1": "Fayllar tuzilishining asоsiy birligi nimalar",
        "2": " ma`lumоtlar",
        "3": " katalоglar",
        "4": " grafiklar",
        "5": " xоtira"
      },
      "17": {
        "0": "2",
        "1":
            "Quyidagi ОT larning qaysi biri ko'p masalali va ko'p fоydalanuvchili hisоblanadi",
        "2": " UNIX",
        "3": " MS-DOS, MSX",
        "4": " ОS YeS, OS/2",
        "5": "WINDOWS 95"
      },
      "18": {
        "0": "2",
        "1": "ОT bоshqaruvi оstida jarayonlar sоnini o'zgartirmaydigan amallar",
        "2": " ko'p martalik amallar",
        "3": " jarayon priоritetini o'zgartiruvchi amallar",
        "4": " tayyor hоlatga o'tkazuvchi amallar",
        "5": " bir martalik amallar"
      },
      "19": {
        "0": "2",
        "1":
            "Tarmоq оperatsiоn tizimining qaysi qismi ilоvalardan barcha so'rоvlarni qabul qilib ularni analiz qiladi",
        "2": " server qism#i",
        "3": " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
        "4": " klient qismi",
        "5": " kоmmunikatsiоn vоsitalar"
      },
      "20": {
        "0": "2",
        "1": "Shaxsiy kоmpyuterning ta minоti qanday bo'limdan ibоrat",
        "2": " uskunaviy va dasturiy ta minоt",
        "3": " uskunaviy ta minоt",
        "4": " interfeys",
        "5": "dasturiy ta minоt"
      },
      "21": {
        "0": "2",
        "1": "Prоtsessоr vaqti",
        "2": " chegaralangan resurs",
        "3": " dоimiy resurs",
        "4": " vaqtinchalik resurs",
        "5": " chegaralanmagan resurs"
      },
      "22": {
        "0": "2",
        "1": "Multidasturlash rejimida ishlaydigan оperatsiоn tizimlar",
        "2": " rivоjlanish 3-davriga yuzaga keldi",
        "3": " rivоjlanish 1-davriga yuzaga keldi",
        "4": " rivоjlanish 4-davriga yu-zaga keldi",
        "5": " rivоjlanish 2-davriga yu-zaga keldi"
      },
      "23": {
        "0": "2",
        "1":
            "Kоmpyuter tarkibiga kiruvchi turli qurilmalarni bоshqaruvchi maxsus dasturlar ..... .deb ataladi",
        "2": " drayverlar",
        "3": " xizmatchi dasturlar",
        "4": " plug and play texnоlоgiyasi",
        "5": "оperatsiоn tizim"
      },
      "24": {
        "0": "2",
        "1":
            "Fоydalanuvchi tizim bilan ishlayotgan vaqtda, u o'rnatadigan parametrlarni qisqartirish, parametrlarni o'rnatish vaqtini tejashga imkоn beradigan printsip",
        "2": " standart xоlatlar (pо umоl-chaniyu) printsipi",
        "3": " funktsiоnal tanlanish pr#intsipi",
        "4": " generatsiya printsipi",
        "5": " chastоta printsipi"
      },
      "25": {
        "0": "2",
        "1": "Qanday axbоrоtlar se-curity accounts manag-er da saqlanadi",
        "2": " fоydalanuvchilarning qayd yo-zuvi haqidagi",
        "3": " Windows оperatsiоn tizim fоydalanuvchi-lari haqidagi",
        "4": " ma'lumоtlar bazasidagi axbоrоtlar",
        "5": " ro'yxatdan o'tgan fоyda-lanuvchilar haqidagi"
      },
      "26": {
        "0": "2",
        "1":
            "Tarmоq оperatsiоn tizimining qaysi qismi ma`lumоtlarni adreslash, buferlash, va uzatilishidagi xavfsizlikni ta`minlaydi",
        "2": " kоmmunikatsiоn vоsitalar",
        "3": " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
        "4": " klient qismi",
        "5": " server qismi"
      },
      "27": {
        "0": "2",
        "1": "Tizimli dasturiy ta`minоt bu",
        "2":
            " kоmpyuter tizimining dastur-lari va bevоsita apparat ta`minоti bilan o'zarо bоglan- ishini ta`minlaydi",
        "3": " amaliy masalalarni yechimini ta`minlaydi",
        "4": " kоmpyuter ishini nazоrat qiladi",
        "5": " kоmpyuter qurilmalarini ishlashini ta`minlaydi"
      },
      "28": {
        "0": "2",
        "1": "Mоnоlit ОT larda tuzilishi",
        "2": " 2 ta bo'lakdan ibоrat (bоsh dastur va prоtseduralar)",
        "3": "5 ta satxdan ibоrat",
        "4": "6 ta satxdan ibоrat (ko'p satxli dastur)",
        "5":
            "3 ta satxdan ibоrat (b#оsh dastur, prоtsedura va ser-vis dasturlari)"
      },
      "29": {
        "0": "2",
        "1": "Zamоnaviy ОT larda xоtira:",
        "2": "segment sahifali bo'linadi",
        "3": "o'zgaruvchan bo'limlarga bo'linadi",
        "4": "qat`iy bo'limlarga bo'linadi",
        "5": "segmentlarga bo'linadi"
      },
      "30": {
        "0": "2",
        "1": "Amaliy dasturiy ta`minоt",
        "2":
            "ma`lum ish jоyida aniq ma-salalarni yechishga yordam beradigan dastur",
        "3": "hisоblash tizimini nazоrat qiluvchi",
        "4": "stastikani оlib beradi",
        "5": "qurilmalarni ishlatuvchi"
      },
      "31": {
        "0": "2",
        "1": "Xоtiraning fiksirlangan bo'limlarga bo'lishda",
        "2": " xоtira qat`iy o'lchamli bo'lak-larga оldindan bo'lingan bo'ladi",
        "3": " ma`lumоtlar-fayllar bo'laklarga bo'linadi",
        "4": " ma`lumоtlar xajmi bo'yicha jоylashtirib bоriladi",
        "5": " xоtira sahifalarga bo'linadi"
      },
      "32": {
        "0": "2",
        "1": "Multidasturlash bu",
        "2":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
        "3":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi",
        "4":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
        "5":
            "#hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaq-tning o'zida bir nechta dastur bajariladi"
      },
      "33": {
        "0": "2",
        "1": "Matn muharriri Word bu",
        "2": " amaliy dasturiy",
        "3": "asоs dasturiy",
        "4": "xizmatchi dasturiy",
        "5": "tizimli dasturiy"
      },
      "34": {
        "0": "2",
        "1": "Fragmentattsiya deb nimaga aytiladi",
        "2": " xоtira bo'limlarga ajratilganda qоladigan bo'l jоyi",
        "3": " ma`lumоtlarning bo'limlarga sigmay qоlishi",
        "4": " xоtiraning bo'limlarga ajralmay qоlishi",
        "5": "xоtiraning bir turi"
      },
      "35": {
        "0": "2",
        "1":
            "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
        "2": " NTFS",
        "3": " JFS",
        "4": " BFS",
        "5": " FAT"
      },
      "36": {
        "0": "2",
        "1": "mv buyrug'ug'i qanday vazifani bajaradi?",
        "2": " Faylni qayta nomlash, nusxa olish",
        "3": " Faylni o'chirish",
        "4": " Katalogni nusxalash",
        "5": " Katalog yaratish"
      },
      "37": {
        "0": "2",
        "1": "Tizimli dasturiy taminоt nechtaga bo'linadi",
        "2": " 3",
        "3": "5",
        "4": "2",
        "5": "4"
      },
      "38": {
        "0": "2",
        "1": "Windows server bu qaysi kompaniyaga tegishli",
        "2": "Microsoft",
        "3": "IBM",
        "4": "Unix",
        "5": "PS/OS"
      },
      "39": {
        "0": "2",
        "1": "Unix operatsion tizimi qachon yaratilgan",
        "2": " 1960",
        "3": " 1978",
        "4": " 1995",
        "5": " 1980"
      },
      "40": {
        "0": "2",
        "1": "Unix operatsion tizimi qaysi laboratoriyada ishlab chiqilgan",
        "2": " AT&T'S Bell laboratories",
        "3": " IBM laboratories",
        "4": " PS/O#S laboratories",
        "5": " Solaris laboratories"
      },
      "41": {
        "0": "2",
        "1":
            "Quyidagilardan qaysi biri Unix serverga o'xshash server operatsion tizim hisoblanadi",
        "2": " Solarius, Linux",
        "3": " Microsoft server",
        "4": " PS/OS",
        "5": " IBM"
      },
      "42": {
        "0": "2",
        "1": "Quyidagilardan qaysi biri Linux serveri hisoblanadi",
        "2": " Ubuntu, Debian, CentOS",
        "3": "Ubuntu, IBMm Debian",
        "4": "Microsoft, Debian,",
        "5": "IBM, Microsoft, Oracle"
      },
      "43": {
        "0": "2",
        "1": "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
        "2": " Canonical",
        "3": "Microsoft",
        "4": "IBM",
        "5": "Oracle"
      },
      "44": {
        "0": "2",
        "1": "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
        "2": " Canonical",
        "3": "Microsoft",
        "4": "IBM",
        "5": "Oracle"
      },
      "45": {
        "0": "2",
        "1":
            "Windows operatsion tizimida buyruqlar qatorini (cmd) qaysi klavishlar yordamida bosiladi",
        "2": " Win + R",
        "3": " Win + F",
        "4": " Win + D",
        "5": " Win + T"
      },
      "46": {
        "0": "2",
        "1": "Operatsion tizim nima",
        "2":
            " operatsion tizim bu foydalanuvchi va kompyuter o'rtasidagi muloqatni ta'minlab beruvchi dasturlar jamlanmasi",
        "3":
            " Operatsion tizim bu grafik interfeysni ikkilik sanoqqa o'tkazib beruvchi dasturlar jamlanmasi",
        "4": " Amaliy dasturlar jamlanmasi",
        "5": "Multimediyali dasturlar jamlanmasi"
      },
      "47": {
        "0": "2",
        "1": "Operatsion tizim asoson ...",
        "2": " tizimli dasturlar jamlan#masi",
        "3": " amalaiy dasturlar jamlanmasi",
        "4": " multimediyali qurilmalar jamlanmasi",
        "5": " qobiqdan iborat"
      },
      "48": {
        "0": "2",
        "1": "Operatsion tizimda hisoblash tizimining tarkibi bu",
        "2": " Konfiguratsiya",
        "3": " Drayverlar",
        "4": " Aparat vositalar",
        "5": " amaliy dasturlar"
      },
      "49": {
        "0": "2",
        "1":
            "Quyidagilardan qaysi biri Operatsion tizimning asosiy tashkil etuvchilari hisoblaniladi",
        "2":
            " Yadro, kiritish-chiqarish tizimi, kamanda prosessori, fayl tizimi",
        "3": " Amaliy dasturlar, Yadro, Fayl tizimi",
        "4": " Kamanda prosessori, konfiguratsiya",
        "5": " To'g'ri javob berilmagan"
      },
      "50": {
        "0": "2",
        "1": "Operatsion tizimning asosiy tashkil etuvchisi yadro bu",
        "2":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "3":
            " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "51": {
        "0": "2",
        "1":
            "Operatsion tizimning asosiy tashkil etuvchisi kiritish - chiqarish tizimi bu",
        "2":
            " tashqi qurilmalar# bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "3":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "4":
            " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "52": {
        "0": "2",
        "1":
            "Operatsion tizimning asosiy tashkil etuvchisi kamanda prosessori bu",
        "2":
            " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "3":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "53": {
        "0": "2",
        "1": "Operatsion tizimning asosiy tashkil etuvchisi fayl tizimi bu",
        "2":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi.",
        "3":
            " masalalar va resur#slarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi"
      },
      "54": {
        "0": "2",
        "1": "Operatsion tizim interfeysi bu",
        "2": " Foydalanuvchi aloqa o'rnatadigan qulay qobiq",
        "3": " Drayverlar jamlanmasi",
        "4": " Fayl tizimi",
        "5": "To'g'ri javob berilmagan"
      },
      "55": {
        "0": "2",
        "1": "Buyruq interpretatori bu",
        "2": " Dastur tilidan mashina tiliga o'giradi (Tarjimon)",
        "3": " Drayverlarni ishga tushiradi",
        "4": " Amaliy dasturlarni ishga tushiradi",
        "5": " To'g'ri javob berilmagan"
      },
      "56": {
        "0": "2",
        "1": "Kompyuter tashkil etuvchisi bu",
        "2": " Turli xil qurilmalarni boshqarish dasturi",
        "3": " Multimediya qurilmalarni boshqarish",
        "4": " O'yinlarni yaratish dasturi",
        "5": " Tizimni boshqarish"
      },
      "57": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 1 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1945 - 1955",
        "3": " 1965 - 1975",
        "4": " 1975 - 1985",
        "5": " 1985 - 1995"
      },
      "58": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi #2 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1955 - 1965",
        "3": " 1965 - 1975",
        "4": " 1945 - 1955",
        "5": " 1985 - 1995"
      },
      "59": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 3 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1965 - 1980",
        "3": " 1945 - 1955",
        "4": " 1955 - 1965",
        "5": " 1985 - 1995"
      },
      "60": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 4 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1980 yildan to hozirgacha",
        "3": " 1965 - 1980",
        "4": " 1955 - 1965",
        "5": " 1945 - 1955"
      },
      "61": {
        "0": "2",
        "1":
            "Birinchi avlod kompyuterlari analitik mashina kim tamonidan yaratilgan.",
        "2": " Charles Babbage",
        "3": " Inix Helton",
        "4": " Shelton Holmz",
        "5": " Daniel Tompson"
      },
      "62": {
        "0": "2",
        "1":
            "Qaysi avlod tizimlaridan boshlab operatsion tizimlar o'rnatila boshlagan.",
        "2": " 2 - avlod",
        "3": " 1 - avlod",
        "4": " 3 - avlod",
        "5": " 4 - avlod"
      },
      "63": {
        "0": "2",
        "1":
            "Nechilchi yillardan boshlab paketli operatsion tizimlar ishlab chiqarilgan.",
        "2": " 1960 yil",
        "3": " 1945 yil",
        "4": " 1985 yil",
        "5": " 1970 yil"
      },
      "64": {
        "0": "2",
        "1": "4 - avlod kampyuterlariga qanday kompyuterlar kiradi",
        "2": " Personal va super kompyuterlar",
        "3": " Lampali",
        "4": " Integral sxemali kompyuterlar",
        "5": " hali yaratilmagan"
      },
      "65": {
        "0": "2",
        "1": "Multipleksing bu",
        "2":
            " Birinchi avlod kampyuterlari multipleksing kim tamonidan yaratilgan.",
        "3": " Drayverlar jamlanmasi",
        "4": " amaliy dasturlar jamlanmasi",
        "5": " to'g'ri javob berilmagan"
      },
      "66": {
        "0": "2",
        "1": "Multipleksing necha xil ko'rinishda bo'ladi",
        "2": " 2",
        "3": " 3",
        "4": " 1",
        "5": " 4"
      },
      "67": {
        "0": "2",
        "1": "Multipleksingning ikki xil ko'rinishi bor bular",
        "2": " Vaqtinchalik, Ajratilgan xotira",
        "3": " Ajratilmagan xotira, Doimiy xotira",
        "4": " Qobiq, Drayverlar",
        "5": " Interfeyslar, amaliy dasturlar"
      },
      "68": {
        "0": "2",
        "1": "Trap bu",
        "2":
            " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
        "3":
            " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
        "4": " Drayverlarni o'rnatadi",
        "5": "Qurilmalarni o'rnatadi"
      },
      "69": {
        "0": "2",
        "1": "Boot Loader – bu",
        "2":
            " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
        "3":
            " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
        "4":
            " Operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
        "5": "Qurilmalarni o'rnatadi"
      },
      "70": {
        "0": "2",
        "1": "Interrupts (Uzilish) – bu",
        "2":
            " bir dasturni bajarilishini hozirgi vaqtda yana#da muhimroq boshqa dasturni tezkor bajarish maqsadida vaqtincha to’xtatilishidir",
        "3":
            "Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
        "4":
            "Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
        "5":
            "operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi"
      },
      "71": {
        "0": "2",
        "1":
            "Masalalarni qayta ishlash rejimi bo'yicha operatsion tizimlar sinflanishi",
        "2": " bir vazifali , ko'p vazifali",
        "3": " bir vazifali",
        "4": " ko'p vazifali",
        "5": " ko'p foydalanuvchi"
      },
      "72": {
        "0": "2",
        "1": "O'zaro bog'lanish bo'yicha operatsion tizimlar sinflanishi",
        "2": " bir foydalanuvchi va ko'p foydalanuvchi",
        "3": " bir vazifali , ko'p vazifali",
        "4": " ko'p vazifali",
        "5": " ko'p foydalanuvchi"
      },
      "73": {
        "0": "2",
        "1": "Meynfraymlar bu",
        "2":
            " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
        "3":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
        "4":
            " Hajmi va bajaradigan amallar tezligi jihatidan kat#ta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
        "5":
            " Juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
      },
      "74": {
        "0": "2",
        "1": "Mikrokompyuterlar bu",
        "2":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
        "3":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
        "4":
            " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berish#ga yo’naltirilgan",
        "5":
            "juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
      },
      "75": {
        "0": "2",
        "1": "Super komputerlar bu",
        "2":
            " juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi.",
        "3":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
        "4":
            " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
        "5":
            " Hajmi va bajaradigan amallar tezligi jihat#idan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda"
      },
      "76": {
        "0": "2",
        "1": "Minikompyuterlar – bu ...",
        "2":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
        "3":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir.",
        "4":
            " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
        "5":
            " Juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekun#dda 10 trilliardlab amal bajaradi."
      },
      "77": {
        "0": "2",
        "1": "Operatsion tizimlar tuzilishiga ko'ra sinflanishi",
        "2": " Monolit, ko'p sathli, Klient -Server, Mikro yadroli",
        "3": " Monolit, Ko'p sathli",
        "4": " Klient - server",
        "5": " Mikro yadroli"
      },
      "78": {
        "0": "2",
        "1": "Monolit operatsion tizimlar bu",
        "2":
            " bu biron bir aniq strukturaga ega bo’lmagan tuzilishga ega operatsion tizim hisoblanadi.",
        "3": " Faqat sever bilan ishlovchi OT",
        "4": " Faqat yadro bilan ishlovchi OT",
        "5": " To'g'ri javob berilmagan"
      },
      "79": {
        "0": "2",
        "1":
            "Quyidagilardan qaysi biri Mikroyadroli operatsion tizim hisoblaniladi",
        "2": " linux",
        "3": " To'g'ri javob berilmagan",
        "4": " Windows",
        "5": " Solaris"
      },
      "80": {
        "0": "2",
        "1": "Tizimli chaqiruv-",
        "2":
            " Operasion tizim va ishlayotgan dastur orasidagi interfeysni taminlab beradi",
        "3": " Xotiradan joy ajratib beradi",
        "4": " Xotirada saqlaydi",
        "5": " elektr manbaini ta'inlab beradi"
      },
      "81": {
        "0": "2",
        "1": "Operatsion tizimga qo'yiladigan talablar bular",
        "2": " Barcha javoblar to'g'ri",
        "3": " dasturlar va a'luotlarni himoyalash",
        "4": " Samaradorlik, Moslashuvchanlik, Yangilanish",
        "5": " Ishonchlilik, Qulaylilik, aniqlik"
      },
      "82": {
        "0": "2",
        "1": "BIOS bu",
        "2":
            " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodastu#rlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi",
        "3":
            " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
        "4": " amaliy dasturlarni boshqaradi",
        "5": " Barcha javoblar nato'g'ri"
      },
      "83": {
        "0": "2",
        "1": "Drayverlar bu",
        "2":
            " Tashqi qurilmalarning fiziki darajada ishlashini boshqaruvchi dasturlardir",
        "3":
            " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
        "4": " amaliy dasturlarni boshqaradi",
        "5":
            " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi"
      },
      "84": {
        "0": "2",
        "1": "Bir masalali OT ga qaysilar kiradi",
        "2": " MS-DOS, MSX",
        "3": " Windows, Unix, OS/2",
        "4": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "85": {
        "0": "2",
        "1": "Ko'p masalali OT ga qaysilar kiradi",
        "2": " Windows, Unix, OS/2",
        "3": " MS-DOS, MSX",
        "4": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "86": {
        "0": "2",
        "1": "Bir foydalanuvchilik OT ga qaysilar kiradi",
        "2": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "3": " Windows, Unix, OS/2",
        "4": " MS-DOS, MSX",
        "5": " To'g'ri javob berilmagan"
      },
      "87": {
        "0": "2",
        "1": "Ko'p foydal#anuvchilik OT ga qaysilar kiradi",
        "2": " Windows, Unix, OS/2",
        "3": " MS-DOS, MSX",
        "4": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "88": {
        "0": "2",
        "1": "Operatsion tizim qobiqlari",
        "2":
            " Foydalanuvchi uchun tizim funksiyalaridan unumli foydalanish interfeysini ta'inlab beruvchi dasturlar",
        "3": " Xotirani boshqarish qurilasi",
        "4": " Tashqi qurilmani boshqarish qurilmasi",
        "5": " To'g'ri javob berilmagan"
      },
      "89": {
        "0": "2",
        "1": "Quyidagi dasturlardan qaysi birlari grafik muxarrir hisoblanadi",
        "2": " Paint, Adobe Photoshop",
        "3": " Word",
        "4": " Excel",
        "5": " MS-DOS, MSX"
      },
      "90": {
        "0": "2",
        "1": "FAT32, Ext2, NTFS — bu …",
        "2": " Paint, Adobe Photoshop",
        "3": " Word",
        "4": " Excel",
        "5": " MS-DOS, MSX"
      },
      "91": {
        "0": "2",
        "1":
            "Windows operatsion tizimining boshqa operatsion tizimlardan tubdan farqi nimada?",
        "2": " GUI va bir nechta dasturlarni ishlatish qobiliyati",
        "3": " Hisoblashning ishonchliligi",
        "4": " Buyruq tili yo'qligi",
        "5": " Dialog operatsiyasi yo'qligi"
      },
      "92": {
        "0": "2",
        "1":
            "Shaxsiy kompyuterlar uchun mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
        "2": " OS / 2",
        "3": " QNX",
        "4": " UNIX",
        "5": " Win NT#"
      },
      "93": {
        "0": "2",
        "1":
            "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
        "2": " Bir martalik tarmoq OS va maxsus serverlarga ega OS",
        "3": " korporativ va mahalliy tarmoq",
        "4": " LAN va WAN",
        "5": " Korxona va bo'limlar tarmog'i"
      },
      "94": {
        "0": "2",
        "1":
            "Tarmoq operatsion tizimlarini yaratishda bir nechta yondashuvlar mavjud bular:",
        "2":
            " Mahalliy operatsion tizimlar va qobiq, tarmoq funktsiyalari boshidanoq hisobga olingan",
        "3": " Mahalliy va Shell",
        "4": " Client va Server",
        "5": " Ob'ektga yo'naltirilgan yondashuv"
      },
      "95": {
        "0": "2",
        "1":
            "Tarmoq operatsion tizimining masofaviy manbalar va xizmatlarga kirishni ta'minlovchi qismi;",
        "2": " Mijozlar qismi",
        "3": " Server qismi",
        "4": " Aloqa qismi",
        "5": " Mahalliy qism"
      },
      "96": {
        "0": "2",
        "1":
            "O'z resurslarini ommaviy ravishda taqdim etadigan tarmoq operatsion tizimining bir qismi;",
        "2": " Server qismi",
        "3": " mijoz qismi",
        "4": " Aloqa qismi",
        "5": " Mahalliy qism"
      },
      "97": {
        "0": "2",
        "1": "Tor ma'noda tarmoq operatsion tizimlari:",
        "2":
            " Shaxsiy kompyuterning tarmoqda ishlashini ta'minlaydigan operatsion tizimlari",
        "3":
            " Xabar almashish va resurslarni umumiy qoidalar asosida almashish maqsadida o'zaro ta'sir qiluvchi alohida #kompyuterlarning operatsion tizimlari to'plami - protokollar",
        "4": " Boshqa kompyuterga kirishga imkon beruvchi operatsion tizimlar",
        "5":
            " Operatsion tizimlari Boshqa kompyuterlarga resurslarni etkazib berish"
      },
      "98": {
        "0": "2",
        "1":
            "Vazifalari: uni ko'rish, qo'shish, o'qish, yozish va o'zgartirish (NTFS fayl tizimida) bu",
        "2": " standart qarorlari",
        "3": " Shaxsiy tasdiqlash",
        "4": " Maxsus tasdiqlashlar",
        "5": " Tashqi tasdiqlash"
      },
      "99": {
        "0": "2",
        "1": "NTFS fayl tizimi",
        "2": " Yangi texnologik fayl tizimi",
        "3": " Juda ishonchli",
        "4": " disk maydonidan samarali foydalanadi",
        "5": " To'g'ri javob yo'q"
      },
      "100": {
        "0": "2",
        "1": "Haqiqiy vaqtdagi operatsion tizimlar ana shunday tizimlardir bu",
        "2":
            " Kiruvchi ishlarni belgilangan vaqt oralig'ida qayta ishlashni oshirib yubormaslik",
        "3": " Dastur ob'ektning hozirgi holatiga qarab tanlanadi",
        "4": " Dastur rejalashtirilgan ish jadvallari asosida tanlanadi",
        "5": " Har xil texnologik ob'ektlar va jarayonlarni boshqaradi"
      },
      "101": {
        "0": "2",
        "1":
            "Quyidagi operatsion tizimlardan qaysi biri bitta foydalanuvchi va bitta dasturli operatsion tizimdir",
        "2": " MS DOS",
        "3": " OS / 2",
        "4": " Linux",
        "5": " OS EC",
        "6": " UNIX"
      },
      "102": {
        "0": "2",
        "1":
            "Shaxsiy kompyuterlar uchun# mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
        "2": " OS / 2",
        "3": " QNX",
        "4": " UNIX",
        "5": " Win NT"
      },
      "103": {
        "0": "2",
        "1":
            "UNIX operatsion tizimining osongina ko'chirilishi yoki ko'chirilish xususiyati sababi",
        "2":
            " Operatsion tizim kodlari yuqori darajadagi tilda yozilgan (masalan, C)",
        "3": " kodlari assambleya tilida yozilgan",
        "4": " Ko'p foydalanuvchi tizimi",
        "5": " Ko'p dasturli tizim"
      },
      "104": {
        "0": "2",
        "1":
            "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
        "2": " Bir martalik tarmoq OT va maxsus serverlarga ega OT",
        "3": " korporativ va mahalliy tarmoq",
        "4": " LAN va WAN",
        "5": " Korxona va bo'limlar tarmog'i"
      },
      "105": {
        "0": "2",
        "1": "Tarmoq operatsion tizimlari ... .. qismlardan iborat",
        "2": " To'rt",
        "3": " Ikki",
        "4": " Uch",
        "5": " Besh"
      },
      "106": {
        "0": "2",
        "1": "Tarmoq operatsion tizimi deganda keng tushuniladi",
        "2":
            " Xabar almashish va resurslarni birgalikda ishlatish uchun o'zaro ta'sir qiluvchi individual kompyuterlarning operatsion tizimlari to'plami yagona qoidalar - protokollar",
        "3":
            " Shaxsiy kompyuterning uni tarmoqda ishlashini ta'minla#ydigan operatsion tizimlari",
        "4": " Boshqa kompyuterga kirishga imkon beruvchi operatsion tizimlar",
        "5":
            " Boshqa kompyuterlarga resurslarni etkazib beradigan operatsion tizimlar"
      },
      "107": {
        "0": "2",
        "1":
            "Foydalanuvchiga u yoki bu turga kirishga imkon beradigan huquqlar to'plami deyiladi (NTFS fayl tizimida)",
        "2": " Shaxsiy ruxsatnomalar",
        "3": " standart qarorlari",
        "4": " Maxsus tasdiqlashlar",
        "5": " Tashqi tasdiqlash"
      },
      "108": {
        "0": "2",
        "1": "Fayllarni boshqarish tizimi quyidagi funksiyalarni bajaradi:",
        "2": " fayl operatsiyalari va foydalanuvchi interfeysi funktsiyalari",
        "3": " diskdan tashqari qurilmalar bilan fayl sifatida ishlash",
        "4":
            " diskdan tashqari qurilmalar bilan ishlash jarayonlarni boshqaradi",
        "5":
            " foydalanuvchi interfeysi va fayllar bilan ishlashni amalga oshiradi"
      },
      "109": {
        "0": "2",
        "1":
            "Boshqarish mexanizmlari bilan protsessor vaqtining 90 foizini egallaydigan va nisbatan past ko'rsatkichlarga ega bo'lgan eng xavfsiz operatsion tizimlar quyidagilar:",
        "2": " A sinf",
        "3": " sinf B",
        "4": " 3-sinf",
        "5": " 4-sinf"
      },
      "110": {
        "0": "2",
        "1": "Yuqori mahsuldorlikka ega fayl tizimi",
        "2": " HPFS",
        "3": " FAT",
        "4": " NTFS",
        "5": " VFAT"
      },
      "111": {
        "0": "2",
        "1": "FAT fayl tizimidagi mantiqiy di#sk quyidagilarga bo'linadi.",
        "2": " Tizim maydoni va ma'lumotlar maydoni",
        "3": " Ma'lumotlar maydoni va kataloglari",
        "4": " Katalog maydoni va tizim maydoni",
        "5": " yuklash joylari"
      },
      "112": {
        "0": "2",
        "1": "FAT fayl tizimiga quyidagilar kiradi:",
        "2": " Barcha javoblar to'g'ri",
        "3": " manzilli mantiqiy disk bo'limlari",
        "4": " Diskdagi bo'sh joy",
        "5": " Diskdagi nuqsonli joylar"
      },
      "113": {
        "0": "2",
        "1": "Fayl bilan ishlash dasturi",
        "2": " Fayl menejeri",
        "3": " dastur menejeri",
        "4": " xotira menejeri",
        "5": " qurilmalar menejeri"
      },
      "114": {
        "0": "2",
        "1": "Zamonaviy fayllarni boshqarish tizimlari",
        "2": " NTFS",
        "3": " FAT",
        "4": " Super FAT",
        "5": " HPFS"
      },
      "115": {
        "0": "2",
        "1": "Fayl tizimidan foydalanish",
        "2":
            " Ma'lumotlarni qayta ishlash dasturlari bilan bog'laning va disk maydonini markaziy ravishda taqsimlash",
        "3": " disk maydoni ajratish",
        "4": " Ma'lumotlar bazasi bilan bog'lash",
        "5": " fayllari tarqatish"
      },
      "116": {
        "0": "2",
        "1": "Zamonaviy operatsion tizimlarda xotira:",
        "2": " Har bir segment uchun sahifalar bo'limlari",
        "3": " O'zgaruvchan bo'limlarda",
        "4": " segmentlari",
        "5": " Ruxsat etilgan bo'limlar"
      },
      "117": {
        "0": "2",
        "1": "Ochiq manbali operatsion tizimlarda",
        "2":
            " Tizim kodlari ochiq, istalgan foydalanuvchi uni o'zgartirishi mumkin",
        "3": " Dastur kodlari ochiq, a#mmo ularni o'zgartirish mumkin emas",
        "4": " Tizim kodlari faqat mualliflar uchun ochiq",
        "5": " Dastur kodlari yopish"
      },
      "118": {
        "0": "2",
        "1": "Ma'lumotlarning xotirada joylashishi",
        "2": " Segment",
        "3": " Yig'ma",
        "4": " Qatlam",
        "5": " Sahifa"
      },
      "119": {
        "0": "2",
        "1":
            "Katta hajmga, samarali foydalanishga va alohida avtonom energiya manbasiga ega bo'lgan xotira deyiladi",
        "2": " Doimiy xotira",
        "3": " Ikkilamchi xotira",
        "4": " Protsessor registrlari",
        "5": " Elektron disklar"
      },
      "120": {
        "0": "2",
        "1":
            "Zamonaviy operatsion tizimlardagi manbalar quyidagilarni anglatadi:",
        "2":
            " Protsessor vaqti, xotira, kirish va chiqish kanallari, tashqi qurilmalar, dastur modullari, axborot resurslari, xabarlar va signallar",
        "3": " Dastur modullari",
        "4": " Xabarlar va signallar",
        "5": " Axborot resurslari"
      },
      "121": {
        "0": "2",
        "1": "Ierarxiyadagi eng tezkor va eng qimmat xotira",
        "2": " Protsessor registrlari",
        "3": " Elektron disklar",
        "4": " Asosiy xotira",
        "5": " Qidiruv xotira"
      },
      "122": {
        "0": "2",
        "1": "Resurslarni samarali boshqarish uchun operatsion tizimlar:",
        "2": " Resurslarni rejalashtirish va resurslar holatini kuzatish",
        "3": " Dasturlarni boshqarish",
        "4": " Resurslarni ajratish",
        "5": " Resurslarning holatini kuzatib boring"
      },
      "123": {
        "0": "2",
        "1":
            "Operatsion tizimn#ing asosiy tarkibiy qismlaridan biri - yadro quyidagi funktsiyalarni bajaradi:",
        "2": " Vazifalar va manbalarni boshqaradi",
        "3": " Buyruqlarni qabul qiladi va qayta ishlaydi",
        "4":
            " Tashqi qurilmalar yordamida ma'lumotlarni kiritish va chiqarishni amalga oshiradi",
        "5": " Mantiqiy ma'lumotlar qatlami bilan ishlaydi"
      },
      "124": {
        "0": "2",
        "1":
            "Hisoblash tizimini boshqarish jarayonlari ma'lum vaqt chegaralarini qondiradigan operatsion tizimlar",
        "2": " Haqiqiy vaqt rejimida ishlaydigan operatsion tizimlar",
        "3": " Ommaviy rejimda ishlaydigan operatsion tizimlar",
        "4": " Tarqatilgan operatsion tizimlar",
        "5": " Monolitik operatsion tizimlar"
      },
      "125": {
        "0": "2",
        "1": "Ko'p dasturli va ko'p foydalanuvchili operatsion tizimlar",
        "2": " UNIX operatsion tizimlari",
        "3": " MS DOS",
        "4": " Win 3x",
        "5": " Win 2.0."
      },
      "126": {
        "0": "2",
        "1":
            "Mikroyadorli operatsion tizimlarida mikroyadro quyidagi funktsiyalarni o'z ichiga oladi:",
        "2": " Minimal talab qilinadigan xususiyatlar",
        "3": " Operatsion tizimni yuklash funktsiyalari",
        "4": " Xotirani ajratish funktsiyalari",
        "5": " Kiritish-chiqarish funktsiyalari"
      },
      "127": {
        "0": "2",
        "1":
            "Modulli printsip yordamida yaratilgan operatsion tizimlarda das#tur quyidagilardan iborat:",
        "2": " Mustaqil qismlardan (modullardan)",
        "3": " Bitta moduldan",
        "4": " O'zaro bog'liq bo'lgan bir nechta qismlar",
        "5": " Ko'p qavatli, o'zaro bog'liq tizim"
      },
      "128": {
        "0": "2",
        "1":
            "Kasperskiy antivirus dasturining korporativ versiyasi, u yirik tarmoqlar uchun mo'ljallangan va ularning xavfsizligini quyidagi xususiyatlar bilan ta'minlaydi:",
        "2":
            " Markazlashtirilgan masofadan boshqarish pultini taqdim etadi, to'liq statistik ma'lumotlarni taqdim etadi va katta hajmdagi ma'lumotlar bilan ishlaydi (ma'lumotlar bazasi bilan)",
        "3": " Qulay o'rnatish va o'rnatish",
        "4": " Cheklangan resurslar bilan ishlaydi",
        "5": " Katta hajmdagi ma'lumotlar bazalari bilan ishlaydi"
      },
      "129": {
        "0": "2",
        "1":
            "Kasperskiy antivirus dasturining shaxsiy versiyasi quyidagi xususiyatlarga ega",
        "2": " Qulay o'rnatish va sozlash",
        "3": " Cheklangan resurslar bilan ishlaydi",
        "4": " Katta hajmdagi ma'lumotlar bazalari bilan ishlaydi",
        "5": " Markazlashtirilgan masofadan boshqarishni ta'minlaydi"
      },
      "130": {
        "0": "2",
        "1":
            "Ajratilgan birliklar zaxiralari uchun resurslar ham topiladi, shuning uchun ular:",
        "2": " Muayyan qoidalarga muvofiq# tarqatiladi",
        "3": " Muayyan algoritm bo'yicha taqsimlanadi",
        "4": " Rejaga muvofiq",
        "5": " Doimiy ravishda"
      },
      "131": {
        "0": "2",
        "1":
            "Tizimda paydo bo'lgan har bir yangi jarayon quyidagicha davom etadi:",
        "2": " Tayyor holatda",
        "3": " Ijro holatida",
        "4": " Vaziyatni to'xtatish",
        "5": " Kutish holatiga"
      },
      "132": {
        "0": "2",
        "1": "Jarayon quyidagi sabablarga ko'ra ishlaydigan holatdan chiqadi:",
        "2": " Barcha javoblar to'g'ri",
        "3": " operatsion tizimlari jarayonni to'xtatganda",
        "4": " Vaqt bo'limi tugaganda",
        "5":
            " Jarayon ba'zi bir voqea yoki ma'lumotlarning bajarilishini kutmoqda"
      },
      "133": {
        "0": "2",
        "1": "Tizimdagi jarayonlar sonini o'zgartiradigan operatsiyalar",
        "2": " Bir martalik operatsiyalar",
        "3": " Qayta foydalaniladigan operatsiyalar",
        "4": " ustuvor operatsiyalar",
        "5": " operatsiyalari tayyor holatga keltirish"
      },
      "134": {
        "0": "2",
        "1": "Ushbu operatsion tizimlarning qaysi biri ochiq manba hisoblanadi",
        "2": " Linux",
        "3": " MS DOS",
        "4": " UNIX",
        "5": " WinXP"
      },
      "135": {
        "0": "2",
        "1": "Protsessor vaqti:",
        "2": " cheklangan resurs",
        "3": " Cheksiz resurs",
        "4": " Doimiy manba",
        "5": " seriyali resurs"
      },
      "136": {
        "0": "2",
        "1": "Xotirani sobit bo'limlarga ajratishda",
        "2": " Xotira oldindan aniq o'lchamdagi aniq bo'limlarga bo'linadi",
        "3": " Ma'lumotlar qismli fayllarga bo'linadi",
        "4": " #Axborot hajmi bo'yicha joylashtirilgan",
        "5": " Memory sahifalarga bo'lingan"
      },
      "137": {
        "0": "2",
        "1": "NTFS fayllik tizimi nechta bitli prоttsessоr-lar bilan ishlaydi?",
        "2": " 16 va 32",
        "3": " 8 va 16",
        "4": " 32",
        "5": " 16"
      },
      "138": {
        "0": "2",
        "1": "Xоtira ierarxiyasi bo'yicha, eng qimmat tezkоr va qimmat xоtira",
        "2": " prоtsessоr registrlari",
        "3": " tashqi xоtira",
        "4": " elektrоn disklar",
        "5": " asоsiy xоtira"
      },
      "139": {
        "0": "2",
        "1": "Dasturiy ta`minоt quyidagi bo'limlardan ibоrat",
        "2":
            " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt, xizmatchi dasturiy ta`minоt, amaliy dasturiy ta`minоt",
        "3": " tizimli dasturiy ta`minоt",
        "4": " asоs dasturiy ta`minоt, tizimli dasturiy ta`minоt",
        "5": " asоs dasturiy ta'minоt"
      },
      "140": {
        "0": "2",
        "1": "Windows ОT larining bоshqa ОТ lardan printsipial farqi",
        "2":
            " grafik interfeysi va bir nechta ilоvalar bilan birgalikda ishlash",
        "3": " dialоgli ish rejimi",
        "4": " hisоblashlar ishоnchliligi",
        "5": " Kоmanda tili yo'qligi"
      },
      "141": {
        "0": "2",
        "1": "Amaliy dasturiy ta`minоt – dasturlari",
        "2": " aniq sоha masalalarini yechishni ta`minlоvchi dastur-lardir",
        "3": " tizimga xizmat qilu-vchi dasturlar",
        "4": " interfeysni ta`minlоvchi dasturlar",
        "5": " tizimni# sоzlоvchi dasturlar"
      },
      "142": {
        "0": "2",
        "1":
            "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
        "2": " NTFS",
        "3": " BFS",
        "4": " FAT",
        "5": " JFS"
      },
      "143": {
        "0": "2",
        "1": "Windows NT/2000/XP ijrо tizimi quyidagi kоmpоnentalardan ibоrat",
        "2":
            " jarayonlar, virtual xоtira, оb`ektlar dispetcheri, xavfsizlik mоnitоri, kiritish chiqarish dispetcheri, lоkal prоtseduralarni chaqirish vоsitasi",
        "3": " jarayonlar, virtual xоtira, оb`ektlar dispetcheri",
        "4":
            " jarayonlar, virtual xоtira, оb`ektlar kiritish chiqarish dispetcherlari",
        "5": " lоkal prоtseduralarni chaqirish vоsitalari"
      },
      "144": {
        "0": "2",
        "1":
            "Quyidagi ОT larning qaysi biri ko'p masalali va ko'p fоydalanuvchili hisоblanadi",
        "2": " UNIX",
        "3": " MS-DOS, MSX",
        "4": " ОS YeS, OS/2",
        "5": " WINDOWS 95"
      },
      "145": {
        "0": "2",
        "1":
            "Tarmоq оperatsiоn tizimining qaysi qismi ilоvalardan barcha so'rоvlarni qabul qilib ularni analiz qiladi",
        "2": " server qismi",
        "3": " kоmpyuterni lоkal resurslarini bоshqaruvchi vоsita",
        "4": " klient qismi",
        "5": " kоmmunikatsiоn vоsitalar"
      },
      "146": {
        "0": "2",
        "1": "Prоtsessоr vaqti",
        "2": " chegaralangan resurs",
        "3": " dоimiy resurs",
        "4": " vaqtinchalik resurs",
        "5": " chegaralanmaga#n resurs"
      },
      "147": {
        "0": "2",
        "1": "Multidasturlash rejimida ishlaydigan оperatsiоn tizimlar",
        "2": " rivоjlanish 3-davriga yuzaga keldi",
        "3": " rivоjlanish 1-davriga yuzaga keldi",
        "4": " rivоjlanish 4-davriga yu-zaga keldi",
        "5": " rivоjlanish 2-davriga yu-zaga keldi"
      },
      "148": {
        "0": "2",
        "1":
            "Fоydalanuvchi tizim bilan ishlayotgan vaqtda, u o'rnatadigan parametrlarni qisqartirish, parametrlarni o'rnatish vaqtini tejashga imkоn beradigan printsip",
        "2": " standart xоlatlar (pо umоl-chaniyu) printsipi",
        "3": " funktsiоnal tanlanish printsipi",
        "4": " generatsiya printsipi",
        "5": " chastоta printsipi"
      },
      "149": {
        "0": "2",
        "1": "Qanday axbоrоtlar security accounts manager da saqlanadi",
        "2": " fоydalanuvchilarning qayd yo-zuvi haqidagi",
        "3": " Windows оperatsiоn tizim fоydalanuvchi-lari haqidagi",
        "4": " ma'lumоtlar bazasidagi axbоrоtlar",
        "5": " ro'yxatdan o'tgan fоyda-lanuvchilar haqidagi"
      },
      "150": {
        "0": "2",
        "1": "Tizimli dasturiy ta`minоt bu",
        "2":
            " kоmpyuter tizimining dastur-lari va bevоsita apparat ta`minоti bilan o'zarо bоglan-ishini ta`minlaydi",
        "3": " amaliy masalalarni yechimini ta`minlaydi",
        "4": " kоmpyuter ishini nazоrat qiladi",
        "5": " kоmpyu#ter qurilmalarini ishlashini ta`minlaydi"
      },
      "151": {
        "0": "2",
        "1": "Mоnоlit ОT larda tuzilishi",
        "2": " 2 ta bo'lakdan ibоrat (bоsh dastur va prоtseduralar)",
        "3": " 5 ta satxdan ibоrat",
        "4": " 6 ta satxdan ibоrat (ko'p satxli dastur)",
        "5":
            " 3 ta satxdan ibоrat (bоsh dastur, prоtsedura va ser-vis dasturlari)"
      },
      "152": {
        "0": "2",
        "1": "Amaliy dasturiy ta`minоt",
        "2":
            " ma`lum ish jоyida aniq ma-salalarni yechishga yordam beradigan dastur",
        "3": " hisоblash tizimini nazоrat qiluvchi",
        "4": " stastikani оlib beradi",
        "5": " qurilmalarni ishlatuvchi"
      },
      "153": {
        "0": "2",
        "1": "Multidasturlash bu",
        "2":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda navbat bilan bir nechta dastur bajariladi",
        "3":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bir necha prоtsessоrda navbat bilan bir nechta dastur bajariladi",
        "4":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bir nechta prоtsessоrda bitta dastur bajariladi",
        "5":
            " hisоblash jarayonning tashkil qilish usuli bo'lib, bitta prоtsessоrda bir vaq-tning o'zida bir nechta dastur bajariladi"
      },
      "154": {
        "0": "2",
        "1": "Matn redaktоri Word bu",
        "2": " amaliy da#sturiy",
        "3": " asоs dasturiy",
        "4": " xizmatchi dasturiy",
        "5": " tizimli dasturiy"
      },
      "155": {
        "0": "2",
        "1":
            "Qaysi vоsita yordamida siqlgan fayllarni qayta yoymasdan qayta ishlash mumkin",
        "2": " NTFS",
        "3": " JFS",
        "4": " BFS",
        "5": " FAT"
      },
      "156": {
        "0": "2",
        "1": "Tizimli dasturiy taminоt nechtaga bo'linadi",
        "2": " 3",
        "3": " 5",
        "4": " 2",
        "5": " 4"
      },
      "157": {
        "0": "2",
        "1": "Windows server bu qaysi kompaniyaga tegishli",
        "2": " Microsoft",
        "3": " IBM",
        "4": " Unix",
        "5": " PS/OS"
      },
      "158": {
        "0": "2",
        "1": "Quyidagilardan qaysi biri Linux serveri hisoblanadi",
        "2": " Ubuntu, Debian, CentOS",
        "3": " Ubuntu, IBMm Debian",
        "4": " Microsoft, Debian,",
        "5": " IBM, Microsoft, Oracle"
      },
      "159": {
        "0": "2",
        "1": "Ubuntu server qaysi kompaniya tamonidan ishlab chiqilgan",
        "2": " Canonical",
        "3": " Microsoft",
        "4": " IBM",
        "5": " Oracle"
      },
      "160": {
        "0": "2",
        "1": "Operatsion tizim nima",
        "2":
            " operatsion tizim bu foydalanuvchi va kompyuter o'rtasidagi muloqatni ta'minlab beruvchi dasturlar jamlanmasi",
        "3":
            " Operatsion tizim bu grafik interfeysni ikkilik sanoqqa o'tkazib beruvchi dasturlar jamlanmasi",
        "4": " Amaliy dasturlar jamlanmasi",
        "5": " Multimediyali dasturlar jamlanmasi"
      },
      "161": {
        "0": "2",
        "1": "Operatsion tizim asoson ...",
        "2": " tizimli dasturlar jamlanmasi",
        "3": " Amalaiy dasturlar jamlanmasi",
        "4": " Multimediyali qurilmalar jamlanmasi",
        "5": " Qo#biqdan iborat"
      },
      "162": {
        "0": "2",
        "1": "Operatsion tizimda hisoblash tizimining tarkibi bu",
        "2": " Konfiguratsiya",
        "3": " Drayverlar",
        "4": " Aparat vositalar",
        "5": " amaliy dasturlar"
      },
      "163": {
        "0": "2",
        "1":
            "Quyidagilardan qaysi biri Operatsion tizimning asosiy tashkil etuvchilari hisoblaniladi",
        "2":
            " Yadro, kiritish-chiqarish tizimi, kamanda prosessori, fayl tizimi",
        "3": " Amaliy dasturlar, Yadro, Fayl tizimi",
        "4": " Kamanda prosessori, konfiguratsiya",
        "5": " To'g'ri javob berilmagan"
      },
      "164": {
        "0": "2",
        "1": "Operatsion tizimning asosiy tashkil etuvchisi yadro bu",
        "2":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "3":
            " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "165": {
        "0": "2",
        "1":
            "Operatsion tizimning asosiy tashkil etuvchisi kiritish - chiqarish tizimi bu",
        "2":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "3":
            " ma#salalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "4":
            " foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "166": {
        "0": "2",
        "1":
            "Operatsion tizimning asosiy tashkil etuvchisi kamanda prosessori bu",
        "2":
            " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi",
        "3":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yicha asos funksiyalarni ta’minlaydi.",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi."
      },
      "167": {
        "0": "2",
        "1": "Operatsion tizimning asosiy tashkil etuvchisi fayl tizimi bu",
        "2":
            " kataloglar bilan ishlash uchun keng hizmat (servis) imkoniyatlarini beradi.",
        "3":
            " masalalar va resurslarni boshqarish, sinxronlashtirish va o’zaro bog’lanish bo’yi#cha asos funksiyalarni ta’minlaydi.",
        "4":
            " tashqi qurilmalar bilan ma’lumotlarni kiritish-chiqarish masalasini ta’minlaydi.",
        "5":
            " komandalarni qabul qilish va ularga ishlov berish, foydalanuvchi talabi bo’yicha mos xizmatlarni chaqirishni ta’minlaydi"
      },
      "168": {
        "0": "2",
        "1": "Operatsion tizim interfeysi bu",
        "2": " Foydalanuvchi aloqa o'rnatadigan qulay qobiq",
        "3": " Drayverlar jamlanmasi",
        "4": " Fayl tizimi",
        "5": "To'g'ri javob berilmagan"
      },
      "169": {
        "0": "2",
        "1": "Buyruq interpretatori bu",
        "2": " Dastur tilidan mashina tiliga o'giradi (Tarjimon)",
        "3": " Drayverlarni ishga tushiradi",
        "4": " Amaliy dasturlarni ishga tushiradi",
        "5": "To'g'ri javob berilmagan"
      },
      "170": {
        "0": "2",
        "1": "Kompyuter tashkil etuvchisi bu",
        "2": " Turli xil qurilmalarni boshqarish dasturi",
        "3": " Multimediya qurilmalarni boshqarish",
        "4": " O'yinlarni yaratish dasturi",
        "5": " Tizimni boshqarish"
      },
      "171": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 2-avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1955 - 1965",
        "3": " 1965 - 1975",
        "4": " 1945 - 1955",
        "5": " 1985 - 1995"
      },
      "172": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 3 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1965 - 1980",
        "3": " 1945 -# 1955",
        "4": " 1955 - 1965",
        "5": " 1985 - 1995"
      },
      "173": {
        "0": "2",
        "1":
            "Operatsion tizimning rivojlanish tarixi 4 - avlod nechinchi yillarni o'z ichiga oladi.",
        "2": " 1980 yildan to hozirgacha",
        "3": " 1965 - 1980",
        "4": " 1955 - 1965",
        "5": " 1945 - 1955"
      },
      "174": {
        "0": "2",
        "1":
            "Birinchi avlod kompyuterlari analitik mashina kim tamonidan yaratilgan.",
        "2": " Charles Babbage",
        "3": " Inix Helton",
        "4": " Shelton Holmz",
        "5": " Daniel Tompson"
      },
      "175": {
        "0": "2",
        "1": "4 - avlod kampyuterlariga qanday kompyuterlar kiradi",
        "2": " Personal va super kompyuterlar",
        "3": " Lampali",
        "4": " Integral sxemali kompyuterlar",
        "5": " hali yaratilmagan"
      },
      "176": {
        "0": "2",
        "1": "Multipleksing bu",
        "2": " resurslar ishlashining ketma – ketligi va davomiyligi",
        "3": " Drayverlar jamlanmasi",
        "4": " amaliy dasturlar jamlanmasi",
        "5": " to'g'ri javob berilmagan"
      },
      "177": {
        "0": "2",
        "1": "Multipleksingning ikki xil ko'rinishi bor bular",
        "2": " Vaqtinchalik, Ajratilgan xotira",
        "3": " Ajratilmagan xotira, Doimiy xotira",
        "4": " Qobiq, Drayverlar",
        "5": " Interfeyslar, amaliy dasturlar"
      },
      "178": {
        "0": "2",
        "1": "Boot Loader – bu",
        "2":
            " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
        "3":
            " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlaga#ncha resurslar ketma-ketlikda ishlatadi",
        "4":
            " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi",
        "5": " Qurilmalarni o'rnatadi"
      },
      "179": {
        "0": "2",
        "1": "Interrupts (Uzilish) – bu",
        "2":
            " bir dasturni bajarilishini hozirgi vaqtda yanada muhimroq boshqa dasturni tezkor bajarish maqsadida vaqtincha to’xtatilishidir",
        "3":
            " Operativ xotiradan kerakli joy ajratadi va dastur bundan hohlagancha resurslar ketma-ketlikda ishlatadi",
        "4":
            " Operasion tizimni yuklovchi — bu Boot Record va Sistem Bootstrap dasturli modulidir",
        "5":
            " operasion tizim va hisoblash tizimlarida bu istisno yoki xatolik deb qabul qilinadi"
      },
      "180": {
        "0": "2",
        "1":
            "Masalalarni qayta ishlash rejimi bo'yicha operatsion tizimlar sinflanishi",
        "2": " bir vazifali , ko'p vazifali",
        "3": " bir vazifali",
        "4": " ko'p vazifali",
        "5": " ko'p foydalanuvchi"
      },
      "181": {
        "0": "2",
        "1": "Meynfraymlar bu",
        "2":
            " OT lari kiritish/chiqarish amallari ko’p bo’lgan, bir vaqtda bajaradigan topshiriqlar to’plamiga ishlov berishga yo’naltirilgan",
        "3": "Opejation tizimlari",
        "4":
            " Hajmi va bajaradigan amallar tezligi jihatidan katta kompyuterlardan kamida bir pog’ona pastdir. Shuni aytish joizki, ularning o’lchamlari tobora ixchamlashib, hatto shaxsiy kompyuterdek kichik joyni egallaydiganlari yaratilmoqda",
        "5":
            " juda katta tezlikni talab qiladigan va katta hajmdagi masalalarni yechish uchun mo’ljallangan bo’ladi. Bunday masalalar sifatida ob-havoning global prognoziga oid masalalarni, uch o’lchovli fazoda turli oqimlarning kechishini o’rganish masalalarini keltirish mumkin. Bu kompyuterlar bir sekundda 10 trilliardlab amal bajaradi."
      },
      "182": {
        "0": "2",
        "1": "Operatsion tizimlar tuzilishiga ko'ra sinflanishi",
        "2": " Monolit, ko'p sathli, Klient -Server, Mikro yadroli",
        "3": " Monolit, Ko'p sathli",
        "4": " Klient - server",
        "5": " Mikro yadroli"
      },
      "183": {
        "0": "2",
        "1": "Monolit operatsion tizimlar bu",
        "2":
            " bu biron bir aniq strukturaga ega bo’lmagan tuzilishga ega operatsion tizim hisoblanadi.",
        "3": " Faqat sever bilan ishlovchi OT",
        "4": " Faqat yadro bilan ishlovchi OT",
        "5": " To'g'ri javob berilmagan"
      },
      "184": {
        "0": "2",
        "1":
            "Quyidagilardan qaysi# biri Mikroyadroli operatsion tizim hisoblaniladi",
        "2": " linux",
        "3": " To'g'ri javob berilmagan",
        "4": " Windows",
        "5": " Solaris"
      },
      "185": {
        "0": "2",
        "1": "Operatsion tizimga qo'yiladigan talablar bular",
        "2": " Barcha javoblar to'g'ri",
        "3": " dasturlar va a'luotlarni himoyalash",
        "4": " Samaradorlik, Moslashuvchanlik, Yangilanish",
        "5": " Ishonchlilik, Qulaylilik, aniqlik"
      },
      "186": {
        "0": "2",
        "1": "BIOS bu",
        "2":
            " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi",
        "3":
            " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
        "4": " amaliy dasturlarni boshqaradi",
        "5": " Barcha javoblar nato'g'ri"
      },
      "187": {
        "0": "2",
        "1": "Drayverlar bu",
        "2":
            " Tashqi qurilmalarning fiziki darajada ishlashini boshqaruvchi dasturlardir",
        "3":
            " Tizimni ishlash jarayonini elektr ta'minot bilan taminlab beradi",
        "4": " amaliy dasturlarni boshqaradi",
        "5":
            " Bu doimiy xotira qurilmasida joylashgan bo'lib mikrodasturlar jamlanmasi bo'lib, quyi darajali kiritish/chiqarish amallarni bajaradi"
      },
      "188": {
        "0": "2",
        "1": "Bir masalali OT ga qaysilar kiradi",
        "2": " MS-DOS, MSX",
        "3": " Windows, Unix, OS/2",
        "4": " MS-DOS, Windows 3.x,# OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "189": {
        "0": "2",
        "1": "Ko'p masalali OT ga qaysilar kiradi",
        "2": " Windows, Unix, OS/2",
        "3": " MS-DOS, MSX",
        "4": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "190": {
        "0": "2",
        "1": "Bir foydalanuvchilik OT ga qaysilar kiradi",
        "2": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "3": " Windows, Unix, OS/2",
        "4": " MS-DOS, MSX",
        "5": " To'g'ri javob berilmagan"
      },
      "191": {
        "0": "2",
        "1": "Ko'p foydalanuvchilik OT ga qaysilar kiradi",
        "2": " Windows, Unix, OS/2",
        "3": " MS-DOS, MSX",
        "4": " MS-DOS, Windows 3.x, OS/2 dastlabki versiyasi",
        "5": " To'g'ri javob berilmagan"
      },
      "192": {
        "0": "2",
        "1": "Operatsion tizim qobiqlari",
        "2":
            " Foydalanuvchi uchun tizim funksiyalaridan unumli foydalanish interfeysini ta'inlab beruvchi dasturlar",
        "3": " Xotirani boshqarish qurilasi",
        "4": " Tashqi qurilmani boshqarish qurilmasi",
        "5": " To'g'ri javob berilmagan"
      },
      "193": {
        "0": "2",
        "1": "Quyidagi dasturlardan qaysi birlari grafik muxarrir hisoblanadi",
        "2": " Paint, Adobe Photoshop",
        "3": " Word",
        "4": " Excel",
        "5": " MS-DOS, MSX"
      },
      "194": {
        "0": "2",
        "1": "FAT32, Ext2, NTFS — bu …",
        "2": " Paint, Adobe Photoshop",
        "3": " Word",
        "4": " Excel",
        "5": " MS-DOS, MSX"
      },
      "195": {
        "0": "2",
        "1":
            "Shaxsiy kompyuterlar uchun mo'l#jallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
        "2": " OS / 2",
        "3": " QNX",
        "4": " UNIX",
        "5": " Win NT"
      },
      "196": {
        "0": "2",
        "1":
            "Tarmoq operatsion tizimlari funktsiyalarning ajratilishiga qarab tasniflanadi:",
        "2": " Bir martalik tarmoq OS va maxsus serverlarga ega OS",
        "3": " korporativ va mahalliy tarmoq",
        "4": " LAN va WAN",
        "5": " Korxona va bo'limlar tarmog'i"
      },
      "197": {
        "0": "2",
        "1": "NTFS fayl tizimi",
        "2": " Yangi texnologik fayl tizimi",
        "3": " Juda ishonchli",
        "4": " disk maydonidan samarali foydalanadi",
        "5": " To'g'ri javob yo'q"
      },
      "198": {
        "0": "2",
        "1":
            "Quyidagi operatsion tizimlardan qaysi biri bitta foydalanuvchi va bitta dasturli operatsion tizimdir",
        "2": " MS DOS",
        "3": " OS / 2",
        "4": " OS EC",
        "5": " UNIX"
      },
      "199": {
        "0": "2",
        "1":
            "Shaxsiy kompyuterlar uchun mo'ljallangan va bir nechta operatsion tizimlarni qo'llab-quvvatlaydigan birinchi ko'p dasturli, ko'p vazifali, ishonchli operatsion tizim",
        "2": " OS / 2",
        "3": " QNX",
        "4": " UNIX",
        "5": " Win NT"
      },
      "200": {
        "0": "2",
        "1": "Tarmoq operatsion tizimlari ... .. qismlardan iborat",
        "2": " To'rt",
        "3": " Ikki",
        "4": " Uch",
        "5": " Besh"
      },
      "201": {
        "0": "2",
        "1": "Yuqori mahsuldorlikka ega fayl tizimi",
        "2": " HPFS",
        "3": " FAT",
        "4": " NTFS",
        "5": "VFAT"
      },
      "202": {
        "0": "2",
        "1": "FAT fayl tizimidagi mantiqiy disk quyidagilarga bo'linadi.",
        "2": " Tizim maydoni va ma'lumotlar maydoni",
        "3": " Ma'lumotlar maydoni va kataloglari",
        "4": " Katalog maydoni va tizim maydoni",
        "5": " yuklash joylari"
      },
      "203": {
        "0": "2",
        "1": "FAT fayl tizimiga quyidagilar kiradi:",
        "2": " Barcha javoblar to'g'ri",
        "3": " Manzilli mantiqiy disk bo'limlari",
        "4": " Diskdagi bo'sh joy",
        "5": " Diskdagi nuqsonli joylar"
      }
    };
    Map<String, Map<String, String>> infocom = {
      "0": {
        "0": "2",
        "1": "1.Асосий 5 та энергия манбаларини айтинг?",
        "2":
            "қуёш нурланиши, қуёшнинг ҳаракати ва тортилиши, шунингдек ой ва ернинг гравитацион тортишиши, ер ядросининг иссиқлик энергияси, ядро реакцияси, турли моддаларнинг кимёвий реакциялари",
        "3": "АЭС, ГРЭС, биомасса, геотермал, сувнинг қуйилиши",
        "4": "геотермал, сувнинг қуйилиши ва қайтиши, АЭС, ГРЭС, ГЭС",
        "5": "ГЭС, ГРЭС, ТЭЦ, Қуёш, шамол"
      },
      "1": {
        "0": "2",
        "1": "1.Асосий 5 та энергия манбаларини айтинг?",
        "2":
            "қуёш нурланиши, қуёшнинг ҳаракати ва тортилиши, шунингдек ой ва ернинг гравитацион тортишиши, ер ядросининг иссиқлик энергияси, ядро реакцияси, турли моддаларнинг кимёвий реакциялари",
        "3": "АЭС, ГРЭС, биомасса, геотермал, сувнинг қуйилиши",
        "4": "геотермал, сувнинг қуйилиши ва қайтиши, АЭС, ГРЭС, ГЭС",
        "5": "ГЭС, ГРЭС, ТЭЦ, Қуёш, шамол"
      },
      "2": {
        "0": "2",
        "1":
            "2.0,22,5 мкм тўлқин узунлиги диапазонида ерга тушадиган Қуёш нурланиши оқимининг зичлиги қандай?",
        "2": "1 кВт/м2",
        "3": "5 кВт/м2",
        "4": "200 Вт/м2",
        "5": "500 Вт/м2"
      },
      "3": {
        "0": "2",
        "1":
            "3.Қуёш энергиясини электр энергиясига ўзгартириш жараёни қайси эффект билан боради?",
        "2": "фотоэлектрик",
        "3": "ядровий",
        "4": "кимёвий",
        "5": "иссиқлик"
      },
      "4": {
        "0": "2",
        "1":
            "4.Бирламчи электр таъминоти манбаларига қанадай қурилмалар киради?",
        "2": "генераторлар,",
        "3": "Аккумуляторлар, қуёш элементлари ва ҳ. к",
        "4": "кучайтиргичлар, чеклагичлар, детекторлар ва ҳ.к",
        "5": "трансформаторлар, тўғрилагичлар, ўзгартиргичлар ва ҳ. к"
      },
      "5": {
        "0": "2",
        "1":
            "5.Иккиламчи электр таъминоти манбаларига қанадай қурилмалар киради?",
        "2": "трансформаторлар, тўғрилагичлар, ўзгартиргичлар ва ҳ. к",
        "3": "кучайтиргичлар, чеклагичлар, детекторлар ва ҳ. к",
        "4": "генераторлар, аккумуляторлар, қуёш элементлари ва ҳ. к",
        "5": "узаткичлар, қабуллагичлар,частота ўзгартиргичлари ва ҳ. к"
      },
      "6": {
        "0": "2",
        "1": "6.Қуёш ва шамол энергияси қайси энергия турига киради?",
        "2": "ноанъанавий энергия манбалари",
        "3": "анъанавий энергия манбалари",
        "4": "қайта тикланмайдиган энергия манбалари",
        "5": "қайта тикланадиган энергия манбалари"
      },
      "7": {
        "0": "2",
        "1": "7.Трансформаторнинг ишлаш принципи қайси қонунга асосланган?",
        "2": "электромагнит индукция қонунига",
        "3": "Кулон қонунига",
        "4": "Ампер қонунига",
        "5": " Ленц қонунига"
      },
      "8": {
        "0": "2",
        "1":
            "8.Қайси мақсадга кўра ток трансформаторининг иккиламчи чўлғами ерга уланади?",
        "2": "ишловчи ходимларнинг хавфсизлигини таъминлаш учун",
        "3": "берилган иш тартибини таъминлаш учун",
        "4": "аниқлик кўрсаткичларини ошириш учун",
        "5": "трансформаторни ҳимоялаш учун"
      },
      "9": {
        "0": "2",
        "1": "9.Трансформатор қандай ток тури аппарати ҳисобланади?",
        "2": "ўзгарувчан ток",
        "3": "ўзгармас ток",
        "4": "ўзгарувчан ва ўзгармас ток",
        "5": "ток турига боғлиқ эмас"
      },
      "10": {
        "0": "2",
        "1":
            "10.Трасформаторнинг трасформациялаш коэффициентининг ифодасини топинг?",
        "2": " n=W1/W2",
        "3": "Kп=U0~ /U0",
        "4": "S=(n1-n2)/n2",
        "5": "Sтр=1,7P0"
      },
      "11": {
        "0": "2",
        "1":
            "11.Трансформатор магнит ўзагида магнит занжирини туташтириш учун хизмат қиладиган қисм нима дийилади?",
        "2": " ярмо",
        "3": "стержень",
        "4": "асос",
        "5": "тирқиш"
      },
      "12": {
        "0": "2",
        "1":
            "12.Трансформатор магнит ўзагида чўлғам ўраладиган қисм нима дейилади?",
        "2": " стержень",
        "3": "ярмо",
        "4": "тирқиш",
        "5": "асос"
      },
      "13": {
        "0": "2",
        "1":
            "13.Агар n=U1/U2 >1 бўлса, трансформатор қандай трансформатор бўлади?",
        "2": "пасайтирувчи",
        "3": "кучайтирувчи",
        "4": "мослаштирувчи",
        "5": "чиқиш"
      },
      "14": {
        "0": "2",
        "1":
            "14.Тармоқ трансформатори магнит ўзаги пластинкалариниқандай қалинликларда бўлиши мумкин?",
        "2": "0,35 ёки 0,5 мм",
        "3": "0,08-0,2 мм",
        "4": "0,1-0,3 мм",
        "5": "0,5-1,0 мм"
      },
      "15": {
        "0": "2",
        "1":
            "15.Трансформатор юклама режимида унинг қайси параметри аниқланади?",
        "2": "турли юкламалардаги ташқи характеристикаси",
        "3": "ростлаш характеристикаси",
        "4": "пўлат ўзакдаги йўқотишлар",
        "5": "чўлғамлардаги йўқотишлар"
      },
      "16": {
        "0": "2",
        "1":
            "16.Келтирилган шартлардан файси бири трансформаторнинг салт ишлаш режимини аниқламайди?",
        "2": "бирламчи чулғам токи нолга тенг",
        "3": "юклама токи нолга тенг",
        "4": "Бирламчи чулғамга номинал куланиш берилган",
        "5": "Чулғамлардаги ток частотаси номинал частотага тенг"
      },
      "17": {
        "0": "2",
        "1":
            "17.Уч фазали ток тармоғини икки фазали ток тармоғига ўзгартириш учун қандай схема қўлланилади?",
        "2": "Скотт схемаси",
        "3": "Миткеевич схемаси",
        "4": "Ларионов схемаси",
        "5": "Герц схемаси"
      },
      "18": {
        "0": "2",
        "1":
            "18. схема бўйича йиғилган уч фазали трансформаторлар қайси гуруҳларга киради?",
        "2": "тоқ",
        "3": "жуфт",
        "4": "ихтиёрий бўлиши мумкин",
        "5": "нолинчи"
      },
      "19": {
        "0": "2",
        "1":
            "19.Y/Y схема бўйича йиғилган уч фазали трансформатор қайси гуруҳга киради?",
        "2": "0-гуруҳга",
        "3": "4-гуруҳга",
        "4": "6-гуруҳга",
        "5": "8-гуруҳга"
      },
      "20": {
        "0": "2",
        "1": "20.Кучланиш трансформаторлари қайси режимда ишлайди?",
        "2": "салт ишига яқин режимда",
        "3": "қисқа туташувга яқин режимда",
        "4": "трансформаторнинг ишлаш шартига боғлиқ",
        "5": "юкламага яқин режимда"
      },
      "21": {
        "0": "2",
        "1":
            "21.Пасайтирувчи трансформаторнинг қайси чўлғамида ток катта бўлади?",
        "2": "иккинчисида",
        "3": "биринчисида",
        "4": "юклама характерига боғлиқ",
        "5": "трансформаторнинг ишлаш шартига боғлиқ"
      },
      "22": {
        "0": "2",
        "1":
            "22.Агар таъминлаш манбаидаги частота 2 марта ошса, трансформатор чиқишидаги ЭЮК қандай ўзгаради?",
        "2": "2 марта ортади",
        "3": "ўзгармайди",
        "4": "2 марта камаяди",
        "5": "4 марта камаяди"
      },
      "23": {
        "0": "2",
        "1":
            "23.Агар трансформаторнинг бирламчи чўлғамидаги кучланиш ортса, ўзакдаги йўқотишлар қандай ўзгаради?",
        "2": "Рст ортади",
        "3": "Рст ўзгармайди",
        "4": "Рст камаяди",
        "5": "Рст ростланади"
      },
      "24": {
        "0": "2",
        "1":
            "24.Трансформаторнинг салт ишлаш режимида ваттметр нимани кўрсатади?",
        "2": "магнит ўзакдаги йўқотишни",
        "3": "чўлғамлардаги йўқотишни",
        "4": "иккиламчи чўлғамдаги йўқотишни",
        "5": "бирламчи чўлғамдаги йўқотишни"
      },
      "25": {
        "0": "2",
        "1":
            "25.Агар таъминлаш манбаидаги частота 2 марта камайса, трансфоматор чиқишидаги ток қандай ўзгаради?",
        "2": "2 марта камаяди",
        "3": "ўзгармайди",
        "4": "2 марта ортади",
        "5": "4 марта камаяди"
      },
      "26": {
        "0": "2",
        "1":
            "26.Трансформаторнинг қайси иш режимида мис чўлғамлардаги йўқотишни ифодалаш мумкин?",
        "2": "қисқа туташув режимида",
        "3": "салт ишлаш режимида",
        "4": "юклама режимида",
        "5": "юклама характерига боғлиқ"
      },
      "27": {
        "0": "2",
        "1": "27.Ўлчовчи ток трансформаторлари қайси режимда ишлайди?",
        "2": "қисқа туташувга яқин режимда",
        "3": "салт ишлашга яқин режимда",
        "4": "трансформаторнинг ишлаш шартига боғлиқ",
        "5": "юклама характерига боғлиқ"
      },
      "28": {
        "0": "2",
        "1":
            "28.Трансформаторнинг салт ишлаш режимида истеъмол қиладиган қуввати нимага сарф бўлади?",
        "2": "ўзакдаги йўқотишга",
        "3": "чўлғамдаги йўқотишга",
        "4": "магнит оқимини ҳосил қилишга",
        "5": "трансформатордаги умумий йўқотишларга"
      },
      "29": {
        "0": "2",
        "1":
            "29.Трансформатор чўлғамларидаги кириш қаршилигини қайси режимда аниқлаш мумкин?",
        "2": "салт ишлаш режимида",
        "3": "қисқа туташув режимида",
        "4": "юклама режимида",
        "5": "юклама характерига боғлиқ"
      },
      "30": {
        "0": "2",
        "1": "30.Ток трансформаторлари қайси режимида ишлайди?",
        "2": "қисқа туташувга яқин режимда",
        "3": "салт ишлашга яқин режимда",
        "4": "трансформаторнинг ишлаш шартига боғлиқ",
        "5": "трансформаторнинг ишлаш шартига боғлиқ"
      },
      "31": {
        "0": "2",
        "1":
            "31.Қисқа туташув режимида трансформаторнинг тармоқдан оладиган қуввати нимага сарф бўлади?",
        "2": "чўлғамлардаги йўқотишга",
        "3": "ўзакдаги йўқотишга",
        "4": "магнит оқимини ҳосил қилишга",
        "5": "иккиламчи чўлғамдаги йўқотишни"
      },
      "32": {
        "0": "2",
        "1":
            "32.Магнит ўтказгич ва чўлғамлардаги қувват йўқотишларининг қайси муносабатида трансформатор максимал ФИКка эришади?",
        "2": " Рмў = Рчўл",
        "3": "Рмў < Рчўл",
        "4": "Рмў > Рчўл",
        "5": "Рст > > Роб"
      },
      "33": {
        "0": "2",
        "1":
            "33.Келтирилган камчиликларданқайс#и бири автотрансформатор учун хусусиятли эмас?",
        "2":
            "уч фазали ўзгарувчан ток тармоқларида қўлланиш имкониятининг йўқлиги",
        "3": "Кичик трансформациялаш коэффициенти",
        "4": "Катта қисқа туташув токи",
        "5": "Бирламчи ва иккиламчи чулғамлар орасидаги электр алоқа"
      },
      "34": {
        "0": "2",
        "1": "34.Ампер кучининг йўналиши қайси қоидага кўра аниқланади?",
        "2": "чап қўл қоидаси",
        "3": "ўнг қўл қоидаси",
        "4": "парма қоидаси",
        "5": "ленц қоидаси"
      },
      "35": {
        "0": "2",
        "1":
            "35.Токли ўтказгич магнит майдони куч чизиқларининг йўналиши қайси қоидага кўра аниқланади?",
        "2": "парма қоидаси",
        "3": "ўнг қўл қоидаси",
        "4": "чап қўл қоидаси",
        "5": "ленц қоидаси"
      },
      "36": {
        "0": "2",
        "1":
            "36.Электр машиналарда қандай энергия электр энергиясига ўзгартирилади?",
        "2": "механик",
        "3": "кинетик",
        "4": "кимёвий",
        "5": "иссиқлик"
      },
      "37": {
        "0": "2",
        "1":
            "37.Электр машинасининг ташқи қобиғидаги клеммалар қутичаси нима учун хизмат қилади?",
        "2": "статор чўлғамларини Y ёки Δ схемада улаш учун",
        "3": "статор чўлғамлари қаршилигини ўзгартириш учун",
        "4": "ротор тезлигини бошқариш учун",
        "5": "ротор чўлғамлари қаршилигини ўзгартириш учун"
      },
      "38": {
        "0": "2",
        "1": "38.Роторнинг сирпаниши ифодасини топинг?",
        "2": "S=(n1-n2)/n1",
        "3": "S=0,5(S1+S2)",
        "4": "S=π/√2U0I0",
        "5": "S=(n2-n1)/n1"
      },
      "39": {
        "0": "2",
        "1":
            "39.Асинхрон машинада айланувчан магнит майдони ва ротор айланиш тезликлари ўртасида қандай муносабат мавжуд?",
        "2": "n1 > n2",
        "3": "n1 < n2",
        "4": "n1 = n2",
        "5": "n1 < < n2"
      },
      "40": {
        "0": "2",
        "1":
            "40.Синхрон машинада айланувчан магнит майдони ва ротор айланиш тезликлари ўртасида қандай муносабат мавжуд?",
        "2": "n1 = n2",
        "3": "n1 < n2",
        "4": "n1 > n2",
        "5": "n1 < < n2"
      },
      "41": {
        "0": "2",
        "1":
            "41.Катта қувватли синхрон машинада жуфт қутблар қаерга жойлаштирилади?",
        "2": "роторга",
        "3": "статорга",
        "4": "фарқи йўқ",
        "5": "якорда"
      },
      "42": {
        "0": "2",
        "1":
            "42.Электр машинанинг ЭЮК индукцияланадиган қисми нима деб аталади?",
        "2": "якор",
        "3": "статор",
        "4": "ротор",
        "5": "станина"
      },
      "43": {
        "0": "2",
        "1":
            "43.Агар асинхрон двигатель магнит оқими 1500 айлмин, ротори 1470 айлмин тезликда айланса, роторнинг сирпаниши нимага тенг бўлади?",
        "2": "0,02",
        "3": "0,04",
        "4": "0,2",
        "5": "0,04"
      },
      "44": {
        "0": "2",
        "1":
            "44.Синхрон генераторининг бир жуфт қутбли ротори 3000 айлмин тезликда айланса, токнинг частотасини топинг?",
        "2": "50 Гц",
        "3": "5 Гц",
        "4": "500 Гц",
        "5": "100 Гц"
      },
      "45": {
        "0": "2",
        "1":
            "45.Айланувчан магнит оқими ҳосил бўлиши учун бир фазали асинхрон двигател статорида чўлғамларни ўзаро қандай бурчак остида жойлаштириш керак?",
        "2": "1200",
        "3": "900",
        "4": "1800",
        "5": "1500"
      },
      "46": {
        "0": "2",
        "1":
            "46.Асинхрон двигателда иш туширувчи реостат нима учун хизмат қилади?",
        "2": "ротор қаршилигини ва ротор тезлигини бошқариш учун",
        "3": "двигателни қўзғатиш учун",
        "4": "статор магнит оқимини ҳосил қилиш учун",
        "5": "ротор магнит оқимини ҳосил қилиш учун"
      },
      "47": {
        "0": "2",
        "1": "47.Ўзгармас ток машинасининг коллектори нима учун хизмат қилади?",
        "2": "ўзгарувчан ЭЮКни тўғрилаш учун",
        "3": "двигателни қўзғатиш учун",
        "4": "статор магнит оқимини ҳосил қилиш учун",
        "5": "ротор магнит оқимини ҳосил қилиш учун"
      },
      "48": {
        "0": "2",
        "1": "48.Тўғрилагич деб нимага айтилади?",
        "2": "ўзгарувчан токни ўзгармас токка айлантириб берувчи қурилма",
        "3": "ўзгармас токни ўзгарувчан токка айлантириб берувчи қурилма",
        "4": "ўзгарувчан ток энергиясини ўзгартириб берувчи қурилма",
        "5": "ўзгармас ток энергиясини ўзгартириб берувчи қурилма"
      },
      "49": {
        "0": "2",
        "1": "49.Тўғрилагичнинг пульсация коэффициентининг ифодасини топинг?",
        "2": "Kп = U0~ /U0",
        "3": "Kп=U2/U0",
        "4": "Kп=I2/I0",
        "5": "Kп=UVD/U0"
      },
      "50": {
        "0": "2",
        "1":
            "50.Қуйида келтиридган кийматлардан актив юкламада ишлайдиган бир ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
        "2": "1,57",
        "3": "0,9",
        "4": "∞",
        "5": "0,5"
      },
      "51": {
        "0": "2",
        "1": "51.Қайси ифода трансформатор габарит қувватига тўғри келади?",
        "2": "SТР=0,5 (S1 S2)",
        "3": "SТР=(12)() U0 (1,21 21) I0",
        "4": "SТР= ( ) U0 ( 2) I0",
        "5": "SТР=( ) U0"
      },
      "52": {
        "0": "2",
        "1":
            "52.Актив юкламада ишлаётган бир фазали кўприксимон тўғрилаш схемасидаги токнинг тўғриланган қиймати қандай аниқланади?",
        "2": "I0=2/ π ∙I2m",
        "3": "I0= π /22 ∙I2m",
        "4": "I0= π /22 ∙I2m/n",
        "5": "I0= π /2 ∙I2m"
      },
      "53": {
        "0": "2",
        "1":
            "53.Актив юкламада ишлаётган бир фазали бир ярим даврли тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
        "2": "UТЕСК=3,14 U0",
        "3": "UТЕСК=1,57 U0",
        "4": "UТЕСК=2,1 U0",
        "5": "UТЕСК =2,4 U0"
      },
      "54": {
        "0": "2",
        "1":
            "54.Қуйида келтирилган қийматлардан актив юкламали ўрта нуқтали икки ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
        "2": "0,67",
        "3": "∞",
        "4": "0,9",
        "5": "1,57"
      },
      "55": {
        "0": "2",
        "1":
            "55.Қуйида келтирилган қийматлардан актив юкламали уч фазали бир ярим даврли тўғрилаш схемаси учун пульсация коэффициентини топинг:",
        "2": " 0,25",
        "3": " ∞",
        "4": "0,67",
        "5": "1,57"
      },
      "56": {
        "0": "2",
        "1":
            "56.Қуйида келтирилган қийматлардан актив юкламали бир фазали кўприксимон тўғрилаш схемаси учун пульсация коэффициентини танланг:",
        "2": "0,67",
        "3": "∞",
        "4": "0,25",
        "5": "1,57"
      },
      "57": {
        "0": "2",
        "1":
            "57.Актив юкламада ишлаётган бир ярим даврли тўғрилаш схемасидаги вентил токнинг таъсир этувчи қиймати нимага тенг?",
        "2": "IB=1,57∙I0",
        "3": "IB=0,785∙I0",
        "4": "IB=0,983∙I0",
        "5": "IB=3,14∙I0"
      },
      "58": {
        "0": "2",
        "1":
            "58.Икки ярим даврли тўғрилаш схемаси учун вентил токининг таъсир этувчи қиймати ва иккиламчи чўлғам фазаси ўзаро қандай боғлиқликка эга?",
        "2": "IB<I2",
        "3": "IB=I2",
        "4": " IB>I2",
        "5": "IB>>I2"
      },
      "59": {
        "0": "2",
        "1":
            "59.Актив юкламада ишлаётган ўрта нуқтали икки ярим даврли тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
        "2": "UТЕСК=3,14 U0",
        "3": "UТЕСК=1,57 U0",
        "4": " UТЕСК=2,1 U0",
        "5": "UТЕСК =2,4 U0"
      },
      "60": {
        "0": "2",
        "1": "60.Пулъсация коэффициенти нима?",
        "2":
            "тўғриланган кучланиш к-нчи гармоника амплитудасининг тўғрилаиган кучланиш ўрта қийматига нисбати",
        "3":
            "ҳарорат ўзгариши билаи чиқиш кучланиши ўзгаришини ҳисобга олувчи коэффициент",
        "4": "бирламчи ва иккиламчи чўлғамлардаги ўрамлар сони нисбати",
        "5":
            "бирламчи ва иккиламчи чўлғамлардаги кучланишлар нисбати трансформатора"
      },
      "61": {
        "0": "2",
        "1":
            "61.Актив юклама ишлаётгаи кўприксимон тўғрилаш схемаси учун тўғриланган кучланишнинг ўзгармас ташкил этувчи қаидай аниқланади?",
        "2": "Uo=0,9∙U2",
        "3": "U0=0,745∙U2",
        "4": "U0=(√2/) ∙U2",
        "5": "Uo=1,57∙U2"
      },
      "62": {
        "0": "2",
        "1":
            "62.Қандай схемаларда трансформаторнинг мажбурий магнитланиши мавжуд?",
        "2": "бир ярим даврли тўғрилаш схемасида",
        "3": "ўрта нуктали икки ярим даврли тўғрилаш схемасида",
        "4": "бир фазали кўприксимон тўғрилаш схемасида",
        "5": " уч фазали кўприксимон тўғрилаш схемасида"
      },
      "63": {
        "0": "2",
        "1":
            "63.Актив юкламада ишлаётган икки ярим даврли тўғрилаш схемасидаги трансформаторнинг габарит қуввати нимага тенг?",
        "2": "SТР=1,48 Р0",
        "3": "SТР=3,09 Р0",
        "4": "SТР=1,7Р0",
        "5": "SТР=1,57Р0"
      },
      "64": {
        "0": "2",
        "1":
            "64. Актив юкламада ишлаётган бир фазали кўприксимон тўғрилаш схемаси учун тескари кучланиш қандай аниқланади?",
        "2": "UТЕСК=1,57 U0",
        "3": " UТЕСК=3,1 U0",
        "4": "UТЕСК=2,82 U0",
        "5": "UТЕСК =3,14 U0"
      },
      "65": {
        "0": "2",
        "1":
            "65.Актив юкламада ишлаётган бир фазали, бир ярим даврли тўғрилаш схемасида токнинг тўғриланган қиймати қандай аниқланади?",
        "2": "I0=I2m/π",
        "3": "I0=(2/π )∙I2m",
        "4": "I0=( π /2√3) ∙I2m",
        "5": "I0=( π /√3) ∙I2m"
      },
      "66": {
        "0": "2",
        "1":
            "66.Нима учун бир ярим даврли тўғрилаш схемасида фильтр индуктивликдан бошланмайди?",
        "2":
            "тўғрилагичнинг юклама характеристикаси кескин тушувга эга бўлади, тўғриланган ток узлукли бўлади, тескари кучланиш импульслари тик фронтли бўлади",
        "3":
            "тўғри#ланган кучланишнинг пульсация миқдори катта бўлади ва силлиқловчи фильтр ўрнатиш лозим бўлади",
        "4": "вентилда юқори тескари кучланиш пайдо бўлади",
        "5": "вентилда юқори тескари ток пайдо бўлади"
      },
      "67": {
        "0": "2",
        "1":
            "67.Актив юкламада ишлаётган ўрта нуқтли икки ярим даврли схемада токнинг тўғриланган қиймати қандай аниқланади?",
        "2": "I0=(2/ π) ∙I2m",
        "3": "I0=( π /4) ∙I2m",
        "4": "I0=( π /2√3) ∙I2m",
        "5": "I0=( π /√3) ∙I2m"
      },
      "68": {
        "0": "2",
        "1":
            "68. Бошқариладиган тўғрилагичда тескари уланган диод қандай вазифани бажаради?",
        "2": "дроссель энергиясини тиристор ёпиқ бўлганида юкламага узатиш",
        "3": "қайтар токлардан ҳимоялаш",
        "4": "бошқариш",
        "5": "коммутациялаш"
      },
      "69": {
        "0": "2",
        "1": "69.Пассив фильтрлар қандай элементлардан ташкил топади?",
        "2": "дросселлар, конденсаторлар ва резисторлар",
        "3": "Транзисторлар, микросхемалар",
        "4": "диодлар",
        "5": "тиристорлар"
      },
      "70": {
        "0": "2",
        "1":
            "71.Силлиқловчи фильтрларда индуктивлик нима учун юкламага кетма-кет уланади?",
        "2": "дроссель ўзгарувчан ток бўйича катта қаршиликка эга",
        "3": ": дроссель ўзгарувчан ток бўйича кичик қаршиликка эга",
        "4": "актив-индуктив юклама бўлиши учун",
        "5": "актив-сиғим юклама бўлиши учун"
      },
      "71": {
        "0": "2",
        "1":
            "72.Силлиқловчи фильтрларда сиғим нима учун юкламага параллел уланади?",
        "2": "конденсатор ўзгарувчан ток бўйича кичик қаршиликка эга",
        "3": "конденсатор ўзгарувчан ток бўйича катта қаршиликка эга",
        "4": "актив-сиғим юклама бўлиши учун",
        "5": "актив-индуктив юклама бўлиши учун"
      },
      "72": {
        "0": "2",
        "1": "73.Резонанс фильтрлар қайси ҳолларда қўлланилади?",
        "2": "истеъмолчи маълум бир гармоникага сезгир бўлганида",
        "3": "катта кириш кучланишида",
        "4": "юклама токи катта бўлганида",
        "5": "юклама токи кичик бўлганида"
      },
      "73": {
        "0": "2",
        "1":
            "74.Актив фильтрларда фильтрлаш вазифасини қандай асбоблар бажаради?",
        "2": "транзисторлар ва микросхемалар",
        "3": "диодлар ва тиристорлар",
        "4": "дросселлар ва конденсаторлар",
        "5": "резисторлар и конденсаторлар"
      },
      "74": {
        "0": "2",
        "1":
            "75.Транзисторли фильтрнинг ишлаши учун қандай шарт бажарилиши керак?",
        "2": "Rдин>>Rст",
        "3": "Rдин<<Rст",
        "4": "Rдин=Rст",
        "5": "Rдин>Rст"
      },
      "75": {
        "0": "2",
        "1":
            "76.Параметрик стабилизаторларда қандай элементлар хоссаларидан фойдаланилади?",
        "2": "ночизиқли элементлар",
        "3": "чизиқли элементлар",
        "4": "рақамли элементлар",
        "5": "мантиқий элементлар"
      },
      "76": {
        "0": "2",
        "1":
            "77.Ўзгармас кучланиш параметрик стабилизаторларда асосий элемент сифатида қандай асбоб ишлатилади?",
        "2": "стабилитрон",
        "3": "LС-контур",
        "4": "тиристор",
        "5": "диод"
      },
      "77": {
        "0": "2",
        "1":
            "78.Ўзгарувчан кучланиш параметрик стабилизаторларда асосий элемент сифатида қандай асбоб ишлатилади?",
        "2": "LС-контур",
        "3": "транзистор",
        "4": "стабилитрон",
        "5": "тиристор"
      },
      "78": {
        "0": "2",
        "1":
            "79.Ўзгармас кучланишни узлуксиз ростловчи стабилизаторларида ростловчи элемент сифатида қандай асбоблар ишлатилади?",
        "2": "транзисторлар ва тиристорлар",
        "3": "дросселлар",
        "4": " стабилитронлар",
        "5": "диод"
      },
      "79": {
        "0": "2",
        "1":
            "80.Қайси ҳолда стабилизатор ростловчи элементи таркибий транзисторларда йиғилади?",
        "2": "катта юклама токида",
        "3": "катта чиқиш кучланишида",
        "4": "катта чиқиш қувватида",
        "5": "катта кириш токида"
      },
      "80": {
        "0": "2",
        "1":
            "81.Кучайтирувчи элемент операцион кучайтиргичда йиғилганда стабилизаторнинг қайси параметрлари ортади?",
        "2": "стабилизациялаш тезлиги",
        "3": "чиқиш токи",
        "4": "чиқиш кучланиши",
        "5": "чиқиш қуввати"
      },
      "81": {
        "0": "2",
        "1": "82.Таянч кучланиши манбаи қайси элементлардан йиғилиши мумкин?",
        "2": "стабилитронлар ва интеграл стабилизаторларда",
        "3": "диодлар ва коденсаторлар",
        "4": "транзисторлар ва тиристорлар",
        "5": "дросселлар ва резисторлар"
      },
      "82": {
        "0": "2",
        "1":
            "83.КР142ЕН сериядаги интеграл стабилизаторларда стабилизациялаш қайси услубда амалга оширилади?",
        "2": "узлуксиз ростлаш",
        "3": "параметрик",
        "4": "импульсли",
        "5": "фаза-импульсли"
      },
      "83": {
        "0": "2",
        "1": "84.Ўлчовчи элементда қўшимча диод нима учун қўйилади?",
        "2": "термокомпенсацияни таъминлаш учун",
        "3": "чиқиш токини ошириш учун",
        "4": "чиқиш кучланишини ошириш учун",
        "5": "бошқариш учун"
      },
      "84": {
        "0": "2",
        "1":
            "85.Импульсли стабилизаторларда ростловчи транзистор қайси режимда ишлайди?",
        "2": "калит режимида",
        "3": "чизиқли режимда",
        "4": "ночизиқли режимда",
        "5": "тўйиниш режимда"
      },
      "85": {
        "0": "2",
        "1":
            "86.Кенгликимпульсли модуляцияли импульсли стабилизаторларда бошқариш импульсининг нимаси ўзгаради?",
        "2": "импульснинг кенглиги",
        "3": "импульснинг даври",
        "4": "паузанинг узунлиги",
        "5": "импульснинг фронти"
      },
      "86": {
        "0": "2",
        "1":
            "87.Релели (икки позицияли) импульсли стабилизаторларда бошқариш импульсининг нимаси ўзгаради?",
        "2": "импульснинг даври",
        "3": "импульснинг кенглиги",
        "4": "паузанинг узунлиги",
        "5": "импульснинг фронти"
      },
      "87": {
        "0": "2",
        "1": "88.Инверторларда қандай жараён амалга оширилади?",
        "2": "инверторлаш",
        "3": "конверторлаш",
        "4": "кучайтириш",
        "5": "стабилизация"
      },
      "88": {
        "0": "2",
        "1":
            "89.Инверторларда калит элементи сифатида қандай элементлар ишлатилади?",
        "2": "транзисторлар ва тиристорлар",
        "3": "диодлар ва стабилитронлар",
        "4": "микросхемалар",
        "5": "дросселлар и резисторлар"
      },
      "89": {
        "0": "2",
        "1": "90.Ўзгартиргич трансформатори қайси частоталарда ишлайди?",
        "2": "юқори частотаталарда",
        "3": "50 Гц ва ундан юқори частоталарда",
        "4": "50 Гц дан паст частоталарда",
        "5": "50 Гц частотада"
      },
      "90": {
        "0": "2",
        "1":
            "91.Шахсий компьютерлар электр таъминоти манбаи (ШК ЭТМ) киришида ва чиқишида ҳалақитларни сўндириш фильтрлари нима учун қўйилади?",
        "2": "юқори частотали ҳалақитларни сўндириш учун",
        "3": "ўзгартиргични таъминот манбаидан гальваник ажратиш учун",
        "4": "фильтрлаш учун",
        "5": "стабилизациялаш учун"
      },
      "91": {
        "0": "2",
        "1": "92.ШК ЭТМнинг номинал чиқиш кучланишларини топинг?",
        "2": "12 В, 5 В",
        "3": "15 В, 5 В",
        "4": " 9 В, 5 В",
        "5": "15 В, 12 В"
      },
      "92": {
        "0": "2",
        "1":
            "93.ШК ЭТМ чиқиш тўғрилагичларида Шоттки диодлари нима учун қўлланилади?",
        "2": "динамик йўқотишларни камайтиришг учун",
        "3": "статик йўқотишларни камайтиришг учун",
        "4": "ШК ЭТМ ўлчамларини камайтириш учун",
        "5": "ШК ЭТМ нархини камайтириш учун"
      },
      "93": {
        "0": "2",
        "1":
            "94.ШК ЭТМи ўзгартиргичларида қўшимча таъминот манбаи нима учун ишлатилади?",
        "2":
            "бошқариш схемаси ва қувват кучайтиргичини ёрдамчи кучланиш билан таъминлаш учун",
        "3": "инверторни ёрдамчи таъминот кучланиши билан таъминлаш учун",
        "4": "электр таъминоти манбаини ҳимоялаш учун",
        "5": "бошқариш учун"
      },
      "94": {
        "0": "2",
        "1":
            "95.Электр энергияси тизимларига юқори гармоникаларнинг таъсири қуйидагича номоён бўлади:",
        "2": "барча жавоблар тўғри",
        "3":
            "электр энергиясини генерациялаш, узатиш ва ундан фойдаланиш процесслари самараларининг камайиши",
        "4":
            "аппаратура изоляциясининг эскириши, бунинг натижасида хизмат муддатини камайиши ва аппаратуранинг хато ишлаши",
        "5":
            "электр энергияси тизимларига юқори гармоникаларнинг таъсири кетма-кет ва параллел резонанслар натижасида токлар ва кучланишлар гармоникаларининг ортиши"
      },
      "95": {
        "0": "2",
        "1":
            "97.«офф-лайн» синфидаги узлуксиз электр таъминоти агрегатларида электр энергияси истеъмолчига қандай узатилади?",
        "2":
            "нормал режимда электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва электр тармоқда авария бўлганида синусоидал кучланиш генератори уланади",
        "3":
            "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш, частота ва синусоидаллик бўйича стабил электр энергияси юкламага узатилади",
        "4":
            "авария режимида электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва нормал режимда синусоидал кучланиш генератори уланади",
        "5":
            "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш узатилади"
      },
      "96": {
        "0": "2",
        "1":
            "97.«офф-лайн» синфидаги узлуксиз электр таъминоти агрегатларида электр энергияси истеъмолчига қандай узатилади?",
        "2":
            "нормал режимда электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва электр тармоқда авария бўлганида синусоидал кучланиш генератори уланади",
        "3":
            "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш, частота ва синусоидаллик бўйича стабил электр энергияси юкламага узатилади",
        "4":
            "авария режимида электр энергиси истеъмолчи тармоғига тўғридан тўғри узатилади ва нормал режимда синусоидал кучланиш генератори уланади",
        "5":
            "ҳар қандай режимларда синусоидал кучланиш генераторидан кучланиш узатилади"
      },
      "97": {
        "0": "2",
        "1":
            "98.Радиоэлектрон аппаратуралар ўзгартиргичларида қўшимча қувват кучайтиргичлари нима учун ишлатилади?",
        "2": "кичик қувватли микросхема бошқариш сигалини кучайтириш учун",
        "3": "бошқариш схемасини инвертор билан мослаштириш учун",
        "4": "радиоэлектрон аппаратурани ишончли ишлаши учун",
        "5": "электр таъминоти манбаини ҳимоялаш учун"
      },
      "98": {
        "0": "2",
        "1":
            "99.Радиоэлектрон аппаратура электр таъминоти манбаи ўзгартиргичи транзисторларини химоялаш қандай амалга оширилади?",
        "2":
            " бошқариш схемаси орқали, у ортиқча юкланиш ҳақида ҳимоя резисторидан сигнал олади",
        "3": "чиқиш LС фильтри орқали",
        "4": "кириш импульсли стабилизатори орқали",
        "5": "чиқиш импульсли стабилизатори орқали"
      },
      "99": {
        "0": "2",
        "1": "100.Аккумуляторларда қандай жараён амалга оширилади?",
        "2":
            "электр энергияси кимёвий энергияга, кейин кимёвий энергия электр энергиясига айлантирилади",
        "3":
            "электр энергияси механик энергияга, кейин механик энергия электр энергиясига айлантирилади",
        "4":
            "электр энергияси иссиқлик энергияга, кейин иссиқлик энергия электр энергиясига айлантирилади",
        "5":
            "электр энергияси кинетик энергияга, кейин кинетик энергия электр энергиясига айлантирилади#"
      }
    };
    Map<String, Map<String, String>> econometrics = {
      "0": {
        "0": "2",
        "1": "“Ekonometrika” tushunchasiga qaysi ta’rif mos keladi?",
        "2":
            "bu iqtisodiy xodisalar va jarayonlar o’zaro bog’liqligining miqdoriy ifodasini o’rganuvchi fan",
        "3":
            "bu joy va vaqtning muayyan sharoitida yalpi ijtimoiy-iqtisodiy xodisalar va jarayonlarning miqdoriy tomonini o’rganuvchi fan",
        "4":
            "bu tasodifiy xodisalarning umumiy qonuniyatlari va tasodifiy omillarning ta’sirini miqdoriy baxolash usullarini o’rganuvchi fan",
        "5": "bu iqtisodiyot va matematikaning birlshmasidan hosil bo’lgan fan"
      },
      "1": {
        "0": "2",
        "1": "“Ekonometrika” tushunchasiga qaysi ta’rif mos keladi?",
        "2":
            "bu iqtisodiy xodisalar va jarayonlar o’zaro bog’liqligining miqdoriy ifodasini o’rganuvchi fan",
        "3":
            "bu joy va vaqtning muayyan sharoitida yalpi ijtimoiy-iqtisodiy xodisalar va jarayonlarning miqdoriy tomonini o’rganuvchi fan",
        "4":
            "bu tasodifiy xodisalarning umumiy qonuniyatlari va tasodifiy omillarning ta’sirini miqdoriy baxolash usullarini o’rganuvchi fan",
        "5": "bu iqtisodiyot va matematikaning birlshmasidan hosil bo’lgan fan"
      },
      "2": {
        "0": "2",
        "1": "Ekonometrikaning maqsadi nimadan iborat?",
        "2":
            "real iqtisodiy ob’ektlarni modellashtirish va miqdoriy taxlil qilish usullarini ishlab chiqish",
        "3": "iqtisodiy ma’lumotlarni yaqqol ko’rinishda ifodalash",
        "4":
            "statistik ma’lumotlarni to’plash va guruxlash usullarini belgilash",
        "5": "iqtisodiy xodisalarning sifatiy jixatlarini o’rganish"
      },
      "3": {
        "0": "2",
        "1": "Modelni tasniflash - bu:",
        "2": "empirik taxlil qilish maqsadida ekonometrik modellarni tuzish",
        "3":
            "tadqiqot№* maqsadini belgilash va iqtisodiy o’zgaruvchi modellarni tanlash",
        "4":
            "modelni statistik taxlil qilish va parametrlarining sifatini baxolash",
        "5": "zarur statistik axborotni to’plash"
      },
      "4": {
        "0": "2",
        "1":
            "Ekonometrikaning qaysi vazifasi modelni parametrlash vazifasi xisoblanadi?",
        "2":
            "model parametrlarining va umuman modelning o’zini sifatini tekshirish",
        "3":
            "ekonometrik modellashtirish natijalariga ko’ra muayyan iqtisodiy xodisalar uchun prognozni tuzish va tavsiyalarni ishlab chiqish",
        "4": "modelni tuzish parametrlarini baxolash",
        "5": "empirik taxlil qilish uchun ekonometrik modellarni tuzish"
      },
      "5": {
        "0": "2",
        "1": "Model sifatini aniqlash - bu:",
        "2": "model parametrlarining va umuman modelning sifatini tekshirish",
        "3":
            "iqtisodiy modelning turini aniqlash, uning o’zgaruvchilari o’rtasidagi o’zaro bog’liqlikni matematik shaklda ifodalash",
        "4": "modelning dastlabki shart-sharoitlari va cheklovlarini aniqlash",
        "5": "o’rganilayotgan iqtisodiy xodisalarni taxlil qilish"
      },
      "6": {
        "0": "2",
        "1":
            "Quyida sanab o’№*tilgan modellar ichidan bir tenglamali regression modelni tanlang? 1) yetkazib berish xajmidan narx modeli; 2) talab va taklif modeli; 3) trend va mavsumiylik modeli; 4) ishlab chiqarish xajmining ishlab chitsarish omillariga bog’liqligi modeli",
        "2": "1,4",
        "3": "2,4",
        "4": "2, 3",
        "5": "barchasi"
      },
      "7": {
        "0": "2",
        "1":
            "Turli obyektlar xaqida bir davr (vaqt) uchun olingan ma’lumotlar to’plami qanday nomlanadi?",
        "2": "makonga ko’ra ma’lumotlar",
        "3": "vaqtga ko’ra ma’lumotlar",
        "4": "davriy ma’lumotlar",
        "5": "o’zgarmas ma’lumotlar"
      },
      "8": {
        "0": "2",
        "1": "“Mustaqil o’zgaruvchi” tushunchasining o’xshashini tanlang?",
        "2": "Omil",
        "3": "endogen o’zgaruvchi",
        "4": "Natija",
        "5": "ekzogen o’zgaruvchi"
      },
      "9": {
        "0": "2",
        "1":
            "Ovqatlanish xarajatlari umumiy miqdorining tasarrufdagi shaxsiy daromadga (x) va oziq-ovqat maxsulotlarining narxiga (r) bog’liqligi modelini ko’rib chiqing: u=a0+a1x+a2r+s. Model sinfini va modelning o’zgaruvchilari turini aniqlang?",
        "2":
            "bir tenglamali regression model; endogen o’zgaruvchi - ovqatlanish №*xarajatlari, ekzogen o’zgaruvchi - tasarrufdagi shaxsiy daromad va oziq-ovqat maxsulotlarining narxi",
        "3":
            "bir tenglamali regression model; endogen o’zgaruvchi - ovqatlanish xarajatlari, ekzogen o’zgaruvchi - tasarrufdagi shaxsiy daromad, oldindan belgilangan o’zgaruvchi - oziq-ovqat maxsulotlarining narxi",
        "4":
            "vaqt qatori modeli; endogen o’zgaruvchi - ovqatlanish xarajatlari, lag o’zgaruvchi - tasarrufdagi shaxsiy daromad va oziq-ovqat maxsulotlarining narxi",
        "5": "To’g’ri javob keltirilmagan"
      },
      "10": {
        "0": "2",
        "1":
            "Ekonometrik modellashtirish bosqichlarining to’g’ri ketma-ketligini toping?",
        "2":
            "masalani qo’yish, aprior, parametrlash, axborot, identifikatsiyalash, verifikatsiyalash",
        "3":
            "masalani qo’yish, aprior, axborot, parametrlash, identifikatsiyalash, verifikatsiyalash",
        "4":
            "axborot, masalani qo’yish, aprior, parametrlash, verifikatsiyalash, identifikatsiyalash",
        "5": "ma’lumotlani to’plash,"
      },
      "11": {
        "0": "2",
        "1": "Qanday xolatda bog’liqlik korrelyatsion deb aytiladi?",
        "2":
            "agar№* omilning har bir qiymatiga natijali belgining ko’plab qiymatlari, ya’ni muayyan statistik taqsimot mos kelsa",
        "3":
            "agar omilning har bir qiymatiga natijaviy omilning muayyan tasodifiy qiymati mos kelsa",
        "4":
            "agar omilning har bir qiymatiga natijaviy omil qiymatlarining butun bir taqsimoti mos kelsa",
        "5":
            "agar omilli belgining har bir qiymatiga natijali belgining muayyan belgilangan qiymati mos kelsa"
      },
      "12": {
        "0": "2",
        "1": "Tahliliy ifodaga ko’ra bog’liqlik qanday turlarga bo’linadi?",
        "2": "Chiziqli va chiziqsiz",
        "3": "To’gri va teskari",
        "4": "Egri chiziqli",
        "5": "Toq va juft"
      },
      "13": {
        "0": "2",
        "1": "Regression tahlil nimani aniqlashdan iborat?",
        "2":
            "bog’liqlikning taxliliy shaklini, unda natijaviy omilning o’zgarishi bir yoki bir necha omillarning ta’siri bilan shartlangan, natijaviy omilga ta’sir ko’rsatuvchi barcha boshqa omillar ko’pligi esa doimiy va o’rtacha qiymatlar sifatida qabul qilinadi",
        "3":
            "ikkita omil o’rtasidagi (juft bog’liqlikda) xamda natijaviy omil bilan omillar ko’pligi o’№*rtasidagi (ko’p omilli bog’liqlikda) bog’liqlikning jipsligini",
        "4":
            "ikkita tasodifiy o’zgaruvchi o’zaro ta’sirining statistik o’lchovini",
        "5":
            "tartibli o’zgaruvchilar o’rtasidagi statistik bog’liqlik darajasini"
      },
      "14": {
        "0": "2",
        "1": "Alohida korrelyatsiya deganda nima tushuniladi?",
        "2":
            "boshqa omillar qiymati qat’iy belgilangan hollarda natijaviy omil va bitta omil o’rtasidagi bog’liqlik",
        "3":
            "natijaviy omil hamda tadqiqotga kiritilgan ikki yoki undan ko’p omillarning bog’liqlikdagi",
        "4":
            "ikkita omil (natijaviy va omillar yoki ikkita omil) o’rtasidagi bog’liqlik",
        "5": "sifatiy omillar o’rtasidagi bog’liqlik"
      },
      "15": {
        "0": "2",
        "1":
            "Quyidagi qiymatlardan qaysi biri korrelyatsiyaning juft koeffitsiyentini qabul qila olmaydi?",
        "2": "1,111",
        "3": "-0,973",
        "4": "0,005",
        "5": "0,721"
      },
      "16": {
        "0": "2",
        "1":
            "Korrelyatsiya chiziqli koeffitsiyentining qaysi qiymatida Y va X omillar o’rtasidagi bog’liqlikni jips (kuchli) deb xisoblash mumkin?",
        "2": "0,657",
        "3": "-0,975",
        "4": "-0,111",
        "5": "0,421"
      },
      "17": {
        "0": "2",
        "1":
            "Agar Y va X omillar o’rtasidagi korrelyatsiya juft koeffitsiyenti 1 ga teng bo’lsa, u nimani anglatadi?",
        "2": "to’g’ri funksional bog’liqlikning mavjudligi",
        "3": "bog’liqlikning yo’qligi",
        "4": "teskari korrelyatsion bog’liqlikning mavjudligi",
        "5": "teskari funksional bog’liqlikning mavjudligi"
      },
      "18": {
        "0": "2",
        "1":
            "Regressiya parametrlarining baholari (eng kichik kvadratlar usuli baholarining xususiyatlari) qanday bo’lishi kerak?",
        "2": "siljimagan",
        "3": "geteroskedatik",
        "4": "samarali",
        "5": "asoslangan"
      },
      "19": {
        "0": "2",
        "1":
            "Chiziqli juft regressiya tenglamasida a1 parametr nimani anglatadi?",
        "2":
            "agar x o’zgaruvchi bir o’lchov birligiga oshirilsa, u natijaviy omilni o’rtacha qancha miqdorga o’zgarishini",
        "3":
            "natijaviy omil hisobga olinmagan (tadqiqot uchun ajratilmagan) omillarning o’rtacha holatga keltirilgan ta’sirini",
        "4":
            "omil 1 foizga o’zgarganda natijaviy omilning o’rtacha o’zgarishini",
        "5":
            "u natijaviy omil belgi variatsiyasining qanday ulushi modelda hisobga olinganligini va u x o’zgaruv№*chining ta’siri bilan shartlanganligini"
      },
      "20": {
        "0": "2",
        "1":
            "Regressiya tenglamasi yx = 2,02 ± 0,78x ko’rinishga ega. Agar x o’zining bir o’lchov birligiga oshirilsa, u o’rtacha o’zining qancha o’lchov birligiga o’zgaradi",
        "2": "0,78 ga oshadi",
        "3": "2,02 ga oshadi",
        "4": "2,80 ga oshadi",
        "5": "o’zgarmaydi"
      },
      "21": {
        "0": "2",
        "1":
            "Regressiya tenglamasining ahamiyatliligini baholash uchun qanday mezondan foydalaniladi?",
        "2": "Fisherning F-mezoni",
        "3": "Styudentning t mezoni",
        "4": "Pirson mezoni",
        "5": "Darbin-Uotsonning J-mezoni"
      },
      "22": {
        "0": "2",
        "1":
            "Omil 1 foizga o’zgarganda natijaviy omilning o’rtacha o’zgarishini qanday koeffitsiyent belgilab beradi?",
        "2": "elastiklik koeffitsiyenti",
        "3": "regressiya koeffitsiyenti",
        "4": "determinatsiya koeffitsiyenti",
        "5": "korrelyatsiya koeffitsiyenti"
      },
      "23": {
        "0": "2",
        "1": "Xususiy korrelyatsiya koeffitsiyenti nimani baholaydi?",
        "2":
            "qolgan omillarning qat’iy belgilangan qiymatida ikkita o’zgaruvchi o’rtasidagi bog’liqlikning jipsligini baholaydi",
        "3":
            "ikkita o’zgaruvch№*i o’rtasidagi bog’liqlikning jipsligini baholaydi",
        "4":
            "uchta o’zgaruvchi o’rtasidagi bog’liqlikning jipsligini baholaydi",
        "5":
            "barcha o’zgaruvchilar o’rtasidagi bog’liqlikning jipsligini baholaydi"
      },
      "24": {
        "0": "2",
        "1":
            "x argument (erkin o’zgaruvchi) 1 foizga oshirilganda u natijaviy omil o’zgarishining foizini o’rtacha darajada qaysi koeffitsiyent ko’rsatadi?",
        "2": "determinatsiya koeffitsiyenti",
        "3": "regressiya koeffitsiyenti",
        "4": "elastiklik koeffitsiyenti",
        "5": "beta-koeffitsiyent"
      },
      "25": {
        "0": "2",
        "1": "a0 chiziqli trend parametrining to’g’ri tavsifini ko’rsating",
        "2":
            "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
        "3":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
        "4":
            "tahlil qilinayotgan xodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
        "5": "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
      },
      "26": {
        "0": "2",
        "1": "ekspon№*entsial trend parametrining to’g’ri tavsifini ko’rsating",
        "2": "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati",
        "3":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
        "4":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
        "5":
            "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi"
      },
      "27": {
        "0": "2",
        "1": "a2 parabolik trend koeffitsiyentini nima tavsiflaydi?",
        "2":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
        "3":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
        "4":
            "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
        "5": "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
      },
      "28": {
        "0": "2",
        "1": "a1 chiziqli trend koeffitsiyentini nima tavsiflaydi?",
        "2":
            "tahlil qilinayot№*gan hodisaning davrdan (lahzadan) davrga (lahzaga) o’rtacha o’zgarishi",
        "3":
            "tahlil qilinayotgan hodisaning davrdan (lahzadan) davrga (lahzaga) o’zgarishining o’rtacha tezlashishi",
        "4":
            "sanoq boshi sifatida qabul qilingan vaqt davri (lahzasi) uchun qatorning o’rtacha tenglashtirilgan darajasi",
        "5": "vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati"
      },
      "29": {
        "0": "2",
        "1":
            "Trendning tenglashtirilgan darajalaridan og’ishlarni korrelyatsiyalash nima uchun o’tkaziladi?",
        "2":
            "xaqiqiy darajalarning trendni aks ettiruvchi tenglashtirilgan darajalardan og’ishlari o’rtasidagi bog’liqlikning jipsligini aniqlash uchun",
        "3":
            "avtokorrelyatsiya mavjud bo’lmagan xollarda dinamika qatorlari o’rtasidagi bog’liqlikning jipsligini aniqlash uchun",
        "4": "avtokorrelyatsiyaning ta’sirini istisno etish uchun",
        "5":
            "umumiy tendensiya belgisining o’zgaruvchiligiga ta’sirini istisno etish uchun"
      },
      "30": {
        "0": "2",
        "1": "Qanday holatda kointegratsiya xodisasi ishtirok etadi?",
        "2":
            "agar vaqt qatori uz№*oq davom etadigan vaqt oralig’ida doimiy dispersiyaga ega bo’lsa",
        "3":
            "agar vaqt qatorida taxlil etilayotgan ko’rsatkichning doimiy o’rtacha sur’ati ishtirok etsa",
        "4":
            "agar vaqt qatorida ikki va undan ortiq darajalar tendensiyasi mos kelsa (yoki qarama-qarshi yo’nalishga ega bo’lsa)",
        "5":
            "agar vaqt qatorida vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati ishtirok etsa"
      },
      "31": {
        "0": "2",
        "1":
            "Bog’langan vaqt qatorlarining darajalari o’rtasidagi bog’liqlikni o’rganish qanday usul yordamida o’tkaziladi?",
        "2": "ketma-ket ayirmalarni korrelyatsiyalash",
        "3": "dinamika qatori darajalarini korrelyatsiyalash",
        "4": "xaqiqiy darajalarning trenddan og’ishlarini korrelyatsiyalash",
        "5": "avtoregression o’zgartirishlarni korrelyatsiyalash"
      },
      "32": {
        "0": "2",
        "1": "Bog’langan qatorlarning to’g’ri ta’rifini ko’rsating?",
        "2":
            "natijali belgining bir yoki bir necha omilli belgiga bog’liqligini ko’rsatuvchi",
        "3":
            "ikki yoki undan ortiq vaqt qatorining darajalaridagi sabab-oqibatli bog’l№*iqlik bo’lib, ular tendensiyalari va tasodifiy o’zgaruvchining mos kelishida yoki qarama-qarshi yo’nalishga ega bo’lishida o’z ifodasini topadi",
        "4":
            "avtokorrelyatsiya koeffitsiyenti qiymatlari lagining kattaligi qiymatlariga bog’liqligi",
        "5":
            "vaqt qatori darajalarining dastlabki xolatga nisbatan vaqt lahzalariga siljishi"
      },
      "33": {
        "0": "2",
        "1":
            "O’zgaruvchilarning lag qiymatlari bevosita qaysi modelga kiritilgan?",
        "2": "avtoregressiya",
        "3": "adaptiv kutishlar",
        "4": "taqsimlangan lagli",
        "5": "to’liqsiz (qisman) tuzatishlar kiritish"
      },
      "34": {
        "0": "2",
        "1": "Avtoregressiya modellari shu bilan tavsiflanadiki, ular:",
        "2":
            "omilli o’zgaruvchilar sifatida natijaviy omilning lag qiymatlariga ega",
        "3": "(t+1) davrda omilning istalgan qiymatini hisobga oladi",
        "4":
            "(t+1) davrda natijaviy omilning istalgan (kutilayotgan) qiymatini hisobga oladi",
        "5":
            "(t–1) davrda natijaviy omilning istalgan (kutilayotgan) qiymatini hisobga oladi"
      },
      "35": {
        "0": "2",
        "1": "Natijaviy omil omilning kutilayotgan qiymatlariga bog’liq",
        "2": "adap№*tiv kutishlar modelining uzoq muddatli funksiyasida",
        "3": "adaptiv kutishlar modelining qisqa muddatli funksiyasida",
        "4":
            "qisman tuzatishlar kiritish modelining uzoq muddatli funksiyasida",
        "5":
            "qisman tuzatishlar kiritish modelining qisqa muddatli funksiyasida"
      },
      "36": {
        "0": "2",
        "1":
            "'Ishlab chiqarishning uch omili g'oyasini ilgari surgan iqtisodchi olim - ...",
        "2": "J.B.Sey",
        "3": "J.M.Keyns",
        "4": "J.B.Klark",
        "5": "D.Rikardo"
      },
      "37": {
        "0": "2",
        "1":
            "“Ish bilan bandlik, foiz va pulning umumiy nazariyasi” nomli kitobning muallifi kim?",
        "2": "Jon Meynard Keyns",
        "3": "Adam Smit",
        "4": "Antuan Monkreten",
        "5": "Fransua Kene"
      },
      "38": {
        "0": "2",
        "1": "40-60 yil mobaynida takrorlanib turadigan sikl qanday nomlanadi?",
        "2": "Kondratev sikli",
        "3": "Kitchin sikli",
        "4": "Juglar sikli",
        "5": "Kuznes sikli"
      },
      "39": {
        "0": "2",
        "1":
            "Agar talab elastikligi 1 dan katta bo'lsa, bunday elastiklik nima deb normlanadi?",
        "2": "Elastic",
        "3": "noelastik",
        "4": "birlik elastik",
        "5": "o'zgarmas"
      },
      "40": {
        "0": "2",
        "1":
            "Doimo takrorlanib turadigan, iqtisodiy jarayonlar va real hodisalarning ayrim tomonl№*arini ifoda etuvchi ilmiy-nazariy tushuncha nima deb ataladi?",
        "2": "iqtisodiy kategoriya",
        "3": "induktsiya",
        "4": "abstraktsiya",
        "5": "deduktsiya"
      },
      "41": {
        "0": "2",
        "1":
            "Iqtisodiy inqiroz davrida iqtisodiyotning qaysi sohalari kamroq yo'qotishga uchraydi?",
        "2":
            "qisqa muddatli foydalaniladigan iste'molchilik tovarlari ishlab chiqaruvchi tarmoqlari",
        "3":
            "uzoq muddatli foydalaniladigan iste'molchilik tovarlari ishlab chiqaruvchi sanoat tarmoqlari",
        "4": "investision tovar ishlab chiqaruvchi sanoat tarmoqlari",
        "5": "og'ir sanoat"
      },
      "42": {
        "0": "2",
        "1":
            "Iqtisodiy o'sish sur'ati bilan bog'liq holda YaIMni necha yilda 2 barobarga ortishini iqtisodchilar tomonidan qo'llaniluvchi qoidani nomini toping.",
        "2": "70 miqdor qoidasi",
        "3": "90 sifat qoidasi",
        "4": "50 talab qoidasi",
        "5": "bunday qoida mavjud emas"
      },
      "43": {
        "0": "2",
        "1": "Iqtisodiy o'sishning mazmuni ifodalab bering",
        "2":
            "real yalpi ichki mahsulot hajmining mutloq va aholi jon boshiga nisbatan o'sib borishi",
        "3": "yalpi ichki mahsulot hajmining aholi jon boshiga kamayib borishi",
        "4": "yalpi investisiyalarning ko№*'payishi",
        "5": "byudjet daromadi hajmining ko'payishi"
      },
      "44": {
        "0": "2",
        "1":
            "Insonlarning iqtisodiy faoliyat turlari yoki ishlab chiqarish natijalari bo'yicha o'zaro almashish jarayoni nima deb ataladi?",
        "2": "ayirboshlash jarayoni",
        "3": "taqsimlash",
        "4": "ishlatish",
        "5": "iste'mol"
      },
      "45": {
        "0": "2",
        "1": "Ishlab chiqarish xarajatlari - bu…",
        "2":
            "tovar va xizmatlarni ishlab chiqarish va iste'molchilarga yetkazib berishgacha qilinadigan barcha sarflar",
        "3":
            "yalpi pul tushumidan barcha xarajatlar chiqarib tashlangandan keyin qolgan qismi",
        "4": "ko'payib boruvchi ehtiyojlarni qondiruvchi manba",
        "5":
            "asosiy kapitalni kengaytirish va uni takror ishlab chiqarishga qilinadigan sarflar"
      },
      "46": {
        "0": "2",
        "1":
            "Ishlab chiqarishning avvalgi texnikaviy asosi saqlanib qolgan holda ishlab chiqarish omillari miqdorining ko'payishi tufayli … iqtisodiy o'sishga erishiladi ?",
        "2": "Ekstensiv",
        "3": "Intensiv",
        "4": "Mukammal",
        "5": "Nomukammal"
      },
      "47": {
        "0": "2",
        "1":
            "Ishlab chiqarishning har bir darajasida doimiy va o'zgaruvchi xarajatlar yig'indisi qan№*day xarajatlarni tashkil qiladi?",
        "2": "umumiy xarajatlarni",
        "3": "xususiy xarajatlarni",
        "4": "ob'ektiv xarajatlarni",
        "5": "sub'ektiv xarajatlarni"
      },
      "48": {
        "0": "2",
        "1":
            "Ishchi kuchi 12,5 mln. kishini, ishsizlar 1,3 mln. kishini tashkil qilsa, ishsizlik darajasi necha foizni tashkil qiladi?",
        "2": "10,4 foiz",
        "3": "13,8 foiz",
        "4": "11,2 foiz",
        "5": "9,6 foiz"
      },
      "49": {
        "0": "2",
        "1":
            "K.Menger, F.Vizer, Bem-Baverk kabi Avstriya iqtisodiy maktabining namoyandalari qaysi iqtisodiy ta'limot vakillari bo'lib hisoblanishadi?",
        "2": "marjinalizm ta'limoti",
        "3": "fiziokratlar",
        "4": "liberalizm",
        "5": "merkantilizm"
      },
      "50": {
        "0": "2",
        "1":
            "Qaysi omil aholi iste'moli va pul jamg'armalari darajasini belgilaydi?",
        "2": "milliy daromad",
        "3": "soliqlar darajasi",
        "4": "foiz stavkasi",
        "5": "ish haqi"
      },
      "51": {
        "0": "2",
        "1":
            "Qimmatli qog'ozlar oldi-sotdisi bo'yicha rasmiy jihatdan tashkil etilgan va muntazam amal qiluvchi bozor shakli birjaning qanday turiga kiradi?",
        "2": "fond birjasi",
        "3": "valyuta birjasi",
        "4": "mehnat birjasi",
        "5": "tovar birjasi"
      },
      "52": {
        "0": "2",
        "1": "Qishloq xo'jaligini qo'llab q№*uvvatlash ta'limotchilari",
        "2": "Fiziokratlar",
        "3": "merkantilistlar",
        "4": "klassiklar",
        "5": "keynschilar"
      },
      "53": {
        "0": "2",
        "1": "Laffer egri chizig'i:",
        "2":
            "davlat byudjeti daromadlari va soliq stavkasi o'rtasidagi bog'liqlikni ifodalaydi",
        "3":
            "ishsizlik va inflyasiya o'rtasidagi teskari bog'lanishni ifodalaydi",
        "4": "baho bilan taklif o'rtasidagi to'g'ri bog'lanishni ifodalaydi",
        "5": "baho bilan taklif o'rtasidagi teskari bog'lanishni ifodalaydi"
      },
      "54": {
        "0": "2",
        "1": "Tarkibiy o'zgarishlar deganida nimani tushunasiz?",
        "2":
            "Iqtisodiyot tarmoqlari ichida va tarmoqlararo nisbatlarni sifat jihatidan bir-biriga yaqinlashtirish",
        "3": "Ijtimoiy islohotlar o'tkazish",
        "4": "Moliyaviy islohotlar o'tkazish",
        "5": "Iqtisodiy islohotlar o'tkazish"
      },
      "55": {
        "0": "2",
        "1": "Foyda nima?",
        "2": "yalpi daromad minus yalpi xarajatlar",
        "3": "yalpi daromad minus o'zgaruvchan xarajatlar",
        "4": "yalpi daromad minus doimiy xarajatlar",
        "5": "yalpi daromadning narxga nisbati"
      },
      "56": {
        "0": "2",
        "1": "Foyda normasi nima?",
        "2":
            "foyda massasining ishlab chiqarish xarajatlariga nisbatining foizda№* ifodalanishi",
        "3": "doimiy xarajatlar minus o'zgaruvchan xarajatlar",
        "4":
            "ishlab chiqarilgan mahsulot umumiy miqdorining bir birlik mahsulot narxiga nisbati",
        "5": "yalpi daromad minus yalpi xarajatlar"
      },
      "57": {
        "0": "2",
        "1":
            "Avtokorrelyatsiya mavjudligini tekshirish uchun quyidagi mezonlardan qaysi biri qo'llanadi?",
        "2": "DW mezoni",
        "3": "Goldfelda-Kvandt testi",
        "4": "Spirmen testi",
        "5": "Gleyzer testi"
      },
      "58": {
        "0": "2",
        "1":
            "Agar biror bir mahsulotga taklifning baho bo'yicha elastikligi 1,2 ga teng bo'lsa:",
        "2": "Ushbu mahsulot elastik bo'ladi",
        "3": "Ushbu mahsulot noelastik bo'ladi",
        "4": "Ushbu mahsulot birga teng elastik bo'ladi",
        "5": "Ushbu mahsulotni kamroq ishlab chiqarish kerak"
      },
      "59": {
        "0": "2",
        "1": "Agar mamlakat miqyosida umumiy baholar o'sishi kuzatilsa:",
        "2": "Inflyatsiya bo'ladi",
        "3": "Ishsizlik bo'ladi",
        "4": "Ishsizlik, inflyatsiya,",
        "5": "Ishsizlik, iqtisodiy o'sish"
      },
      "60": {
        "0": "2",
        "1":
            "Asosiy fondlar bo'yicha yalpi mahsulotning elastiklik koeffitsiyenti nimani ko'rsatadi?",
        "2":
            "Fondlar qiymati bir foizga o'zgarganda, mahsulot ishlab chiqa№*rish qiymati necha foizga o'zgarishini ko'rsatadi",
        "3":
            "Fondlar qiymati bir birlikka o'zgarganda, mahsulot ishlab chiqarish qiymati necha foizga o'zgarishini ko'rsatadi",
        "4":
            "Fondlar qiymati bir foizga o'zgarganda, mahsulot ishlab chiqarish qiymati o'zgarmasligini ko'rsatadi",
        "5":
            "Fondlar qiymati bir birlikka o'zgarganda, mahsulot ishlab chiqarish qiymati necha foizga o'zgarishini ko'rsatadi"
      },
      "61": {
        "0": "2",
        "1": "Baho bilan talab o'rtasida bog'lanish",
        "2": "Talab qonuni deyiladi",
        "3": "Taklif qonuni deyiladi",
        "4": "Qiymat qonuni deyiladi",
        "5": "Elastiklik koyeffitsiyenti qonuni deyiladi"
      },
      "62": {
        "0": "2",
        "1": "Vaqtli qatorlarni tekislashda qaysi usullardan foydalaniladi:",
        "2": "Eng kichik kvadratlar usuli",
        "3": "O'rtacha sirg'aluvchilar usuli",
        "4": "Eksponentsial tekislash usuli",
        "5": "Yuqoridagi barcha usullar"
      },
      "63": {
        "0": "2",
        "1": "Makroiqtisodiy jarayonlar – bu:",
        "2": "Ishsizlik, inflyatsiya, iqtisodiy o'sish",
        "3": "Korxona foydasi va zarari, moliyaviy natijalari",
        "4": "Ishsizlik, bankrotlik",
        "5": "Inflyatsiya, bankrotlik"
      },
      "64": {
        "0": "2",
        "1": "Regressiya tenglamasi – bu:",
        "2":
            "Natijaviy omil va unga ta'sir etuvchi omillar orasidagi bog'lanishning shakli",
        "3": "Ta'sir etuvchi omillar orasidagi munosabati",
        "4":
            "Asosiy omil va unga ta'sir etuvchi omillar orasidagi bog'lanish zichligi",
        "5": "Omillar orasidagi munosabatni ko'rsatmaydi"
      },
      "65": {
        "0": "2",
        "1":
            "Ta'sir etuvchi omilning 1 %ga o'zgarishi, natijaviy omilning qanchaga o'zgarishini ko'rsatadi",
        "2": "elastiklik koeffitsiyenti",
        "3": "Regressiya koeffitsiyenti",
        "4": "Student koeffitsiyenti",
        "5": "Korrelyatsiya koeffitsiyenti"
      },
      "66": {
        "0": "2",
        "1":
            "Ta'sir etuvchi omilning bir birlikka o'zgarishi, natijaviy omilning qanchaga o'zgarishini ko'rsatadi koeffitsiyent",
        "2": "Regressiya koeffitsiyenti",
        "3": "Regressiya tenglamasi",
        "4": "Student koeffitsiyenti",
        "5": "Korrelyatsiya koeffitsiyenti"
      },
      "67": {
        "0": "2",
        "1": "Trend – bu:",
        "2":
            "Vaqt bo'yicha qatorni barqaror tendensiyasi bo'lib, ozmi-ko'pmi tasodifiy tebranishlar ta'siridan ozodidr",
        "3": "Vaqt bo'yicha qatorni barqaror tendensiyasi",
        "4": "Tenglama",
        "5": "Vaqtga bog’liq bo’lmagan o’zgarishlar№*ni ifodalaydi"
      },
      "68": {
        "0": "2",
        "1": "Trend tiplari:",
        "2": "To'g'ri chiziqli, parabola, giperbola, logarifmik, eksponentsial",
        "3": "To'g'ri chiziqli, parabola,",
        "4": "Chiziqli, aylana tipidagi",
        "5": "Chiziqli, giperbolik, logarifmik, elliptik"
      },
      "69": {
        "0": "2",
        "1": "O'rtacha mehnat unumdorligi ko'rsatadi:",
        "2":
            "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi pasayib boradi",
        "3":
            "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi o'zgarmaydi",
        "4":
            "Mehnat harajati oshib borganda o'rtacha mehnat unumdorligi oshadi",
        "5":
            "O'rtacha mehnat unumdorligi oshib borganda mehnat harajati pasayib boradi"
      },
      "70": {
        "0": "2",
        "1": "Fisher mezoni quyidagini ko'rsatadi:",
        "2": "Olingan modelning o'rganilayotgan jarayonga mosligini",
        "3": "Omillar orasidagi bog'lanish zichligini",
        "4": "Olingan modeldagi koeffitsiyentlarning ahamiyatliligini",
        "5": "Korrelyatsiya koeffitsiyentining ishonchliligini"
      },
      "71": {
        "0": "2",
        "1": "Ekzogen – bu",
        "2": "Qiymati tashqaridan beriladigan, ta'sir etuvchi X o'zgaruvchilar",
        "3": "Tizim ichida aniqlanuvchi, bog'liqli№* Y o'zgaruvcghi",
        "4": "Qiymati tashqaridan beriladigan, o'zgaruvchilar",
        "5": "Y o'zgaruvcghi"
      },
      "72": {
        "0": "2",
        "1": "Ekonometrik model – bu:",
        "2": "Tenglamalar va tengsizliklar tizimi",
        "3": "Balansli matritsalar",
        "4": "Axborotlar tizimi",
        "5": "Matematik belgilar tizimi"
      },
      "73": {
        "0": "2",
        "1": "Ekonometrik modellar iqtisodiy jarayonlarini:",
        "2": "iqdosotiy va sifat jihatdan o'rganadi",
        "3": "Sifat jihatdan o'rganadi",
        "4": "Analitik jihatdan o'rganadi",
        "5": "Yechimlarning aniqligi jihatidan o’rganadi"
      },
      "74": {
        "0": "2",
        "1":
            "Ekonometrik modellashtirish bosqichlaridan birinchi bosqichni aniqlang:",
        "2":
            "Iqtisodiy jarayon har tomonlama nazariy, sifat jihatdan tahlil qilinadi va uning parametrlari, ichki va tashqi informatsion aloqalar, ishlab chiqarish resurslari, rejalashtirish davri kabi ko'rsatkichlar aniqlanadi",
        "3":
            "Bosqichda izlanayotgan noma'lum o'zgaruvchilar nima, qanday maqsadni ko'zda tutadi, natija nimalarga olib keladi kabi savollar aniqlangan bo'lishi kerak",
        "4":
            "Modellashtirilayotgan jarayonning iqtisodiy-matematik modeli tenglamalari№* va tengsizliklar tizimi shaklida ifodalanadi",
        "5":
            "Tuzilgan iqtisodiy-matematik modelning miqdoriy yechimini aniqlaydigan usul tanlanadi"
      },
      "75": {
        "0": "2",
        "1":
            "Ekonometrik modellashtirish bosqichlaridan ikkinchi bosqichni aniqlang:",
        "2":
            "Bosqichda izlanayotgan noma'lum o'zgaruvchilar nima, qanday maqsadni ko'zda tutadi, natija nimalarga olib keladi kabi savollar aniqlangan bo'lishi kerak",
        "3":
            "Iqtisodiy jarayon har tomonlama nazariy, sifat jihatdan tahlil qilinadi va uning parametrlari, ichki va tashqi informatsion aloqalar, ishlab chiqarish resurslari, rejalashtirish davri kabi ko'rsatkichlar aniqlanadi",
        "4":
            "Modellashtirilayotgan jarayonning iqtisodiy-matematik modeli tenglamalari va tengsizliklar tizimi shaklida ifodalanadi",
        "5":
            "Tuzilgan iqtisodiy-matematik modelning miqdoriy yechimini aniqlaydigan usul tanlanadi"
      },
      "76": {
        "0": "2",
        "1": "Ekonometrik modelning shaklini tanlashda qo'llanadigan usul",
        "2": "Regression tahlil usuli",
        "3": "Korrelyatsion tahlil usuli",
        "4": "Ekstrapolyatsiya usuli",
        "5": "Prognoz usuli"
      },
      "78": {
        "0": "2",
        "1": "Vaqtli qatorlar tahlili",
        "2": "Indeksli tahlil",
        "3": "Klasterli tahlil",
        "4": "SWOT tahlili",
        "5": ""
      },
      "79": {
        "0": "2",
        "1": "Ekonometrika– bu:",
        "2": "Matematika, iqtisodiyot va statistika sintezi",
        "3": "Matematika va iqtisodiyot sintezi",
        "4": "Matematika va statistika sintezi",
        "5": "Ehtimollar nazariyasi va iqtisodiyot sintezi"
      },
      "80": {
        "0": "2",
        "1": "Ekonometrikaning asosiy maqsadi:",
        "2":
            "Omillararo bog'lanishlarni, o'zgarish qonuniyatlarni va tendentsiyalarni o'rganish",
        "3": "Tarmoqlararo modellarni o'rganish",
        "4": "Optimallashtirish masalalarni o'rganish",
        "5": "Ehtimollarni o'rganish"
      },
      "81": {
        "0": "2",
        "1": "Ekonometrikaning vazifalari:",
        "2": "Modelni identsifikatsiyalash, verifikatsiyalash, prognoz qilish",
        "3": "Modelni tanlash va optimallashtirish",
        "4": "Tajribalar qilish va natijalar olish",
        "5": "Mantiqiy tahlil qilish va modellashtirish"
      },
      "82": {
        "0": "2",
        "1": "Ekonometrikaning maqsadi:",
        "2":
            "Real iqtisodiy obyektlarni modellashtirish va miqdoriy tahlil qilishning usullarini ishlab chiqish",
        "3": "Axborotlarni qayta №*ishlash",
        "4": "Fizik ob'ektlarni modellashtirish",
        "5":
            "Sifatli, psixologik miqdoriy tahlil qilishning usullarini ishlab chiqish"
      },
      "83": {
        "0": "2",
        "1": "Ekstropalyatsiya usuli qo'llaniladi",
        "2": "Statistik prognozda",
        "3": "Eng kichik kvadratlar usuli",
        "4": "O'rtacha sirg'aluvchilar usuli",
        "5": "Eksponetsial tekislash usuli"
      },
      "84": {
        "0": "2",
        "1": "Eng kichik kvadratlar usuli … xizmat qiladi:",
        "2": "Dinamik qatorlarni tekislash uchun",
        "3": "Omillar orasidagi bog'lanish zichligini aniqlash uchun",
        "4": "Dinamik qatorlardagi o'rtacha qiymatlarni aniqlash uchun",
        "5": "Omillarning o'rtacha kvadrat chetlanishini aniqlash uchun"
      },
      "85": {
        "0": "2",
        "1":
            "Farovonlik va rivojlanish indeksi qaysi tashkilot tomonidan belgilanadi?",
        "2": "Legatum instituti tomonidan",
        "3": "Menejment instituti tomonidan",
        "4": "BMT tomonidan",
        "5": "Jahon banki tomonidan"
      },
      "86": {
        "0": "2",
        "1": "Korxonaning sof foydasi qanday hisoblanadi?",
        "2": "Foydadan soliqlar chegirgandan so'ng qolgan qismi",
        "3": "Daromaddan ishlab chiqarish harajatlarni ayirgandan qolgan qismi",
        "4": "Daromaddan harajatni ayirgandan№* qolgan qismi",
        "5": "Daromaddan daromad solig’i ayirmasi"
      },
      "87": {
        "0": "2",
        "1":
            "Investitsion qarorlar qabul qilishda quyidagilardan qaysi biri asos bo'lib hisoblanadi?",
        "2": "foizning real stavkasi",
        "3": "foizning nominal stavkasi",
        "4": "soliqlar darajasi",
        "5": "pul taklifi"
      },
      "88": {
        "0": "2",
        "1": "Narx indeksi qanday hisoblanadi?",
        "2":
            "joriy yildagi iste'mol tovarlari narxini bazis yildagi iste'mol tovarlari narxiga taqqoslash orqali",
        "3": "nominal YaMM hajmini real YaMM hajmiga ko'paytmasi olinadi",
        "4": "YaMMdan yillik amortizatsiya summasining ayirmasi",
        "5": "YaMMdan sof eksport ayirmasi"
      },
      "89": {
        "0": "2",
        "1": "Nominal YaIM nima?",
        "2": "joriy narxlarda hisoblangan YaIM",
        "3": "nisbiy narxlarda hisoblangan YaIM",
        "4": "o'zgaruvchan va nisbiy narxlarda hisoblangan YaIM",
        "5": "o'zgaruvchan narxlarda hisoblangan YaIM"
      },
      "90": {
        "0": "2",
        "1": "Iqtisodiy sikl nechta fazadan iborat?",
        "2": "4 ta",
        "3": "2 ta",
        "4": "3 ta",
        "5": "5 ta"
      },
      "91": {
        "0": "2",
        "1":
            "Iqtisodiy siklning inqiroz fazasida yuzaga keladigan ishsizlik qanday nomlanadi?",
        "2": "tsiklik ishsizlik",
        "3": "tabiiy ishsi№*zlik",
        "4": "turg'un ishsizlik",
        "5": "texnologik ishsizlik"
      },
      "92": {
        "0": "2",
        "1":
            "Mamlakatning iqtisodiy o'sish sur'atini tavsiflaydigan ko'rsatkichlar:",
        "2": "real YaIM va aholi jon boshiga real YaIMning o'sishi",
        "3": "yalpi talab va yalpi taklif",
        "4": "Iste'mol va jamg'arma",
        "5": "investisiyalar miqdori"
      },
      "93": {
        "0": "2",
        "1":
            "Ishsizlik darajasi bilan YaIM o'rtasidagi bog'liqlikni ifodalovchi qonun qanday nomlanadi?",
        "2": "Ouken qonuni",
        "3": "Fillips qonuni",
        "4": "Laffer qonuni",
        "5": "Nufus qonuni"
      },
      "94": {
        "0": "2",
        "1": "Foiz stavkasi nima asosida belgilanadi?",
        "2": "muomaladagi pul massasi asosida",
        "3": "jamg'arma",
        "4": "depozitlar",
        "5": "kreditlar"
      },
      "95": {
        "0": "2",
        "1":
            "X tasodifiy o'zgaruvchini ifodalanishining universal usuli uning ... taqsimotini shaklida ifodalanishidir",
        "2": "funktsiya",
        "3": "qator",
        "4": "zichlik",
        "5": "poligon"
      },
      "96": {
        "0": "2",
        "1": "Diskret tasodifiy o'zgaruvchi - ...",
        "2": "bu alohida, izolyatsiya qilingan qiymatlarni oladi",
        "3": "Sonli oraliqni to’ldiruvchi qiymatlar to'plami",
        "4": "taqsimot zichligi bilan beriladi",
        "5": "taqsimot ko'pburchagi bilan beriladi"
      },
      "97": {
        "0": "2",
        "1": "Juftlangan chiziqli regressiya modelida Y ...",
        "2": "Tasodifiy emas",
        "3": "O’zgarmas",
        "4": "Tasodifiy",
        "5": "musbat"
      },
      "98": {
        "0": "2",
        "1":
            "Geometrik jihatdan tasodifiy miqdorning matematik kutilishi taqsimotning ...",
        "2": "Markazi",
        "3": "markaz bo'yicha dispersiya o'lchovi",
        "4": "nosimmetrikning normadan og'ish o'lchovi",
        "5": "simmetriyadan og'ish o'lchovi"
      },
      "99": {
        "0": "2",
        "1":
            "Agar tasodifiy o'zgaruvchilar mustaqil bo'lsa, u holda nazariy kovariatsiya ...",
        "2": "nolga teng",
        "3": "musbat",
        "4": "manfiy",
        "5": "nolga teng emas"
      },
      "100": {
        "0": "2",
        "1":
            "Tanlangan regressiya tenglamasidagi regressiya koeffitsientlari (a, b) ... usul(lar) bilan aniqlanadi.",
        "2": "eng kichik kvadratlar",
        "3": "vaznli eng kichik kvadratlar",
        "4": "daqiqalar",
        "5": "gradient"
      },
      "101": {
        "0": "2",
        "1":
            "Vaqt qatorlari - bu vaqt ichida ... moment(lar)ini tavsiflovchi ma'lumotlar",
        "2": "bir obyektning har xil",
        "3": "turli xil obyektlarning aynan bir",
        "4": "bitta obyektning bitta",
        "5": "turli xil ob'ektlarning turli"
      },
      "102": {
        "0": "2",
        "1": "Statistik munosabat ... .",
        "2":
            "tasodifiy omi№*llar ta'sirini hisobga olmasdan o'zgaruvchilar munosabati",
        "3": "o'zgaruvchilarga tegishli aniq formula",
        "4":
            "tasodifiy omillar ta'sirida qo'shiladigan o'zgaruvchilar munosabati",
        "5": "o'zgaruvchilarning har qanday bog'lanishi"
      },
      "103": {
        "0": "2",
        "1":
            "X tasodifiy miqdorni ifodalanishining universal usuli uning taqsimot … orqali ifodalanishidir",
        "2": "funksiyasi",
        "3": "qatori",
        "4": "zichlik",
        "5": "ko‘pburchak"
      },
      "104": {
        "0": "2",
        "1": "Diskret tasodifiy miqdor ...",
        "2": "alohida, izolyatsiya qilingan qiymatlarni oladi",
        "3": "qiymatlar to'plami raqamli bo'shliqni to'ldiradi",
        "4": "taqsimot koʻpburchagi bilan berilgan",
        "5": "taqsimot zichligi bilan beriladi"
      },
      "105": {
        "0": "2",
        "1": "Namuna o‘rtachasi...",
        "2": "umumiy oʻrtachaning xolis baholovchisi",
        "3": "umumiy dispersiyani xolis baholash",
        "4": "umumiy o'rtacha qiymatning noxolis bahosi",
        "5": "umumiy dispersiyani noxolis baholash"
      },
      "106": {
        "0": "2",
        "1": "Namuna dispersiyasi ...",
        "2": "umumiy dispersiyani xolis baholovchisi",
        "3": "umumiy oʻrtachaning xolis baholovchisi",
        "4": "umumiy dispersiyani noxolis baholovchisi",
        "5": "umu№*miy oʻrtacha qiymatning noxolis bahosi"
      },
      "107": {
        "0": "2",
        "1": "Juftlangan chiziqli regressiya modelida Y qiymati ...",
        "2": "tasodifiy emas",
        "3": "oʻzgarmas",
        "4": "tasodifiy",
        "5": "musbat"
      },
      "108": {
        "0": "2",
        "1": "Juftlangan chiziqli regressiya modelida A qiymati ...",
        "2": "oʻzgarmas",
        "3": "tasodifiy",
        "4": "tasodifiy boʻlmagan",
        "5": "Musbat"
      },
      "109": {
        "0": "2",
        "1":
            "Tasodifiy hadning normal taqsimlanishi haqidagi faraz ... uchun zarurdir.",
        "2":
            "regressiya parametrlarining ahamiyatini sinash va ularning intervalini baholash",
        "3": "determinatsiya koeffitsientini hisoblash",
        "4": "determinatsiya koeffitsientining ahamiyatini tekshirish",
        "5": "regressiya parametrlarini hisoblash"
      },
      "110": {
        "0": "2",
        "1": "Ekonometrika - bu ... oʻrganadigan fan.",
        "2":
            "matematik statistika usullari orqali iqtisodiyotdagi qonuniyatlar va oʻzaro bogʻliqliklarni",
        "3":
            "iqtisodiy ko‘rsatkichlar xossalari haqidagi farazlarni tekshirishni",
        "4": "iqtisodiy qonunlarning empirik kelib chiqishini",
        "5": "iqtisodiy modellarni qurishni"
      },
      "111": {
        "0": "2",
        "1": "M(X) va D(X) ...",
        "2": "umu№*miy to’plamning sonli xarakteristikalari",
        "3": "chiziqli funksiyalar",
        "4": "xususiyatlari",
        "5": "chiziqli boʻlmagan funksiyalar"
      },
      "112": {
        "0": "2",
        "1": "Qanday holatda bog’liqlik korrelyatsion deb aytiladi?",
        "2":
            "agar omilning har bir qiymatiga natijali belgining ko’plab qiymatlari, ya’ni muayyan statistik taqsimot mos kelsa",
        "3":
            "agar omilning har bir qiymatiga natijaviy omilning muayyan tasodifiy qiymati mos kelsa",
        "4":
            "agar omilning har bir qiymatiga natijaviy omil qiymatlarining butun bir taqsimoti mos kelsa",
        "5":
            "agar omilli belgining har bir qiymatiga natijali belgining muayyan belgilangan qiymati mos kelsa"
      },
      "113": {
        "0": "2",
        "1": "Standart ahamiyatlilik darajalari …% va …% ga teng",
        "2": "5 / 1",
        "3": "4 / 3",
        "4": "3 / 2",
        "5": "10 / 0.1"
      },
      "114": {
        "0": "2",
        "1":
            "Agar mezonning kuzatilgan qiymati kritik qiymatdan katta bo'lsa, u holda gipoteza ...",
        "2": "H0 rad etiladi",
        "3": "H1 rad etiladi",
        "4": "H1 qabul qilinadi",
        "5": "H0 qabul qilinadi"
      },
      "115": {
        "0": "2",
        "1": "Alohida korrelyatsiya deganda nima tushuniladi?",
        "2":
            "boshqa omillar qiymati№* qat’iy belgilangan hollarda natijaviy omil va bitta omil o’rtasidagi bog’liqlik",
        "3":
            "natijaviy omil hamda tadqiqotga kiritilgan ikki yoki undan ko’p omillarning bog’liqlikdagi",
        "4":
            "ikkita omil (natijaviy va omillar yoki ikkita omil) o’rtasidagi bog’liqlik",
        "5": "sifatiy omillar o’rtasidagi bog’liqlik"
      },
      "116": {
        "0": "2",
        "1": "Statistik bogliqlik deb ... aytiladi.",
        "2":
            "tasodifiy omillar ta'sirini hisobga olmasdan o'zgaruvchilar munosabatiga",
        "3": "o'zgaruvchilarga tegishli aniq formula",
        "4":
            "tasodifiy omillar ta'sirida qo'shiladigan o'zgaruvchilar munosabatiga",
        "5": "o'zgaruvchilarning har qanday bog'lanishiga"
      },
      "117": {
        "0": "2",
        "1":
            "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar oʻrtasida bogʻlanishning korrelyatsion shaklini aniqlash usuli bu -",
        "2": "Eng kichik kvadratlar usuli",
        "3": "Eng kata kvadratlar usuli",
        "4": "Interpolyatsiya",
        "5": "Ekstrapolyatsiya"
      },
      "118": {
        "0": "2",
        "1":
            "Hodisa yoki jarayonlarning kelgusidagi mumkin bolgan holatini ilmiy asoslangan holda bilish bu –",
        "2": "Prognozlash",
        "3": "Interpo№*lyatsiya",
        "4": "oʻrtachasini hisoblash",
        "5": "Avtokorrelyatsiya"
      },
      "119": {
        "0": "2",
        "1": "Belgi bu –",
        "2": "bu toʻplam birligining alomatlari, xislati va h.k.",
        "3": "Barcha toʻplamlar uchun umumiy xossalar",
        "4": "Elementlarning alohida qismi",
        "5": "Toʻplamning alohida qismi"
      },
      "120": {
        "0": "2",
        "1":
            "Omil belgining 1% ga o‘zgarganda natija qancha foizga o‘zgarishini aniqlaydigan koeffitsient – ….",
        "2": "Elastiklik koeffitsienti",
        "3": "Ta’sir koeffitsienti",
        "4": "Xususiy regressiya koeffitsienti",
        "5": "Korrelyatsiya koeffitsienti"
      },
      "121": {
        "0": "2",
        "1": "Umumiy muvozanatlik bu –",
        "2":
            "barcha bozorlarning o‘zaro bir-biriga ta’siri natijasida o‘rnatiladigan muvozanatlik. Barcha bozorlarni muvozanat holatda bo‘lishi. Bunda biror bozorda muvozanatlik buzulsa boshqa bozorlarda ham muvozanatlilik buziladi",
        "3": "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol",
        "4":
            "ishlab chiqarishda foydalaniladigan resurslar miqdorini oshirish yoki texnologiyani takomillashtirish orqali jamiyatning ishlab chiqarish imkoniyatlarini №*kengaytiradi",
        "5":
            "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladi"
      },
      "122": {
        "0": "2",
        "1":
            "… – taqsimot bo‘yicha cho‘ziluvchanlik yoki yassilik bo‘lib, uning me‘yori to‘rtinchi momentning to‘rtinchi darajali kvadratik o‘rtacha tafovutga nisbatidan iborat.",
        "2": "Ekstsess",
        "3": "Styudentning t mezoni",
        "4": "Pirson mezoni",
        "5": "Darbin-Uotsonning J-mezoni"
      },
      "123": {
        "0": "2",
        "1":
            "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar o‘rtasida bog‘lanishning korrelyatsion shaklini aniqlash usuli –",
        "2": "Eng kichik kvadratlar usuli",
        "3": "Eng katta kvadratlar usuli",
        "4": "To’g’ri chiziqlar usuli",
        "5": "Korrelyatsiya usuli"
      },
      "124": {
        "0": "2",
        "1": "Eng kichik kvadratlar usuli –",
        "2":
            "Dinamik qatorlarni tekislash hamda tasodifiy miqdorlar o‘rtasida bog‘lanishning korrelyatsion shaklini aniqlash usulidir.",
        "3":
            "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
        "4":
            "keyingi№* darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyadir.",
        "5":
            "barcha o’zgaruvchilar o’rtasidagi bog’liqlikning jipsligini baholaydi"
      },
      "125": {
        "0": "2",
        "1": "Vaqtli qatorlarni tekislashda qaysi usullardan foydalaniladi?",
        "2": "Berilgan barcha usullar",
        "3": "O‘rtacha sirg‘aluvchilar usuli",
        "4": "Eng kichik kvadratlar usuli",
        "5": "Eksponetsial tekislash usuli"
      },
      "126": {
        "0": "2",
        "1": "Chiziqsiz ko‘rinishdagi ekonometrik model –",
        "2":
            "Parabola, giperbola, darajali funksiya, ko‘rsatkichli funksiya, trigonometrik funksiya ko‘rinishida bo‘lishi mumkin",
        "3":
            "Chiziqli, parabola, giperbola, darajali funksiya ko‘rinishida bo‘lishi mumkin",
        "4":
            "Fure qatorlari, chiziqli, parabola, giperbola, darajali funksiya ko‘rinishida bo‘lishi mumkin",
        "5": "Fure qatorlari, chiziqli, parabola ko‘rinishida bo‘lishi mumkin"
      },
      "127": {
        "0": "2",
        "1": "Endogen o‘zgaruvchi – bu:",
        "2": "Model ichida aniqlanadi",
        "3": "Model tashqarisid№*a aniqlanadi",
        "4": "Modelga kiritiladigan qo‘shimcha o‘zgaruvchi",
        "5": "Modelga ta’sir ko‘rsatmaydigan o‘zgaruvchi"
      },
      "128": {
        "0": "2",
        "1":
            "Ekonometrik modelda qatnashadigan omillarni tanlashda qo‘llanadigan usulni ko‘rsating.",
        "2": "Korrelyatsion tahlil usuli",
        "3": "Ekstrapolyatsiya usuli",
        "4": "Prognoz usuli",
        "5": "Regression tahlil usuli"
      },
      "129": {
        "0": "2",
        "1":
            "To‘plam ko‘rsatkichlarini topishda qatnashadigan hech qanday bog‘lovchi shartlarga ega bo‘lmagan erkin miqdorlar soni –",
        "2": "Erkinlik darajalar soni",
        "3": "Korrelyatsiya soni",
        "4": "Uzluksiz tasodifiy miqdor",
        "5": "Tasodifiy miqdor"
      },
      "130": {
        "0": "2",
        "1": "Erkinlik darajalar soni – …",
        "2":
            "to‘plam ko‘rsatkichlarini topishda qatnashadigan hech qanday bog‘lovchi shartlarga ega bo‘lmagan erkin miqdorlar sonidir.",
        "3":
            "muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi.",
        "4":
            "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oraliqni tashkil№* qiluvchi miqdor",
        "5": "to„plamda kuzatish talab etiladigan elementlar sonidir"
      },
      "131": {
        "0": "2",
        "1": "Qanday holatda kointegratsiya xodisasi ishtirok etadi?",
        "2":
            "agar vaqt qatori uzoq davom etadigan vaqt oralig’ida doimiy dispersiyaga ega bo’lsa",
        "3":
            "agar vaqt qatorida taxlil etilayotgan ko’rsatkichning doimiy o’rtacha sur’ati ishtirok etsa",
        "4":
            "agar vaqt qatorida ikki va undan ortiq darajalar tendensiyasi mos kelsa (yoki qarama-qarshi yo’nalishga ega bo’lsa)",
        "5":
            "agar vaqt qatorida vaqt qatori darajalari o’zgarishining doimiy zanjirli sur’ati ishtirok etsa"
      },
      "132": {
        "0": "2",
        "1":
            "Bog’langan vaqt qatorlarining darajalari o’rtasidagi bog’liqlikni o’rganish qanday usul yordamida o’tkaziladi?",
        "2": "ketma-ket ayirmalarni korrelyatsiyalash",
        "3": "dinamika qatori darajalarini korrelyatsiyalash",
        "4": "xaqiqiy darajalarning trenddan og’ishlarini korrelyatsiyalash",
        "5": "avtoregression o’zgartirishlarni korrelyatsiyalash"
      },
      "133": {
        "0": "2",
        "1":
            "… – talab va taklifga ta’sir qilu№*vchi omillarning o‘zgarishi natijasida ularni qanchaga o‘zgarishi tushuniladi",
        "2": "Elastiklik",
        "3": "Talab funksiyasi",
        "4": "Taklif funksiyasi",
        "5": "Chiziqlilik koeffitsienti"
      },
      "134": {
        "0": "2",
        "1":
            "… – muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi.",
        "2": "Xususiy regressiya koeffitsienti",
        "3": "Determinatsiya koeffitsienti",
        "4": "Korelyatsiya koeffitsienti",
        "5": "Tanlanma koeffitsienti"
      },
      "135": {
        "0": "2",
        "1":
            "… – bu shunday to‘liq bog‘lanishki, unda bir belgi yoki belgilar o‘zgarish qiymatiga har doim natijaning ma’lum me’yorda o‘zgarishi mos keladi.",
        "2": "Funksional bog‘lanish",
        "3": "Korrelyatsion bog‘lanish",
        "4": "Regression bog‘lanish",
        "5": "Tasodifiy bog‘lanish"
      },
      "136": {
        "0": "2",
        "1": "Uzluksiz tasodifiy miqdor –",
        "2":
            "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oralikni tashkil qiluvchi miqdor",
        "3": "bu alohida, izolyatsiya qilingan qiymatlarni oladi",
        "4": "taqsimot ko‘pburchagi bilan beriladi№*",
        "5":
            "qabul qiladigan chekli qiymatlari sonlar o‘qidagi biror cheksiz oraliqni tashkil qiluvchi miqdor"
      },
      "137": {
        "0": "2",
        "1": "To‘plamda kuzatish talab etiladigan element –",
        "2": "To‘plam birligi",
        "3": "Tanlanma",
        "4": "Bosh to‘plam",
        "5": "Kuzatuv"
      },
      "138": {
        "0": "2",
        "1": "Taqsimot qatorlari bu –",
        "2":
            "to‘plam birliklarini ma’lum belgilar asosida guruhlarga (qismlarga) bo‘linishi",
        "3":
            "to‘plamda kuzatish talab etiladigan elementlardan tuzilgan miqdorlar",
        "4":
            "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oralikni tashkil qiluvchi miqdorlar",
        "5":
            "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatorlari"
      },
      "139": {
        "0": "2",
        "1":
            "Sinov natijasida ro‘y berishi yoki ro‘y bermasligi mumkin bo‘lgan har qanday fakt –",
        "2": "Tasodifiy hodisa",
        "3": "Tasodifiy miqdor",
        "4": "Tanlanma",
        "5": "Tajriba"
      },
      "140": {
        "0": "2",
        "1":
            "Tasodifiy miqdor qabul qilishi mumkin bo‘lgan qiymatlari bilan ularning mos ehtimollarini bog‘laydigan biror munosabat …… deyiladi.",
        "2": "Ta№*sodifiy miqdorning taqsimot qonuni",
        "3": "Korrelyatsion-regression model",
        "4": "Multikollinearlik",
        "5": "Stoxastik yoki statistik qonunlar"
      },
      "141": {
        "0": "2",
        "1": "Tasodifiy miqdorning taqsimot qonuni –",
        "2":
            "tasodifiy miqdor qabul qilishi mumkin bo‘lgan qiymatlari bilan ularning mos ehtimollarini bog‘laydigan biror munosabat",
        "3":
            "bu bir turli hodisalarni ommaviy takrorlanishida namoyon bo‘ladigan qonunlar",
        "4":
            "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
        "5":
            "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin"
      },
      "142": {
        "0": "2",
        "1":
            "Sinov natijasida, avvaldan e’tiborga olib bo‘lmaydigan tasodifga bog‘liq holda, o‘zining mumkin bo‘lgan qiymatlaridan birini qabul qiladigan o‘zgaruvchi bu –",
        "2": "Tasodifiy miqdor",
        "3": "Bosh to‘plam",
        "4": "Tasodifiy hodisa",
        "5": "Tajriba"
      },
      "143": {
        "0": "2",
        "1": "Tasodifiy miqdor bu –",
        "2":
            "sinov natijasida, avvaldan e’tiborga olib bo‘lmaydigan tasodifga bog‘liq hol№*da, o‘zining mumkin bo‘lgan qiymatlaridan birini qabul qiladigan o‘zgaruvchi tushuniladi",
        "3":
            "bu o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementidir.",
        "4":
            "sinov natijasida ro‘y berishi yoki ro‘y bermasligi mumkin bo‘lgan har qanday fakt",
        "5": "o‘rganiladigan ko‘p hajmli birliklar majmuasi"
      },
      "144": {
        "0": "2",
        "1":
            "… – o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementidir.",
        "2": "Tanlanma",
        "3": "Bosh to‘plam",
        "4": "Belgi",
        "5": "To‘plam birligi"
      },
      "145": {
        "0": "2",
        "1": "Tanlanma deganda nima tushuniladi?",
        "2":
            "o‘rganilayotgan to‘plamdan saylab olingan birliklar majmuasidir, ularning har biri ushbu to‘plamning tarkibiy elementi.",
        "3": "to‘plamda kuzatish talab etiladigan element",
        "4":
            "qabul qiladigan cheksiz ko‘p qiymatlari sonlar o‘qidagi biror chekli yoki cheksiz oraliqni tashkil qiluvchi miqdor",
        "5": "o‘rganiladigan ko‘p hajmli birliklar majmuasi"
      },
      "146": {
        "0": "2",
        "1":
            "Talabga ta’sir diluvchi omillar miqdori bilan talab miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik bog‘liqlik",
        "2": "Talab funksiyasi",
        "3": "Talab elastikligi",
        "4": "Taklif funksiyasi",
        "5": "Ehtiyojlar funksiyasi"
      },
      "147": {
        "0": "2",
        "1": "Talab bu –",
        "2":
            "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
        "3":
            "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
        "4":
            "Iste’mol savatchasidagi mahsulotlarni xarid qilish uchun sarflanadigan mablag‘",
        "5": "Aholining tovar va xizmatlarga bo’lgan ehtiyoji"
      },
      "148": {
        "0": "2",
        "1":
            "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori bu –",
        "2": "Talab",
        "3": "Ehtiyojlar",
        "4": "Taklif",
        "5": "Xaridlar"
      },
      "149": {
        "0": "2",
        "1": "Talab bu –",
        "2":
            "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
        "3":
            "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
        "4":
            "Iste’mol savatchasidagi mahsulotlarni xarid qilish uchun sarflanadigan mablag‘",
        "5": "Aholining tovar va xizmatlarga bo’lgan ehtiyoji"
      },
      "150": {
        "0": "2",
        "1":
            "Berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori bu –",
        "2": "Talab",
        "3": "Ehtiyojlar",
        "4": "Taklif",
        "5": "Xaridlar"
      },
      "151": {
        "0": "2",
        "1":
            "Ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori bu –",
        "2": "Taklif",
        "3": "Talab",
        "4": "Ishlab chiqarish funksiyasi",
        "5": "Narx funksiyasi"
      },
      "152": {
        "0": "2",
        "1": "Taklif bu –",
        "2":
            "bu ishlab chiqaruvchilar va sotuvchilar tomonidan berilgan narxlarda sotilishi mumkin bo‘lgan tovarlar miqdori",
        "3":
            "berilgan narxlarda xaridorlar tomonidan sotib olinishi mumkin bo‘lgan tovarlar miqdori",
        "4":
            "barcha bozorlarning o‘zaro bir-biriga ta’siri natijasida o‘rnatiladigan muvozanat",
        "5":
            "Narxning bir birlik o‘zgarishiga talabning necha birlik o‘zgarishi to‘g‘ri kelishi"
      },
      "153": {
        "0": "2",
        "1":
            "Bir turli hodisalarni ommaviy takrorlanishida namoyon bo‘ladigan qonunlar –",
        "2": "Stoxastik yoki statistik qonunlar",
        "3": "Funksional qonunlar",
        "4": "Tsiklik qonun qoidalar",
        "5": "Dinamik qonunlar"
      },
      "154": {
        "0": "2",
        "1":
            "Tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan ayt№*ilgan ilmiy taxmin –",
        "2": "Statistik gipoteza",
        "3": "Asosiy model",
        "4": "Alternativ gipoteza",
        "5": "Ikkilamchi gipoteza"
      },
      "155": {
        "0": "2",
        "1": "Statistik gipoteza bu –",
        "2":
            "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
        "3":
            "hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
        "4":
            "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin",
        "5": "hech narsaga asoslanmagan taxmin"
      },
      "156": {
        "0": "2",
        "1":
            "Natijaviy belgiga ta‟sir etuvchi omillarning samaradorligini aniqlab beruvchi usul –",
        "2": "Regression tahlil",
        "3": "Korrelyatsion tahlil",
        "4": "Variatsion tahlil",
        "5": "Dispersion tahlil"
      },
      "157": {
        "0": "2",
        "1": "Regression tahlil bu –",
        "2":
            "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
        "3":
            "hodisalar orasidagi bog‘lanish zichlik darajasini baholash usulidir",
        "4": "vaqtga bog’liq bo’lmagan o’zgarishlarni ifodalaydigan usul",
        "5":
            "vaqtli qatorlard№*a avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich"
      },
      "158": {
        "0": "2",
        "1":
            "Umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik –",
        "2": "multikollinearlikdir",
        "3": "funksional bog’liqlikdir",
        "4": "statistik bog’liqlikdir",
        "5": "avtokorrelyatsiya"
      },
      "159": {
        "0": "2",
        "1": "Multikollinearlik bu –",
        "2":
            "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
        "3":
            "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
        "4": "natijaviy belgiga ta’sir etuvchi omillarning samaradorligi",
        "5":
            "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir."
      },
      "160": {
        "0": "2",
        "1":
            "Modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
        "2": "Modelning adekvatligi",
        "3": "Modelning murakkabligi",
        "4": "Modelning informativligi",
        "5": "Modelning to’liqligi"
      },
      "161": {
        "0": "2",
        "1": "Modelning adekvatligi –",
        "2":
            "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
        "3": "model№* formulalarining to’g’ri berilganligi",
        "4": "modellashtirilayotgan obyektning murakkablik darajasi",
        "5": "model turini aniqlash usulining ketma-ketligi"
      },
      "162": {
        "0": "2",
        "1": "Model –",
        "2":
            "lotincha modulus so‘zidan olingan bo‘lib, o‘lchov, me’yor degan ma’nolarni anglatadi",
        "3":
            "lotincha modelus so‘zidan olingan bo‘lib, nusxa ko’chirish degan ma’noni anglatadi",
        "4":
            "lotincha madelus so‘zidan olingan bo‘lib, kishiklashtirish degan ma’noni anglatadi",
        "5":
            "lotincha modolus so‘zidan olingan bo‘lib, chegara, masofa degan ma’nolarni anglatadi"
      },
      "163": {
        "0": "2",
        "1": "To‘plamda eng ko‘p uchraydigan belgi qiymati – … deb nomlanadi.",
        "2": "Moda",
        "3": "Meidana",
        "4": "O‘rta arifmetik qiymat",
        "5": "Matematik kutilma"
      },
      "164": {
        "0": "2",
        "1": "Moda bu –",
        "2": "to‘plamda eng ko‘p uchraydigan belgi qiymatidir",
        "3": "to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
        "4": "to‘plamdagi belgilar qiymatlarining o‘rta arifmetik qiymati",
        "5": "to‘plamdagi eng katta va eng kishik qiymatlar farqidir"
      },
      "165": {
        "0": "2",
        "1": "To‘plamni teng ikki qismga bo‘luvchi belgi qiymati –",
        "2": "Mediana",
        "3": "Moda",
        "4": "O‘rtacha",
        "5": "Matematik kutilma"
      },
      "166": {
        "0": "2",
        "1": "Mediana bu –",
        "2": "to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
        "3": "to‘plamda eng ko‘p uchraydigan belgi qiymatidir",
        "4": "to‘plamdagi belgilar qiymatlarining o‘rta arifmetik qiymati",
        "5": "to‘plamdagi eng katta va eng kishik qiymatlar farqidir"
      },
      "167": {
        "0": "2",
        "1":
            "Ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlar –",
        "2": "mavsumiy tebranish",
        "3": "trend",
        "4": "bozor muvozanatining buzilishi",
        "5": "trenddagi o’zgarishlar"
      },
      "168": {
        "0": "2",
        "1": "Mavsumiy tebranish –",
        "2":
            "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
        "3": "har qanday sabablardan kelib chiqadigan tebranishlar",
        "4": "makonga bog‘liq bo‘lgan tebranishlar",
        "5": "barcha tsiklik tebranishlar"
      },
      "169": {
        "0": "2",
        "1": "Korrelyatsion tahlil –",
        "2":
            "hodisalar orasidagi bog‘lanish№* zichlik darajasini baholash usulidir.",
        "3":
            "natijaviy belgiga ta’sir etuvchi omillarning samaradorligini aniqlab beruvchi usul.",
        "4":
            "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
        "5": "vaqtga bog’liq bo’lmagan o’zgarishlarni ifodalaydigan usul"
      },
      "170": {
        "0": "2",
        "1":
            "O‘rganilayotgan hodisalar orasidagi bog‘lanishni natijaviy belgi bilan muhim omillar o‘rtasidagi ishonchli miqdoriy nisbatlari –",
        "2": "Korrelyatsion-regression model",
        "3": "Variatsiya",
        "4": "Dispersiya",
        "5": "Iqtisodiy o’sish modeli"
      },
      "171": {
        "0": "2",
        "1": "Korrelyatsion-regression model –",
        "2":
            "bu o‘rganilayotgan hodisalar orasidagi bog‘lanishni natijaviy belgi bilan muhim omillar o‘rtasidagi ishonchli miqdoriy nisbatlar",
        "3":
            "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
        "4":
            "bu shunday to‘liq bog‘lanishki, unda bir belgi yoki belgilar o‘zgarish qiymatiga har doim natijaning ma’lum me’yorda o‘zgarishi mos keladi.",
        "5": "chiziqli va №*kvadratik bog‘lanishlar"
      },
      "172": {
        "0": "2",
        "1":
            "Omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladigan to‘liqsiz bog‘lanish bu –",
        "2": "Korrelyatsion bog‘lanish",
        "3": "Regression bog‘lanish",
        "4": "Kovariatsion bog‘lanish",
        "5": "Kollinear bog‘lanish"
      },
      "173": {
        "0": "2",
        "1": "Korrelyatsion bog‘lanish bu –",
        "2":
            "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xil qiymatlari mos keladi",
        "3":
            "umumiy natijaga birgalikda ta’sir etuvchi omillar o‘rtasidagi zich korrelyatsion bog‘liqlik.",
        "4":
            "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
        "5": "bir o‘zgaruvchining ikkinchisiga chiziqli bog‘lanishi"
      },
      "174": {
        "0": "2",
        "1":
            "Iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
        "2": "Kobb-Duglas ishlab chiqarish funktsiyasi",
        "3": "Ishlab chiqarish imkoniyatlari funktsiyasi",
        "4": "Fisher ishla№*b chiqarish funktsiyasi",
        "5": "Populyatsiya funktsiyasi"
      },
      "175": {
        "0": "2",
        "1": "Kobb-Duglas ishlab chiqarish funktsiyasi –",
        "2":
            "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan darajali ko‘rinishidagi funktsiya.",
        "3":
            "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan logarifmik ko‘rinishidagi funktsiya.",
        "4":
            "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan sinusoidal ko‘rinishidagi funktsiya.",
        "5":
            "iqtisodiyot rivojlanishini tahlil qilishda foydalaniladigan chiziqli ko‘rinishidagi funktsiya."
      },
      "176": {
        "0": "2",
        "1":
            "Ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi sarflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik funktsiya –",
        "2": "Ishlab chiqarish funksiyasi",
        "3": "Taklif funksiyasi",
        "4": "Ishlab chiqarish imkoniyatlari egrisi",
        "5": "Bozor muvozanati funksiyasi"
      },
      "177": {
        "0": "2",
        "1": "Ishlab chiqarish funktsiyasi …",
        "2":
            "ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi s№*arflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik funktsiya",
        "3":
            "Vaqt davomida ishlab chiqarilgan mahsulot hajmining o’zgarishini ifodalovchi matematik funktsiya",
        "4":
            "Ishlab chiqarish xarajatlarining o’zgarishini ifodalovchi matematik funksiya",
        "5":
            "taklifga ta’sir qiluvchi omillar miqdori bilan taklif miqdori o‘rtasidagi bog‘liqlikni ifodalovchi matematik formula"
      },
      "178": {
        "0": "2",
        "1":
            "Iqtisodiy obyektlarning soddalashtirilgan nusxasi nima deb ataladi?",
        "2": "Iqtisodiy model",
        "3": "Ishlab chiqarish funksiyasi",
        "4": "Iqtisodiy jarayon",
        "5": "Bozor munosabatlari"
      },
      "179": {
        "0": "2",
        "1": "Iqtisodiy modelning umumiy ta’rifini belgilang.",
        "2": "iqtisodiy obyektlarning soddalashtirilgan nusxasi",
        "3": "jarayonlarning matematik formulalar bilan berilgan nusxasi",
        "4": "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi ifoda",
        "5":
            "faqat ishlab chiqarilgan mahsulot miqdori bilan shu mahsulotni ishlab chiqarishdagi sarflangan ishlab chiqarish omillari miqdori o‘rtasidagi bog‘liql№*ikni ifodalovchi matematik funktsiya"
      },
      "180": {
        "0": "2",
        "1":
            "Qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachasi – …",
        "2": "Dispersiya",
        "3": "Variatsiya",
        "4": "Variatsiya kengligi",
        "5": "Kutilma"
      },
      "181": {
        "0": "2",
        "1": "Dispersiya bu –",
        "2":
            "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
        "3":
            "ayrim fasl va oylarda ko‘p yillik qatorlarda muntazam ravishda kuzatiladigan barqaror tebranishlardir",
        "4": "bu to‘plamni teng ikki qismga bo‘luvchi belgi qiymatidir",
        "5":
            "taqsimot qatorining eng katta va eng kichik variantalari orasidagi farqdir"
      },
      "182": {
        "0": "2",
        "1":
            "Hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori bu –",
        "2": "Dinamik qator",
        "3": "Statik qator",
        "4": "O‘zgarmas qator",
        "5": "Belgilar qatori"
      },
      "183": {
        "0": "2",
        "1": "Dinamik qator –",
        "2":
            "bu hodisani vaqt bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori",
        "3":
            "bu hodisa№*ni vaqt bo‘yicha o‘zgarmaydigan kattaliklarni ko‘rsatuvchi sonlar qatori",
        "4":
            "bu hodisani koordinatalar bo‘yicha o‘zgarishini ko‘rsatuvchi sonlar qatori",
        "5":
            "bu hodisani koordinaralar bo‘yicha o‘zgarmas qiymatlarini ko‘rsatuvchi sonlar qatori"
      },
      "184": {
        "0": "2",
        "1":
            "Natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadigan koeffitsient –",
        "2": "Determinatsiya koeffitsienti",
        "3": "Kovariatsiya koeffitsienti",
        "4": "Korrelyatsiya koeffitsienti",
        "5": "Regressiya koeffitsienti"
      },
      "185": {
        "0": "2",
        "1": "Determinatsiya koeffitsienti …",
        "2":
            "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadi",
        "3":
            "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
        "4":
            "Dinamik qatorlardagi o'rtacha qiymatlarni aniqlash uchun ishlatiladi",
        "5":
            "Omillarning o'rtacha kvadrat chetlanishini aniqlash uchun foydalaniladi"
      },
      "186": {
        "0": "2",
        "1":
            "Vaqtli qatorlarda avtokorrelyatsiyani a№*niqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
        "2": "Darbin-Uotson mezoni",
        "3": "Xi kvadrat mezoni",
        "4": "Styudent mezoni",
        "5": "Fisher mezoni"
      },
      "187": {
        "0": "2",
        "1": "Darbin-Uotson mezoni …",
        "2":
            "vaqtli qatorlarda avtokorrelyatsiyani aniqlash uchun qo‘llaniladigan shartli ko‘rsatkich",
        "3":
            "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta‘siri ostida vujudga kelishini ko‘rsatadi",
        "4":
            "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
        "5":
            "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishini tekshiradi"
      },
      "188": {
        "0": "2",
        "1":
            "Taqsimot qatorining eng katta va eng kichik variantalari orasidagi farq … deyiladi.",
        "2": "Variatsiya kengligi",
        "3": "Tanlanma yoyilmasi",
        "4": "Dispersiya",
        "5": "Mediana"
      },
      "189": {
        "0": "2",
        "1": "Variatsiya kengligi –",
        "2":
            "taqsimot qatorining eng katta va eng kichik variantalari orasidagi farqdir",
        "3":
            "taqsimot qatorining eng katta va eng kichik variantalari yig‘indisidir",
        "4":
            "taqsimot qatorini№*ng eng katta va eng kichik variantalari ko‘paytmasidir",
        "5":
            "taqsimot qatorining eng katta va eng kichik variantalari bo‘linmasidir"
      },
      "190": {
        "0": "2",
        "1":
            "Qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligi …dir.",
        "2": "Variatsiya",
        "3": "Dispersiya",
        "4": "Kovariatsiya",
        "5": "Regressiya"
      },
      "191": {
        "0": "2",
        "1": "Variatsiya bu –",
        "2":
            "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
        "3":
            "natijaviy belgi o‘zgaruvchanligining qaysi qismi X-omil ta’siri ostida vujudga kelishini ko‘rsatadi",
        "4":
            "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
        "5":
            "muayyan omilning natijaviy belgi variatsiyasiga ta’sirini omillar o‘zaro bog‘lanishidan «tozalangan» holda o‘lchaydi."
      },
      "192": {
        "0": "2",
        "1": "O‘rganiladigan ko‘p hajmli birliklar majmuasi – … dir.",
        "2": "Bosh to‘plam",
        "3": "Tanlanma",
        "4": "Ikkilamchi to‘plam",
        "5": "Tasodifiy miqdor"
      },
      "193": {
        "0": "2",
        "1": "Bosh to‘plam bu –",
        "2": "o‘rganiladigan ko‘p hajmli birliklar majmuasidir.",
        "3": "barcha elementlarni o‘z ichiga olgan to‘plam",
        "4": "umuman elementlari mavjud bo‘lmagan to‘plam",
        "5":
            "bir nechta to‘plamlar kesishmasidan tashkil topgan to‘plamlar majmuasi"
      },
      "194": {
        "0": "2",
        "1":
            "Bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol … deyiladi",
        "2": "Bozor muvozanati",
        "3": "Bozor to‘yinishi",
        "4": "Bozor qonuni",
        "5": "Kelishuv"
      },
      "195": {
        "0": "2",
        "1": "Bozor muvozanati bu –",
        "2": "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol",
        "3":
            "bozorda taklif miqdorining talab miqdoridan katta teng bo‘lgan holi.",
        "4": "bozorda taklif miqdorining talab miqdoridan kam bo‘lgan holi.",
        "5": "bozorda taklif miqdorining talab miqdoriga teng bo‘lgan hol"
      },
      "196": {
        "0": "2",
        "1": "Belgi bu –",
        "2": "bu to‘plam birligining alomatlari, xislati va h.k.",
        "3": "o‘rganiladigan ko‘p hajmli birliklar majmuasidir",
        "4":
            "modelning modellashtirilayotgan obyekt yoki jarayonga mos kelishi",
        "5":
            "vaqtli qatorlarda avtokorrelyatsiyani aniqlash u№*chun qo‘llaniladigan shartli ko‘rsatkich"
      },
      "197": {
        "0": "2",
        "1": "Prognozlash bu –",
        "2":
            "hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
        "3":
            "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
        "4":
            "jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslanmagan holda bilishga harakat qilish",
        "5":
            "bo‘lib o‘tgan lekin u haqda bizda ma’lumot bo‘lmagan jarayonlarni tahmin qilish usulidir"
      },
      "198": {
        "0": "2",
        "1":
            "Hodisa yoki jarayonlarning kelgusidagi mumkin bo‘lgan holatini ilmiy asoslangan holda bilish",
        "2": "Prognozlash",
        "3": "Taxmin qilish",
        "4": "Fol ochish",
        "5": "Ekstrapolyatsiya"
      },
      "199": {
        "0": "2",
        "1": "Alternativ (muqobil) gipoteza bu –",
        "2":
            "taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin.",
        "3":
            "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lgan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmindir.",
        "4":
            "bu qa№*tor hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
        "5":
            "tanlanma ma’lumotlari asosida tekshirish mumkin bo‘lmagan bosh to‘plam xossasi haqida oldindan aytilgan ilmiy taxmin (faraz)dir."
      },
      "200": {
        "0": "2",
        "1":
            "Taqqoslanayotgan ikkita to‘plam ko‘rsatkichlari orasida muhim farq mavjud deb aytilgan taxmin.",
        "2": "Alternativ (muqobil) gipoteza",
        "3": "Asosiy gipoteza",
        "4": "Dastlabki gipoteza",
        "5": "Yagona gipoteza"
      },
      "201": {
        "0": "2",
        "1": "Avtokorrelyatsiya bu –",
        "2":
            "Keyingi darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyasi",
        "3":
            "bu qator hadlarining tebranuvchanligi, varianta qiymatlarining o‘zgaruvchanligidir.",
        "4":
            "bu qator variantalari qiymatlari bilan ularning arifmetik o‘rtachasi orasidagi tafovutlar kvadratlaridan olingan arifmetik o‘rtachadir",
        "5":
            "bu shunday to‘liqsiz bog‘lanishki, unda omillarning har bir qiymatiga turli zamon va makon sharoitlarida natijaning har xi№*l qiymatlari mos keladi"
      },
      "202": {
        "0": "2",
        "1":
            "Keyingi darajalar bilan oldingilari o‘rtasidagi yoki haqiqiy darajalari bilan tegishli tekislangan qiymatlari o‘rtasidagi farqlar orasidagi korrelyatsiyasi -",
        "2": "Avtokorrelyatsiya",
        "3": "Kovariatsiya",
        "4": "Regressiya",
        "5": "Variatsiya"
      }
    };

    return BlocBuilder<QuestionsListCubit, Map<String, Map<String, String>>>(
      builder: (context, questionList) {
        return BlocBuilder<ChoosenAnswerCubit, int>(
          builder: (context, choosenAnswer) {
            return BlocBuilder<SubmettedButtonCubit, bool>(
              builder: (context, isSubmetted) {
                return BlocBuilder<ResultCubit, int>(
                  builder: (context, result) {
                    return BlocBuilder<RandomListCubit, List<int>>(
                      builder: (context, rngList) {
                        return BlocBuilder<CurrentQuestionCubit, int>(
                          builder: (context, currentQuestion) {
                            return BlocBuilder<QuestionNumberCubit, int>(
                                builder: (context, questionNumber) {
                              if (subject == "operatsion") {
                                context
                                    .read<QuestionsListCubit>()
                                    .changeValue(operatsion);
                              }
                              if (subject == "econometrics") {
                                context
                                    .read<QuestionsListCubit>()
                                    .changeValue(econometrics);
                              }
                              if (subject == "infocom") {
                                context
                                    .read<QuestionsListCubit>()
                                    .changeValue(infocom);
                              }

//widgets-----------------------------------------------------

                              Widget randomAnswer(
                                  BuildContext context, int choosenAnswerID) {
                                return InkWell(
                                  onTap: () {
                                    choosenAnswer = choosenAnswerID;
                                    context
                                        .read<ChoosenAnswerCubit>()
                                        .changeValue(choosenAnswerID);
                                  },
                                  child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                        color: choosenAnswer == choosenAnswerID
                                            ? Colors.black12
                                            : Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(18),
                                      child: Text(
                                        questionList["$questionNumber"]![
                                                "$choosenAnswerID"] ??
                                            "",
                                        style: const TextStyle(fontSize: 16),
                                      )),
                                );
                              }



                                  Widget answersList(BuildContext context, int i) {
                                return Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                      color: questionList["$questionNumber"]![
                                                  "0"] ==
                                              "$i"
                                          ? Colors.green
                                          : choosenAnswer == i
                                              ? Colors.red
                                              : Colors.white54,
                                      border: Border.all(
                                          color: Colors.black12, width: 1),
                                    ),
                                    padding: const EdgeInsets.all(18),
                                    child: Text(
                                      questionList["$questionNumber"]!["$i"] ??
                                          "",
                                      style: const TextStyle(fontSize: 16),
                                    ));
                              }


//widgets----------------------------------------------------

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      width:
                                          MediaQuery.of(context).size.width * 0.92,
                                      child: !isSubmetted
                                          ? SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [

                                                  Center(
                                                    child: Text(
                                                      "${currentQuestion + 1}/20",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    questionList[
                                                                "$questionNumber"]![
                                                            "1"] ??
                                                        "",
                                                    style: const TextStyle(
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  randomAnswer(context, rngList[0]),
                                                  randomAnswer(context, rngList[1]),
                                                  randomAnswer(context, rngList[2]),
                                                  randomAnswer(context, rngList[3]),

                                                ],
                                              ),
                                            )
                                          : Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                               crossAxisAlignment:
                                                    CrossAxisAlignment.center,

                                              children: [

                                                Center(
                                                  child: Text(
                                                    "Question ${currentQuestion + 1}/20",
                                                    style: const TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  questionList["$questionNumber"]![
                                                          "1"] ??
                                                      "",
                                                  style:
                                                      const TextStyle(fontSize: 20),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                answersList(context, rngList[0]),
                                                answersList(context, rngList[1]),
                                                answersList(context, rngList[2]),
                                                answersList(context, rngList[3]),




                                              ],
                                            ),
                                    ),
                                  ),
                                  !isSubmetted? Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .center,
                                      mainAxisSize:
                                      MainAxisSize.max,
                                      children: [

                                        Container(
                                          padding: EdgeInsets.symmetric(vertical: 20),
                                          child: ElevatedButton(
                                              style: ElevatedButton
                                                  .styleFrom(
                                                minimumSize:
                                                 Size(
                                                    MediaQuery.of(context).size.width*0.8, 60),
                                              ),
                                              onPressed: () {
                                                if(choosenAnswer!=8){
                                                  if (choosenAnswer !=
                                                      null) {
                                                    if (questionList[
                                                    "$questionNumber"]![
                                                    "0"] ==
                                                        choosenAnswer
                                                            .toString()) {
                                                      context
                                                          .read<
                                                          ResultCubit>()
                                                          .incrementScore();
                                                    }
                                                  }
                                                  context
                                                      .read<
                                                      SubmettedButtonCubit>()
                                                      .changeValue();
                                                }
                                                else {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please choose an answer"),duration: Duration(seconds: 1),));}
                                              },
                                              child: const Text(
                                                  "Submit")),
                                        ),

                                      ]):  Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [

                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    child: ElevatedButton(
                                    style: ElevatedButton
                                        .styleFrom(
                                    minimumSize:
                                     Size(MediaQuery.of(context).size.width*0.8, 60),
                                    primary: currentQuestion+1==20?Colors.red:Colors.blue,
                                    ),
                                    onPressed: () {
                                    if(choosenAnswer!=8){
                                      if (questionList.length >
                                          questionNumber + 1) {
                                        context
                                            .read<
                                            QuestionNumberCubit>()
                                            .changeValue(Random()
                                            .nextInt(
                                            questionList
                                                .length -
                                                1));
                                        context
                                            .read<
                                            SubmettedButtonCubit>()
                                            .changeValueToFalse();
                                      } else {
                                        Navigator.pop(context);
                                        Navigator
                                            .pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (context) =>
                                                    ResultPage(
                                                      score: result,
                                                    )),
                                                (route) =>
                                            false);
                                      }
                                      context
                                          .read<
                                          ChoosenAnswerCubit>()
                                          .changeValue(0);
                                      choosenAnswer = 0;
                                      if (currentQuestion ==
                                          19) {
                                        Navigator.pop(context);
                                        Navigator
                                            .pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (context) =>
                                                    ResultPage(
                                                      score: result,
                                                    )),
                                                (route) =>
                                            false);
                                      }
                                      context
                                          .read<
                                          ChoosenAnswerCubit>()
                                          .changeValue(0);
                                      choosenAnswer = 0;

                                      rngList.shuffle();
                                      context.read<CurrentQuestionCubit>().changeValue();

                                    }
                                    context.read<ChoosenAnswerCubit>().changeValue(8);
                                    },
                                    child: Text(
                                    currentQuestion + 1 == 20
                                    ? "Finish"
                                        : "Next"),
                                    ),
                                  ),
                                  ]),
                                ],
                              );
                            });
                          },
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
