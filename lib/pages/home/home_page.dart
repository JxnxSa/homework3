import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _input = '';

  Widget _buildNumberButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            _input = _input + num.toString();
          });
        },
        /*onTap: () {
          _handleClickButtonNumber(num);
        },*/
        customBorder: RoundedRectangleBorder(),
        child: Container(
          width: 40.0,
          height: 35.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,

            border:
              Border.all(
              color: Color(0xFF333333),
              width: 0.25,
            )

          ),

          child:
            num >= 0
            ? Text(
              num.toString(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.purple.shade700,
              ),
            )
          : Icon(
              Icons.backspace_outlined,
              size: 20.0,
              color: Colors.purple.shade700,
            ),
        ),
      ),
    );
  }

  /*Widget _buildIndicatorGuess(){

  }*/

  /*Widget _buildIndicator(){

  }*/
  void _handleClickButtonGuess(){

  }

  void _handleClickButtonNumber(int num){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.purple.shade50,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(height: 200.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                        'assets/images/guess_logo.png',
                        width: 100.0,
                    ),
                    Column(
                      children: [
                        //SizedBox(height: 16.4),
                        Text(
                          'GUESS',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.purple.shade200,
                          ),
                        ),
                        Text(
                          'THE NUMBER',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.purple.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //SizedBox(height: 100.0),
                Text(
                  _input,
                  style: TextStyle(
                    fontSize: 47.0,
                  ),
                ),
                Text(
                  'ทายเลข 1 ถึง 100',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         _buildNumberButton(1),
                         _buildNumberButton(2),
                         _buildNumberButton(3),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         for (var i in [4, 5, 6]) _buildNumberButton(i)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         for (var i in [7, 8, 9]) _buildNumberButton(i)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildNumberButton(-2),
                        _buildNumberButton(0),
                        _buildNumberButton(-1),
                      ],
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _handleClickButtonGuess();
                },
                child: Text('Guess'),
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
