import 'package:flutter/cupertino.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({super.key, required this.gender, required this.imagePath});
final String gender;
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imagePath),
            height: 96,
            width: 96,
          ),
          const SizedBox(height: 20,),
          Text(
            gender,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff8B8C9E),
            ),
          )
        ],
      ),
    );
  }
}
