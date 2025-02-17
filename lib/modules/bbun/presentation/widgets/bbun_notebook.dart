import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:bbun/modules/bbun/presentation/widgets/bbun_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class BbunNotebook extends StatefulWidget {
  const BbunNotebook({super.key});

  @override
  State<BbunNotebook> createState() => _BbunNotebookState();
}

class _BbunNotebookState extends State<BbunNotebook> {
  final card = BbunCard(
    name: "양예진",
    studentId: "20215121",
    email: "yangyj@gm.gist.ac.kr",
    issueDate: DateTime.parse("2025-01-28"),
    textColor: Color(0xFFFC639B),
    innerColor: Color(0xFFFFD6E5),
    outerColor: Color(0xFFFF9BBF),
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = screenWidth / 411.42;

    return SizedBox(
      width: screenWidth > 430 ? 430 : screenWidth,
      height: 581.01 * (screenWidth > 430 ? (430 / 411.42) : scale),
      child: Stack(
        children: [
          // 노트 속지
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/paper.png",
              width: screenWidth > 430 ? 430 : screenWidth,
              fit: BoxFit.fitWidth,
            ),
          ),
          // 병아리
          Positioned(
            top: 306 * (screenWidth > 430 ? (430 / 411.42) : scale),
            left: 290.73 * (screenWidth > 430 ? (430 / 411.42) : scale),
            child: SvgPicture.asset(
              "assets/icons/chick.svg",
              width: 61.9 * (screenWidth > 430 ? (430 / 411.42) : scale),
            ),
          ),

          // 뻔 카드
          // TODO: 지금 빈 상자라서 진짜 뻔 카드로 교체 필요
          Positioned(
              top: 63 * (screenWidth > 430 ? (430 / 411.42) : scale),
              left: 90.195 * (screenWidth > 430 ? (430 / 411.42) : scale),
              child: Transform.rotate(
                angle: 0.11397,
                child: Container(
                  width: 337.05 * (screenWidth > 430 ? (430 / 411.42) : scale),
                  height: 183.75 * (screenWidth > 430 ? (430 / 411.42) : scale),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.circular(
                        15 * (screenWidth > 430 ? (430 / 411.42) : scale)),
                    color: Colors.white,
                  ),
                ),
              )),
          // 별 클립
          Positioned(
            top: 38.85 * (screenWidth > 430 ? (430 / 411.42) : scale),
            left: 295.05 * (screenWidth > 430 ? (430 / 411.42) : scale),
            child: SvgPicture.asset(
              "assets/icons/star_clip.svg",
              width: 82.3725 * (screenWidth > 430 ? (430 / 411.42) : scale),
            ),
          ),
          // 학생 상세 정보
          Positioned(
            top: 378 * (screenWidth > 430 ? (430 / 411.42) : scale),
            left: 36 * (screenWidth > 430 ? (430 / 411.42) : scale),
            child: Transform.rotate(
              angle: -0.0523,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '전공',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8 * (screenWidth > 430 ? (430 / 411.42) : scale),
                      ),
                      Text(
                        '전기전자컴퓨터공학부',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/devider_1.svg",
                    width:
                        320.96 * (screenWidth > 430 ? (430 / 411.42) : scale),
                  ),
                  SizedBox(
                      height: 5 * (screenWidth > 430 ? (430 / 411.42) : scale)),
                  Row(
                    children: [
                      Text(
                        'MBTI',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8 * (screenWidth > 430 ? (430 / 411.42) : scale),
                      ),
                      Text(
                        'ISTJ',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/devider_2.svg",
                    width:
                        320.96 * (screenWidth > 430 ? (430 / 411.42) : scale),
                  ),
                  SizedBox(
                      height: 6 * (screenWidth > 430 ? (430 / 411.42) : scale)),
                  Row(
                    children: [
                      Text(
                        '인스타그램',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8 * (screenWidth > 430 ? (430 / 411.42) : scale),
                      ),
                      Text(
                        '@insta',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/devider_3.svg",
                    width:
                        320.96 * (screenWidth > 430 ? (430 / 411.42) : scale),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
