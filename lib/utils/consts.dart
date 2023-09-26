import '../model/question.dart';

class Constants {
  static const String title = 'Let’s play it!';
  static const String description =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been';
  static const String name = 'Enter your name';
  static const categories = {
    1: "Frontend",
    2: "Backend",
    3: "Mobile",
    4: "SMM",
    5: "Graphic design",
    6: "Video Editing",
    7: "Mobilogrof",
    8: "Arxitektura",
    9: "Buxgalteriya",
    10: "Office",
    11: "Mobile o'yin",
  };

  static List<Question> loadQuestions() => [
        Question(
          question:
              "Quyidagi sohalardan qaysi biri sizga eng qiziqarli ko'rinadi:",
          answers: [
            Answer(
              answer: "dasturlash",
              isSelected: false,
              category: [1, 2, 3],
            ),
            Answer(
              answer: "dizayn",
              isSelected: false,
              category: [5, 8, 6, 4],
            ),
            Answer(
              answer: "marketing",
              isSelected: false,
              category: [4],
            ),
            Answer(
              answer: "o'yinlar",
              isSelected: false,
              category: [3, 11, 8],
            ),
            Answer(
              answer: "multimedia",
              isSelected: false,
              category: [6, 7, 5, 4],
            )
          ],
        ),
        Question(
          question:
              "Maktabda o'qiyotganingizda quyidagi fanlar siz uchun oson bo'lgan:",
          answers: [
            Answer(
              answer: "Chizmachilik, matematika",
              isSelected: false,
              category: [1, 8],
            ),
            Answer(
              answer: "Informatika, matematika, fizika",
              isSelected: false,
              category: [1, 2, 3, 9],
            ),
            Answer(
              answer: "Adabiyot, tillar o'rganish",
              isSelected: false,
              category: [4],
            ),
            Answer(
              answer: "Informatika, Texnologiya",
              isSelected: false,
              category: [1, 4],
            ),
          ],
        ),
        Question(
          question: "Sizga ko'proq nima yoqadi:",
          answers: [
            Answer(
              answer:
                  "Muammolarni hal qilish, mantiqiy o'ylash, yechimlarni topish",
              isSelected: false,
              category: [2, 3],
            ),
            Answer(
              answer: "Tadqiqot o'tkazish, tahlil qilish, taktika tanlash",
              isSelected: false,
              category: [9, 4, 10],
            ),
            Answer(
              answer:
                  "Yangi narsa o'ylab topish, tajriba o'tkazish, tasavvur qilish",
              isSelected: false,
              category: [6, 5, 7, 8],
            ),
            Answer(
              answer: "Ma'lumotlarni analiz qilish,Hujjatlar bilan ishalash",
              isSelected: false,
              category: [9, 10],
            ),
          ],
        ),
        Question(
          question: "Bo'sh vaqtingizni nimaga sarflaysiz:",
          answers: [
            Answer(
              answer:
                  "Shahar bo'ylab aylanish, yangi binolar arxitekturasini ko'rish",
              isSelected: false,
              category: [8, 11],
            ),
            Answer(
              answer: "Ilgari o'rganmagan yangi narsalarni o'rganish",
              isSelected: false,
              category: [1, 2, 3, 9, 5, 6, 10],
            ),
            Answer(
              answer:
                  "Rasm chizish, fotosessiya, kitobni o'qish, kinoni tomosha qilish",
              isSelected: false,
              category: [5, 8, 6],
            ),
            Answer(
              answer:
                  "Ijtimoiy tarmoqarda o'tirish, do'stlar bilan telefonda muloqot qilish",
              isSelected: false,
              category: [4, 7],
            ),
            Answer(
              answer: "Uyda dam olishga va ovqatni buyurtma berishga",
              isSelected: false,
              category: [4, 5],
            )
          ],
        ),
        Question(
          question:
              "Agar siz katta miqdordagi pulni to'plagan bo'lganingizda, uni nimaga sarflardingiz?",
          answers: [
            Answer(
              answer: "Ish uchun yangi kompyuterga",
              isSelected: false,
              category: [1, 2, 3],
            ),
            Answer(
              answer: "Yangi kiyim va aksessuarlarga",
              isSelected: false,
              category: [4, 7],
            ),
            Answer(
              answer: "Uyingizni zamonaviy ta'mirlashga",
              isSelected: false,
              category: [8, 5, 6],
            ),
            Answer(
              answer:
                  "Oxirgi modeldagi telefonni etkazib berish xizmatidan foydalanishga",
              isSelected: false,
              category: [4, 5, 6, 7],
            ),
          ],
        ),
        Question(
          question: "Sizga nima bilan ishlash oson:",
          answers: [
            Answer(
              answer: "Raqamlar va jadvallar bilan ",
              isSelected: false,
              category: [9, 10],
            ),
            Answer(
              answer: "Odamlar bilan",
              isSelected: false,
              category: [4, 10, 7],
            ),
            Answer(
              answer:
                  "Kompozitsiyadagi ranglarning kombinatsiyasi va tanlovi bilan",
              isSelected: false,
              category: [5, 6],
            ),
            Answer(
              answer: "Kompyuter dasturlari bilan",
              isSelected: false,
              category: [1, 2, 3, 10],
            ),
          ],
        ),
        Question(
          question: "Siz uchun nima muhimroq:",
          answers: [
            Answer(
              answer: "Zamonaviy, istiqbolli kasbga ega bo'lish",
              isSelected: false,
              category: [1, 2, 3, 4, 5, 6, 7],
            ),
            Answer(
              answer: "Ijod bilan bog'liq qiziqarli ish",
              isSelected: false,
              category: [1, 3, 5, 6, 8],
            ),
            Answer(
              answer:
                  "Mehnat bozorida mutaxassis sifatida doimiy talabga ega bo'lish",
              isSelected: false,
              category: [5, 6, 8, 10, 1],
            ),
            Answer(
              answer: "O'z qo'llaringiz bilan kelajakni qurish",
              isSelected: false,
              category: [4, 7],
            ),
          ],
        ),
        Question(
          question: "Sizning kuchli tomonlaringiz:",
          answers: [
            Answer(
              answer: "Kuchli mantiq, har qanday vaziyatdan chiqish yo'li",
              isSelected: false,
              category: [3, 2],
            ),
            Answer(
              answer: "Ijodkorlik, g'ayrioddiy fikrlash, kreativ o'ylash",
              isSelected: false,
              category: [4, 5, 6, 7],
            ),
            Answer(
              answer:
                  "Rivojlangan mantiq, tez o'rganish, muzokaralar olib borish qobiliyati",
              isSelected: false,
              category: [4, 2],
            ),
          ],
        ),
        Question(
          question: "Siz ko'proq:",
          answers: [
            Answer(
              answer: "«Ijodiy» odamsiz",
              isSelected: false,
              category: [5, 6, 7, 8, 4],
            ),
            Answer(
              answer: "«Mantiqli» odamsiz",
              isSelected: false,
              category: [1, 2, 3],
            ),
            Answer(
              answer: "«Qo'li usta» odamsiz",
              isSelected: false,
              category: [6, 9],
            ),
          ],
        ),
        Question(
          question:
              "Sizga sovg'alar berilganda, nimaga ko'proq e'tibor berasiz:",
          answers: [
            Answer(
              answer: "Sovg'a va dizayn ko'rinishiga",
              isSelected: false,
              category: [5, 4],
            ),
            Answer(
              answer: "Ichki tarkibiga",
              isSelected: false,
              category: [2, 8, 9],
            ),
            Answer(
              answer: "Ushbu sovg'adan qanday foydalanishga",
              isSelected: false,
              category: [1, 10],
            ),
          ],
        ),
        Question(
          question:
              "Siz ma'lumotni qanday yaxshiroq qabul qilasiz va eslab qolasiz:",
          answers: [
            Answer(
              answer: "Rasmlar, tasvirlar va ranglardan foydalanganda",
              isSelected: false,
              category: [5, 6, 7],
            ),
            Answer(
              answer:
                  "Yaxshiroq eslab qolish uchun mantiqni tushunishim kerak, uni aniqlab olishim kerak",
              isSelected: false,
              category: [1, 2, 3],
            ),
            Answer(
              answer:
                  "Eshitish va daftarga vazifalarni yozib olish orqali va jadvallardagi hisobotlar yordamida",
              isSelected: false,
              category: [9, 10],
            ),
          ],
        ),
        Question(
          question:
              "Siz yangi kompaniyaga ishga joylashdingiz va siz o'z xohishingizga ko'ra o'zingiz uchun vazifalarni tanlash imkoniyati berildi, siz:",
          answers: [
            Answer(
              answer: "Innovatsion g'oyalar, ijodiy ishni tanlayman",
              isSelected: false,
              category: [5, 6, 8, 7],
            ),
            Answer(
              answer: "Texnik qismni tanlayman",
              isSelected: false,
              category: [1, 2, 3],
            ),
            Answer(
              answer: "Kompaniya reklamasini yurg'izishni tanlayman",
              isSelected: false,
              category: [4, 5, 6, 7],
            ),
          ],
        ),
        Question(
          question: "Yangi ishga kechikyapsiz, sizninig harakatlaringiz:",
          answers: [
            Answer(
              answer:
                  "Vaqtimni hisoblashni boshlayman va o‘z vaqtida yetib borishga harakat qilaman",
              isSelected: false,
              category: [2, 1],
            ),
            Answer(
              answer: "Google'dan eng yaqin marshrutni so'rayman",
              isSelected: false,
              category: [3, 1, 2],
            ),
            Answer(
              answer:
                  "U yerga borish qanchalik qiyin bo'lganligi haqida hikoya tuzaman va  barcha tafsilotlarigacha aytib beraman",
              isSelected: false,
              category: [4, 6, 5],
            ),
            Answer(
              answer:
                  "Men xotirjam bo'lib, sevimli shahrim manzarasidan bahramand bo'lib ketaman",
              isSelected: false,
              category: [4],
            ),
          ],
        ),
        Question(
          question: "Siz yangi telefon sotib olmoqchisiz, harakatlaringiz:",
          answers: [
            Answer(
              answer: "Texnik xususiyatlarini diqqat bilan o'rganaman",
              isSelected: false,
              category: [3, 1, 2],
            ),
            Answer(
              answer: "Ushbu model bo'yicha video sharhlarni ko'raman",
              isSelected: false,
              category: [1, 2, 3, 5],
            ),
            Answer(
              answer: "Ijtimoiy tarmoqlarga so'rovnoma joylayman",
              isSelected: false,
              category: [4, 7],
            ),
            Answer(
              answer: "Eng chiroyli modelni tanliman",
              isSelected: false,
              category: [4, 5, 7],
            ),
          ],
        ),
        Question(
          question:
              "Siz konsertga keldingiz, e'tiboringizni nima ko'proq jalb qiladi:",
          answers: [
            Answer(
              answer: "Kostyumlar, dekoratsiya, dizayn",
              isSelected: false,
              category: [1, 4, 5, 7],
            ),
            Answer(
              answer: "Sahnaning texnik dizayni",
              isSelected: false,
              category: [8, 5, 6, 7],
            ),
            Answer(
              answer: "Har xil effektlar",
              isSelected: false,
              category: [5, 6, 7],
            ),
            Answer(
              answer: "Atrofdagi odamlar",
              isSelected: false,
              category: [4, 9],
            ),
          ],
        ),
      ];
}
