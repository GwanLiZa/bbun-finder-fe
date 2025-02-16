import 'package:auto_route/auto_route.dart';
import 'package:bbun/presentation/widgets/bbun_notebook.dart';
import 'package:bbun/presentation/widgets/bbun_pressable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: SingleChildScrollView(
            child: Center(
                child: Stack(children: [
          // 상단 그라데이션
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  constraints: BoxConstraints(maxWidth: 393),
                  height: 257,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xFFFBFBFB), Color(0xFFFDFD96)],
                    ),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/detail_page_deco.svg",
                    width: screenWidth,
                  ),
                ),
              ],
            ),
          ),

          // 하단 그라데이션
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    constraints: BoxConstraints(maxWidth: 393),
                    height: 257,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xFFFDFD96), Color(0xFFFBFBFB)])),
                  ),
                ],
              )),

          Positioned(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: screenWidth,
                ),

                // 학생 이름
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 393,
                  ),
                  width: screenWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    '홍길동',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontFamily: 'HSSanTokki',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 28),

                // 노트 부분
                BbunNotebook(),
                SizedBox(height: 50),
                // 하단 버튼
                Container(
                  width: screenWidth,
                  constraints: BoxConstraints(maxWidth: 393),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 36),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: BbunPressable(
                              onPressed: () {},
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE24A),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                  child: Icon(Icons.keyboard_arrow_left,
                                      size: 30)))),
                      SizedBox(
                          width: 100,
                          height: 50,
                          child: BbunPressable(
                              onPressed: () {},
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE24A),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                '뒤로가기',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              )))),
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: BbunPressable(
                              onPressed: () {},
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE24A),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                  child: Icon(Icons.keyboard_arrow_right,
                                      size: 30)))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ]))));
  }
}
