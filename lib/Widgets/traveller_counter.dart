import 'package:flutter/material.dart';

class TravellerCounter extends StatelessWidget {
  const TravellerCounter({
    super.key,
    required this.theme,
    required this.onDecrement,
    required this.onIncrement,
    required this.personCount,
  });

  final ThemeData theme;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final int personCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onDecrement,
          icon: const Icon(Icons.remove),
        ),
        Text(
          "$personCount",
          style: theme.textTheme.titleMedium,
        ),
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onIncrement,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}