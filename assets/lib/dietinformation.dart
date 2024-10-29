///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class Dietinformation extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:4,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xff21c41d),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"Diet information",
style:TextStyle(
fontWeight:FontWeight.w600,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xff000000),
),
),
leading: Icon(
Icons.arrow_back,
color:Color(0xff212435),
size:24,
),
),
body:Padding(
padding:EdgeInsets.symmetric(vertical: 0,horizontal:10),
child:
Column(
mainAxisAlignment:MainAxisAlignment.spaceEvenly,
crossAxisAlignment:CrossAxisAlignment.stretch,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"To know more about your diet preferences please answer the following",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),

CheckboxListTile(
value:false,
title:Text(
"I am vegan",
style: TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
textAlign:TextAlign.start,
),
tileColor:Color(0x1f000000),
activeColor:Color(0xff3a57e8),
checkColor:Color(0xffffffff),
contentPadding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
onChanged:(value) {},
dense:false,
controlAffinity:ListTileControlAffinity.platform,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
selected:false,
selectedTileColor:Color(0x42000000),
),

CheckboxListTile(
value:false,
title:Text(
"i am not vegan",
style: TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
textAlign:TextAlign.start,
),
tileColor:Color(0x1f000000),
activeColor:Color(0xff3a57e8),
checkColor:Color(0xffffffff),
contentPadding:EdgeInsets.symmetric(vertical: 0,horizontal:16),
onChanged:(value) {},
dense:false,
controlAffinity:ListTileControlAffinity.platform,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
selected:false,
selectedTileColor:Color(0x42000000),
),
Container(
width:130,
height:50,
padding:EdgeInsets.symmetric(vertical: 4,horizontal:8),
decoration: BoxDecoration(
color:Color(0x1e000000),
border:Border.all(color: Color(0x70000000) , width: 1),
borderRadius:BorderRadius.circular(0),
),
child:DropdownButton(
value:"i am allergic to glutten",
items:["i am allergic to glutten", "i am not allergic to glutten"].map<DropdownMenuItem<String>>((String value) {
return DropdownMenuItem<String>(
value: value,
child: Text(value),);
}).toList(),style: TextStyle(
color:Color(0xff000000),
fontSize:16,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
), onChanged: (value){},
elevation:8,
isExpanded: true,),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Padding(
padding:EdgeInsets.fromLTRB(0, 0, 3, 0),
child:MaterialButton(
onPressed:(){
  Navigator.pop(context);
},
color:Color(0xff5877FD),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(5.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Previous", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:140,
),
),
Padding(
padding:EdgeInsets.fromLTRB(3, 0, 5, 0),
child:MaterialButton(
onPressed:(){
 Navigator.pushNamed(context, '/dashboard');
},
color:Color(0xff5877FD),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(5.0),
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Submit", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:140,
),
),
],),
],),),
)
;}
}