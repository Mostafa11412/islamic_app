import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/suraScreen.dart';

class Quranscreen extends StatefulWidget {
  const Quranscreen({super.key});

  @override
  State<Quranscreen> createState() => _QuranscreenState();
}

class _QuranscreenState extends State<Quranscreen> {
  List<Map<String, String>> surasName = [
    {"الفاتحه": "7"},
    {"البقرة": "286"},
    {"آل عمران": "200"},
    {"النساء": "176"},
    {"المائدة": "120"},
    {"الأنعام": "165"},
    {"الأعراف": "206"},
    {"الأنفال": "75"},
    {"التوبة": "129"},
    {"يونس": "109"},
    {"هود": "123"},
    {"يوسف": "111"},
    {"الرعد": "43"},
    {"إبراهيم": "52"},
    {"الحجر": "99"},
    {"النحل": "128"},
    {"الإسراء": "111"},
    {"الكهف": "110"},
    {"مريم": "98"},
    {"طه": "135"},
    {"الأنبياء": "112"},
    {"الحج": "78"},
    {"المؤمنون": "118"},
    {"النّور": "64"},
    {"الفرقان": "77"},
    {"الشعراء": "227"},
    {"النّمل": "93"},
    {"القصص": "88"},
    {"العنكبوت": "69"},
    {"الرّوم": "60"},
    {"لقمان": "34"},
    {"السجدة": "30"},
    {"الأحزاب": "73"},
    {"سبأ": "54"},
    {"فاطر": "45"},
    {"يس": "83"},
    {"الصافات": "182"},
    {"ص": "88"},
    {"الزمر": "75"},
    {"غافر": "85"},
    {"فصّلت": "54"},
    {"الشورى": "53"},
    {"الزخرف": "89"},
    {"الدّخان": "59"},
    {"الجاثية": "37"},
    {"الأحقاف": "35"},
    {"محمد": "38"},
    {"الفتح": "29"},
    {"الحجرات": "18"},
    {"ق": "45"},
    {"الذاريات": "60"},
    {"الطور": "49"},
    {"النجم": "62"},
    {"القمر": "55"},
    {"الرحمن": "78"},
    {"الواقعة": "96"},
    {"الحديد": "29"},
    {"المجادلة": "22"},
    {"الحشر": "24"},
    {"الممتحنة": "13"},
    {"الصف": "14"},
    {"الجمعة": "11"},
    {"المنافقون": "11"},
    {"التغابن": "18"},
    {"الطلاق": "12"},
    {"التحريم": "12"},
    {"الملك": "30"},
    {"القلم": "52"},
    {"الحاقة": "52"},
    {"المعارج": "44"},
    {"نوح": "28"},
    {"الجن": "28"},
    {"المزّمّل": "20"},
    {"المدّثر": "56"},
    {"القيامة": "40"},
    {"الإنسان": "31"},
    {"المرسلات": "50"},
    {"النبأ": "40"},
    {"النازعات": "46"},
    {"عبس": "42"},
    {"التكوير": "29"},
    {"الإنفطار": "19"},
    {"المطفّفين": "36"},
    {"الإنشقاق": "25"},
    {"البروج": "22"},
    {"الطارق": "17"},
    {"الأعلى": "19"},
    {"الغاشية": "26"},
    {"الفجر": "30"},
    {"البلد": "20"},
    {"الشمس": "15"},
    {"الليل": "21"},
    {"الضحى": "11"},
    {"الشرح": "8"},
    {"التين": "8"},
    {"العلق": "19"},
    {"القدر": "5"},
    {"البينة": "8"},
    {"الزلزلة": "8"},
    {"العاديات": "11"},
    {"القارعة": "11"},
    {"التكاثر": "8"},
    {"العصر": "3"},
    {"الهمزة": "9"},
    {"الفيل": "5"},
    {"قريش": "4"},
    {"الماعون": "7"},
    {"الكوثر": "3"},
    {"الكافرون": "6"},
    {"النصر": "3"},
    {"المسد": "5"},
    {"الإخلاص": "4"},
    {"الفلق": "5"},
    {"الناس": "6"},
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Table(
            border: TableBorder(
                top: BorderSide(
                  width: 3,
                  color: Color(0xFFB7935F),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color(0xFFB7935F),
                ),
                verticalInside: BorderSide(
                  width: 3,
                  color: Color(0xFFB7935F),
                )),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    "عدد الايات",
                    style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF242424),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    "اسم السوره",
                    style: GoogleFonts.elMessiri(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF242424)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: surasName.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SureScreen.RouteName);
                  },
                  child: Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(
                        color: Color(0xFFB7935F),
                        width: 3,
                      ),
                    ),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              surasName[index].values.first,
                              style: GoogleFonts.elMessiri(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF242424)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            surasName[index].keys.first,
                            style: GoogleFonts.elMessiri(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF242424),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
