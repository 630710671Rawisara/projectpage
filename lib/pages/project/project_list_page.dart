import 'package:flutter/material.dart';
import 'package:projectpage/models/project.dart';
import 'package:intl/intl.dart';


class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
        title: 'เก่าไม่ไหว ขอคู่ใหม่ให้หนูที',
        description:
            'มอบรองเท้านักเรียนคู่ใหม่ให้เด็กนักเรียนยากจนในโรงเรียนชนบท',
        targetAmount: 123,
        duration: 456,
        receiveAmount: 23,
        donateCount: 10,
        imgeURL:
            'assets/images/3.jpg'),
    Project(
        title: 'ทุนการศึกษาเพื่อนักเรียนชาวเขา',
        description:
            'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส',
        targetAmount: 1234,
        duration: 456,
        receiveAmount: 345,
        donateCount: 30,
        imgeURL: 'assets/images/2.png'),
    Project(
        title: 'เย็บ ลด กดทับ-ที่นอนป้องกันแผลกดทับเพื่อผู้ป่วยติดเตียงบนดอย',
        description:
            'พัฒนาและประยุกต์ที่นอนป้องกันแผลกดทับให้กับผู้ป่วยติดเตียง 400 ผืน',
        targetAmount: 12345,
        duration: 456,
        receiveAmount: 3456,
        donateCount: 56,
        imgeURL:
            'assets/images/1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];
          var myTextStyle = const TextStyle(fontSize: 12, color: Colors.black);
          var myTextStylescript =
              const TextStyle(fontSize: 12, color: Colors.black54);
          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var amountStyle = const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54);
          var percentText =
              ((project.receiveAmount / project.targetAmount) * 100)
                  .toStringAsFixed(0);
          var percent = int.tryParse(percentText);

          return InkWell(
            onTap: (){},
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          project.imgeURL,
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.contain, //ไม่ให้รูปมีขอบขาว มีเต็มพื้นที่
                        ),
                        /*Container(
                        width: 80.0,
                        height: 80.0,
                        color: Colors.lightBlueAccent,
                      ),*/
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(project.title),
                            const SizedBox(height: 8.0),
                            Text('${project.description.toString()} ',
                                style: myTextStylescript),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
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
                            Text('$target บาท', style: amountStyle),
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
                            color: Colors.black12,
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
          );
        },
      ),
    );
  }
}

