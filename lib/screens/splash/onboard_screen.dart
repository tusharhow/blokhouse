import 'package:blokhouse/components/navigate.dart';
import 'package:blokhouse/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = PageController();
  var initialPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page!.round();
      });
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff00A9FF),
              Color(0xff9CDEFF),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            // _appBar(),
            const SizedBox(
              height: 70,
            ),

            _body(_controller),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (initialPage == 1) _prevButton(),
                if (initialPage == 2) _prevButton(),
                _dotIndicator(),
                const SizedBox(
                  width: 25,
                ),
                _indicator(),
              ],
            )
          ],
        ),
      ),
    );
  }

  _prevButton() {
    return GestureDetector(
      onTap: () {
        _controller.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.green.withOpacity(0.2),
          ),
          child: const Center(
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  _body(PageController controller) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              // three steps
              const SizedBox(
                height: 20,
              ),
              if (index == 0) _firstStep(),
              if (index == 1) _secondStep(),
              if (index == 2) _thirdStep(),
            ],
          );
        },
      ),
    );
  }

  _firstStep() {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/on.png',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Yeni nesil ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'gayrimenkul yatırım\nplatformu ile tanışın !',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _secondStep() {
    return SizedBox(
      width: double.infinity,
      height: 550,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Geç',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset('assets/icons/li.png'),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'İnovatif Yatırım',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pasif kira getirili ve yüksek\nkazançlı bir gayrimenkul\nyatırımına kolayca sahip olun...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset('assets/icons/pech.png'),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Kolayca Yönet',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Evrak, tapu işlemleri ve kira\nyönetimi ile vakit kaybetmeyin,\nbiz her işlem ile ilgileniyoruz...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset('assets/icons/perce.png'),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Değerlenen Sermaye',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Yatırım yaptığınız gayrimenkul\ndeğerlensin, değerlendikçe siz\nkazanın...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset('assets/icons/wall.png'),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pasif Kira Getirisi',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Her ay yatırımınıza oranlı bir pasif\nkira getirisi elde edin ve nitellikli\nbir yatırım sahibi olun...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _thirdStep() {
    return SizedBox(
      width: double.infinity,
      height: 550,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Geç',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Türkiye’nin ilk parçalı\ngayrimenkul yatırım\nplatformu !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/logos/log3.png',
            height: 150,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '1000₺‘',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'den itibaren\nkolayca bir ev sahibi\nolucaksınız…',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _dotIndicator() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (index) {
          return Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    index == initialPage ? Colors.white38 : Colors.transparent,
                width: 3,
              ),
            ),
            child: Center(
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: index == initialPage ? Colors.white : Colors.white38,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  _indicator() {
    return Container(
      width: 120,
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            if (initialPage < 3) {
              _controller.animateToPage(initialPage + 1,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeIn);
            }
            if (initialPage == 3 - 1) {
              push(context: context, widget: const SignUpScreen());
            }
          },
          child: Container(
            width: 90,
            height: 45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 64, 88, 107),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
