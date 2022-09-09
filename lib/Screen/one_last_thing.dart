import 'package:flutter/material.dart';
import 'package:reminder/Screen/screen_two.dart';

import '../Styles/colors.dart';
import '../Widget/kpmor.dart';


class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'STUDEASY',
              style: TextStyle(
                color: AppColors.vanadyBlue,                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'One last \nlittle thing!',
              style: TextStyle(
                fontFamily: 'Playfair Display',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'To better set prompts that will be at your convenience. We need this little info.',
              style: TextStyle(fontSize: 14, color: AppColors.gray),
            ),
            const SizedBox(height: 59),
            const Center(
              child: Text(
                'YOU ARE A',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.gray,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 12,),
            Row(
              children:  const [
                Kprompt(
                    description: 'Night \nOwl', image: Image(image: AssetImage("assets/images/moon.png"),), ),
                Spacer(),
                Kprompt(
                    description: 'Night \nOwl',image: Image(image: AssetImage("assets/images/settings.png")), )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenTwo() ));
        },
        backgroundColor: Colors.black,
        child: const Text('START'),
      ),
    );
  }
}
