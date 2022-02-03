import 'package:clone_grab/ui/pages/authentication/register_insert_code.dart';
import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class RegisterPhonePage extends StatelessWidget {
  const RegisterPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              const SizedBox(height: 32),
              Text(
                'Welcome! What\'s your mobile number?',
                style: sanomatBlack.copyWith(fontSize: 18, fontWeight: medium),
              ),
              const SizedBox(height: 17),
              Text(
                'With a valid number, you can access reides, deliceries, and our other services.',
                style: sanomatSubtitle2,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    width: 86,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: subtitleColor2)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 14,
                            decoration: BoxDecoration(
                              border: Border.all(color: subtitleColor2),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 20,
                                  height: 7,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '+62',
                            style: sanomatBlack.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    width: MediaQuery.of(context).size.width - 32 - 86 - 10,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: subtitleColor2),
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: sanomatBlack.copyWith(
                            fontSize: 26, fontWeight: medium),
                        cursorColor: greenColor,
                        maxLength: 14,
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: '85712345678',
                            hintStyle: sanomatSubtitle3.copyWith(
                              fontSize: 26,
                              fontWeight: medium,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            counterText: ''),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterInsertCode())),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(bgGreenColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style:
                        poppinsWhite.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
