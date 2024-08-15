import 'package:flutter/cupertino.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({super.key, required this.gender, required this.imagePath, required this.isSelected, required this.onTap});
final String gender;
final String imagePath;
final bool isSelected;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? const Color(0xff24263B) : const Color(0xff333244),
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
      ),
    );
  }
}
