import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class TopColumn extends StatelessWidget {
  const TopColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.place,
                size: 16,
                color: Color(0xFF9F937E),
              ),
              SizedBox(width: 4),
              Text(
                'Saint Petersburg',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9F937E),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        ZoomIn(
          preferences: const AnimationPreferences(
            offset: Duration(milliseconds: 0),
            duration: Duration(milliseconds: 2500),
            magnitude: 0.5,
          ),
          child: Container(
            width: 40,
            height: 40,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D/40x40"),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(),
            ),
          ),
        )
      ],
    );
  }
}
