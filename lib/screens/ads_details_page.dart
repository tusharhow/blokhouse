import 'package:flutter/material.dart';

class AdsDetailsPage extends StatelessWidget {
  const AdsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/im9.png',
                ),
                Positioned(
                  left: 20,
                  top: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 90,
                  top: 80,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.share,
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 80,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 170,
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 180,
                  child: Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 205,
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 215,
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 50,
                  child: Container(
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withAlpha(400),
                    ),
                    child: const Center(
                      child: Text(
                        '1/9',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Kadiköy Göztepe’de ideal konumda,\nyüksek kira getirili 3+1 daire... ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/house.png',
                          height: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Değeri',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color: const Color(0xff01A8FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              '3.800.000TL',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/mon.png',
                          height: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Yıllık kira getirisi',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color: const Color(0xff01A8FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              '102.000TL',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/task.png',
                      height: 50,
                    ),
                    const Text(
                      'Özellikleri',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'm² (Net) : 156 m²',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Oda sayısı : 3+1',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Bina yaşı : 3',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Bulunduğu kat : 6',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Kat sayısı : Z + 13',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Balkon : Evet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Eşyalı : Evet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Site içerisinde : Evet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/info.png',
                      height: 40,
                    ),
                    const Text(
                      'Tahmini değer artışı :',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    '%89,96',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00A9FF),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    '1 yıl sonraki tahmini değer kazancı*',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/info.png',
                      height: 40,
                    ),
                    const Text(
                      'Değer değişimi :',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                '1 yıllık',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                '+ %163,56',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00A9FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                '2 yıllık',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                '+ %300,32',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00A9FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: const [
                              Padding(
                                padding:
                                     EdgeInsets.only(left: 20, top: 15),
                                child: Text(
                                  '4 yıllık',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 20),
                                child: Text(
                                  '+%344,47	',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff00A9FF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Açıklama :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Göztepe Marmaray istasyonunu 5dk. yürüme mesafesi ve yeni inşa edilen Metro hattı üzerinde bulunan yüksek kâr potansiyeline sahip bu projeye yatırım yapabilirsiniz..',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset(
                            'assets/icons/note.png',
                          )),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Gayrimekul değerleme raporu görüntüle',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/bo.png',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Toplam Blok',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color:const Color(0xff01A8FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:const Center(
                            child: Text(
                              '3.800',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                 const   SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/rot.png',
                        ),
                    const    SizedBox(
                          height: 5,
                        ),
                   const     Text(
                          'Kalan Blok',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    const    SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color:const Color(0xff01A8FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:const Center(
                            child: Text(
                              '1.140',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
            const    SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/icons/pro.png',
                ),
            const    SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/done.png',
                      color: Colors.blue,
                      height: 25,
                    ),
                const    SizedBox(
                      width: 10,
                    ),
                const    Text(
                      '2.660.000TL',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                 const   SizedBox(
                      width: 5,
                    ),
               const     Text(
                      'finanse edildi ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
             const   SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Text(
                      '%70',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'tamamlandı. ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
             const   SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/map.png',
                      height: 40,
                    ),
                const    Text(
                      'Konum :',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    'assets/images/map.png',
                  ),
                ),
          const      SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color:const Color(0xff00A9FF),
                    ),
                    child:const Center(
                        child: Text(
                      'Yatırım yap',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
            const    SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
