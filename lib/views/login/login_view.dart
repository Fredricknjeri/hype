import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/utils/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("assets/images/btcon_28.png"),
                  Text(
                    '목이길어슬픈기린님의 새로운 스팟',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'Pretendard'),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: borderColor)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 6),
                      child: Row(
                        children: [
                          Image.asset("assets/images/Star 1.png"),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text('323,233',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Pretendard'))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset('assets/images/Group 40.png')
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _controller.currentIndex,
        selectedItemColor: mainColor,

        onTap: (_) {},
        // selectedItemColor: mainColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'HOME',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(label: 'ACADEMICS', icon: Icon(Icons.school)),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_circle,
              color: Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            label: 'FINANCES',
            icon: Icon(Icons.wallet),
          ),
          BottomNavigationBarItem(label: 'PROFILE', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
