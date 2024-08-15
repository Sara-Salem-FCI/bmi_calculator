import 'package:flutter/material.dart';

class WeightAge extends StatefulWidget {
  const WeightAge(
      {super.key,
      required this.title,
      required this.value,
      required this.onMinus,
      required this.onPlus});

  final String title;
  final int value;
  final Function() onMinus;
  final Function() onPlus;

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff24263B),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xff8B8C9E),
              fontSize: 20,
            ),
          ),
          Text(
            '${widget.value}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: widget.onMinus,
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                color: const Color(0xff8B8C9E),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(0xff8B8C9E),
                  ),
                ),
              ),
              IconButton(
                onPressed: widget.onPlus,
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                color: const Color(0xff8B8C9E),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(0xff8B8C9E),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
