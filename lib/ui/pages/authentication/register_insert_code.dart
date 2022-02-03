import 'package:clone_grab/ui/pages/home/main_page.dart';
import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class RegisterInsertCode extends StatelessWidget {
  const RegisterInsertCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(height: 8),
              Text(
                'Enter the 6-digit code sent to:',
                style: sanomatBlack.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 7),
              Text(
                '+62 85712345678',
                style: sanomatBlack.copyWith(fontSize: 16, fontWeight: bold),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 46,
                    width: 100,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: sanomatBlack.copyWith(
                          fontSize: 26, fontWeight: medium),
                      cursorColor: greenColor,
                      onEditingComplete: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                      maxLength: 6,
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: '000000',
                          hintStyle: sanomatSubtitle3.copyWith(
                            fontSize: 26,
                            fontWeight: medium,
                          ),
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          counterText: ''),
                    ),
                  ),
                  Image.asset(
                    'assets/image/icon/Close_icon.png',
                    width: 33,
                    height: 33,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              const Spacer(),
              Text(
                'Didn\'t receive it?',
                style: sanomatBlack.copyWith(fontSize: 17),
              ),
              const SizedBox(height: 13),
              Text(
                'Request new code in 00:13',
                style:
                    sanomatSubtitle3.copyWith(fontSize: 17, fontWeight: medium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
