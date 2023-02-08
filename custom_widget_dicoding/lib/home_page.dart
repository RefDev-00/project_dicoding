import 'package:custom_widget_dicoding/calculator_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        leading: Icon(
          Icons.calculate_outlined,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: [
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {},
              ),
              CalculatorButton.Icon(
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '/',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'X',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '-',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).cardColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).backgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
