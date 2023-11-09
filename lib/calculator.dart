import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() =>  _CalculatorPageState();
}

class  _CalculatorPageState extends State<CalculatorPage> {

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();

  double dataA = 0;
  double dataB = 0;
  double dataC = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.red[600],
      ),
      body: ListView(
      children: [
          Padding(
            padding: const EdgeInsets.only(top:10,bottom:10,left:5,right:5),
            child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                controller: a,
                keyboardType: TextInputType.number,
               ),
             )),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10,bottom:10,left:5,right:5),
            child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                controller: b,
                keyboardType: TextInputType.number,
               ),
             )),
          ),

          SizedBox(
          height: 20,
            ),

          Padding(padding: EdgeInsets.only(left: 10.0),
          child: Text('Hasil:',style: TextStyle(color: Colors.black),),
          ),        

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 255, 151, 143)),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                controller: c,
                keyboardType: TextInputType.number,
                readOnly: true,
               ),
             )),
          ),

          SizedBox(
          height: 50,
            ),

          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      parsingDouble();

                      dataC = dataA + dataB;
                      c.text = dataC.toString();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[400], 
                      borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Tambah (+)",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      parsingDouble();

                      dataC = dataA - dataB;
                      c.text = dataC.toString();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[400], 
                      borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kurang (-)",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      parsingDouble();

                      dataC = dataA * dataB;
                      c.text = dataC.toString();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[400], 
                      borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kali (*)",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      parsingDouble();

                      dataC = dataA / dataB;
                      c.text = dataC.toString();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[400], 
                      borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Bagi (/)",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  ),
              ],
            ),
          )

        ],
      )
    );
  }

  void parsingDouble() {
    dataA = double.parse(a.text);
    dataB = double.parse(b.text);
  }
}