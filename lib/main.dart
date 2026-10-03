import 'package:flutter/material.dart';
import 'package:lab2/Widgets/traveller_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fgift',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.brown),
      ),
      home: const Fgift(),
    );
  }
}

class Fgift extends StatefulWidget {
  const Fgift({super.key});

  @override
  State<Fgift> createState() => _Fgiftstate();
}

class _Fgiftstate extends State<Fgift> {
  ValueChanged<double>? get onChanged => null;
  int _personCount =1;
  double _giftPercentage = 0.0 ;


  //Methods

  void increment(){
    setState(() {
      _personCount=_personCount+1;
    });
  }

  void decrement(){
    setState(() {
      if (_personCount>0){
        _personCount=_personCount-1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(title: const Text("Fuel Cost Sharing")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text('Total Fuel Cost Per Traveller', style: style),
                Text(
                  '£0.00',
                  style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displaySmall?.fontSize,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: theme.colorScheme.primary, width: 2),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Fuel Cost',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Split', style: theme.textTheme.titleMedium),
                      TravellerCounter(theme: theme, personCount: _personCount,
                      onDecrement: decrement, onIncrement: increment,                      
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tip', style: theme.textTheme.titleMedium),
                      Text('20', style: theme.textTheme.titleMedium),
                    ],
                  ),
                  Text('${(_giftPercentage * 100).round()}%'),
                  Slider(
                    value: _giftPercentage,
                    onChanged: (value) {
                      setState(() {
                        _giftPercentage = value;
                      });
                      _giftPercentage = value;
                    },
                    min: 0,
                    max: 0.5,
                    divisions: 5,
                    label: '${(_giftPercentage * 100).round()}%'
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// All changes made and app works as expected

