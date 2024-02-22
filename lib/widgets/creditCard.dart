import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 30.0,
                ),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('- 60 000 FCFA', style: ThemeStyles.cardMoney),
                    // SvgPicture.asset('assets/hide-icon.svg'),
                    Text('Dépense du jour  ', style: ThemeStyles.cardDetails),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text('- 1230  FCFA ', style: ThemeStyles.cardDetails),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: SvgPicture.asset('assets/hide-icon.svg'),
                        
                          
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        //   child: SvgPicture.asset('assets/card-dots.svg'),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 6.0),
                        //   child: Text('9018', style: ThemeStyles.cardDetails),
                        // ),
                      ],
                      
                    ),
                    
                  ],
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                 horizontal: 10.0,
                  vertical: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dépense total ', style: ThemeStyles.cardDetails),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(' - 300 000 FCFA ', style: ThemeStyles.cardDetails),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: SvgPicture.asset('assets/hide-icon.svg'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


