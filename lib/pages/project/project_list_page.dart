import 'package:flutter/material.dart';
import 'package:projectpage/models/project.dart';
class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
  Project(title: 'เก่าไม่ไหว ขอคู่ใหม่ให้หนูที'
      , description: 'มอบรองเท้านักเรียนคู่ใหม่ให้เด็กนักเรียนยากจนในโรงเรียนชนบท เพื่อป้องกันความเสี่ยงจากอุบัติเหตุ และโรคต่างๆที่เกิดจากการสวมใส่รองเท้านักเรียนที่มีสภาพเก่าขาดชำรุด สร้างเสริมสุขลักษณะที่ดี และสร้างแรงบันดาลใจในการไปโรงเรียนให้แก่เด็กๆที่ขาดแคลน'
      , targetAmount: 123, duration: 456),
  Project(title: 'ทุนการศึกษาเพื่อนักเรียนชาวเขา'
      , description: 'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส'
      , targetAmount: 123, duration: 456),
  Project(title: 'เย็บ ลด กดทับ-ที่นอนป้องกันแผลกดทับเพื่อผู้ป่วยติดเตียงบนดอย'
      , description: 'มูลนิธิกระจกเงาเชียงราย มีแนวคิดที่จะพัฒนาและประยุกต์ที่นอนป้องกันแผลกดทับให้กับผู้ป่วยติดเตียงให้เหมาะสมสอดคล้องกับสภาพพื้นที่และตอบโจทย์การใช้งานจริงที่สุด จึงได้จัดทำโครงการ “เย็บ ลด กดทับ” เพื่อประดิษฐ์ที่นอนป้องกันแผลกดทับส่งต่อให้กับผู้ป่วยติดเตียงในพื้นที่ตำบลแม่ยาวจำนวน 400 ผืน'
      , targetAmount: 123, duration: 456),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];
          var myTextStyle = const TextStyle(fontSize: 12,color: Colors.black);
          return Card(
            child: Padding (
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title),
                  const SizedBox(height: 8.0),
                  Text('${project.description.toString()}', style: myTextStyle),
                  Text(project.targetAmount.toString(), style: myTextStyle),
                  Row(
                    
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
