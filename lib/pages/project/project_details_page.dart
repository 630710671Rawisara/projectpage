import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectpage/models/project.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailaPage extends StatelessWidget {
  final Project project;

  const ProjectDetailaPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###,000');
    var target = formatter.format(project.targetAmount);
    var receiveAmount = formatter.format(project.receiveAmount);
    var myTextStylescript =
        const TextStyle(fontSize: 12, color: Colors.black54);
    var amountStyle = const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54);
    var percentText = ((project.receiveAmount / project.targetAmount) * 100)
        .toStringAsFixed(0);
    var percent = int.tryParse(percentText);

    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 3),
              child: Container(
                child: Text(
                  project.title,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            color: Colors.amber[50],
          ),
          Container(
            color: Colors.amber[50],
            child: Image.asset(
              project.imgeURL,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
              child: Container(
                child: Text(
                  project.longscript,
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
            ),
            color: Colors.amber[50],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
              child: Container(
                child: Text(
                  project.timeProject,
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
            ),
            color: Colors.amber[50],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
              child: Container(
                child: Text(
                  project.area,
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
            ),
            color: Colors.amber[50],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 3),
              child: Container(
                child: Text(
                  'ยอดบริจาคขณะนี้',
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 20, 3),
              child: Container(
                child: Text(
                  '$receiveAmount บาท',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.amber[600],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'เป้าหมาย',
                            style: myTextStylescript,
                          ),
                          Text('${target} บาท', style: amountStyle),
                        ],
                      ),
                      Text(
                        '$percentText%',
                        style: myTextStylescript,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: percent!,
                        child: Container(
                          height: 15.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          color: Colors.amber,
                        ),
                      ),
                      Expanded(
                        flex: 100 - percent,
                        child: Container(
                          height: 15.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${project.duration} วัน', style: myTextStylescript),
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 14.0,
                            color: Colors.black54,
                          ),
                          Text(
                            '${project.donateCount}',
                            style: myTextStylescript,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text('♥ ร่วมบริจาค'),),
              ),
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text('🛒 หยิบใส่ตะกร้า'),
              ),
            ),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(20, 50, 20, 3),),
              Text('แชร์ให้เพื่อน'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Line(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Facebook(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Twitter(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget Facebook(){
  return IconButton(
    icon: FaIcon(FontAwesomeIcons.facebook),
    color: Colors.grey,
    onPressed: (){},
  );
}

Widget Line(){
  return IconButton(
    icon: FaIcon(FontAwesomeIcons.line),
    color: Colors.grey,
    onPressed: (){},
  );
}

Widget Twitter(){
  return IconButton(
    icon: FaIcon(FontAwesomeIcons.twitter),
    color: Colors.grey,
    onPressed: (){},
  );
}