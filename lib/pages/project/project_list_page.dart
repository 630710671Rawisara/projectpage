import 'package:flutter/material.dart';
import 'package:projectpage/models/project.dart';
import 'package:intl/intl.dart';
import 'package:projectpage/pages/project/project_details_page.dart';

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
        targetAmount: 17823,
        duration: 456,
        receiveAmount: 2783,
        donateCount: 10,
        imgeURL: 'assets/images/3.jpg',
        longscript: 'มอบรองเท้านักเรียนคู่ใหม่ให้เด็กนักเรียนยากจนในโรงเรียนชนบท เพื่อป้องกันความเสี่ยงจากอุบัติเหตุ และโรคต่างๆที่เกิดจากการสวมใส่รองเท้านักเรียนที่มีสภาพเก่าขาดชำรุด สร้างเสริมสุขลักษณะที่ดี และสร้างแรงบันดาลใจในการไปโรงเรียนให้แก่เด็กๆที่ขาดแคลน',
        timeProject: 'ระยะเวลาโครงการ 15 ต.ค. 2565 ถึง 31 มี.ค 2566',
        area: 'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ภาคเหนือและภาคตะวันออกเฉียงเหนือ',),
    Project(
        title: 'ทุนการศึกษาเพื่อนักเรียนชาวเขา',
        description:
            'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส',
        targetAmount: 891234,
        duration: 456,
        receiveAmount: 34875,
        donateCount: 30,
        imgeURL: 'assets/images/2.png',
        longscript: 'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส',
        timeProject: 'ระยะเวลาโครงการ 01 ก.พ. 2566 ถึง 30 พ.ย. 2566',
        area: 'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ตำบลห้วยแก้ว อำเภอแม่ออน จังหวัดเชียงใหม่ , ตำบลหนองหาร อำเภอสันทราย จังหวัดเชียงใหม่ , ตำบลดอนแก้ว อำเภอแม่ริม จังหวัดเชียงใหม่ , ตำบลในเมือง อำเภอเมืองพิษณุโลก จังหวัดพิษณุโลก , ตำบลบ้านต๋อม อำเภอเมืองพะเยา จังหวัดพะเยา , ตำบลช้างเผือก อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ , ตำบลปางหมู อำเภอเมืองแม่ฮ่องสอน จังหวัดแม่ฮ่องสอน , ตำบลชมพู อำเภอเมืองลำปาง จังหวัดลำปาง',),
    Project(
        title: 'เย็บ ลด กดทับ-ที่นอนป้องกันแผลกดทับเพื่อผู้ป่วยติดเตียงบนดอย',
        description:
            'พัฒนาและประยุกต์ที่นอนป้องกันแผลกดทับให้กับผู้ป่วยติดเตียง 400 ผืน',
        targetAmount: 12345,
        duration: 456,
        receiveAmount: 3456,
        donateCount: 56,
        imgeURL: 'assets/images/1.jpg',
        longscript: 'มูลนิธิกระจกเงาเชียงราย มีแนวคิดที่จะพัฒนาและประยุกต์ที่นอนป้องกันแผลกดทับให้กับผู้ป่วยติดเตียงให้เหมาะสมสอดคล้องกับสภาพพื้นที่และตอบโจทย์การใช้งานจริงที่สุด จึงได้จัดทำโครงการ “เย็บ ลด กดทับ” เพื่อประดิษฐ์ที่นอนป้องกันแผลกดทับส่งต่อให้กับผู้ป่วยติดเตียงในพื้นที่ตำบลแม่ยาวจำนวน 400 ผืน',
        timeProject: 'ระยะเวลาโครงการ 01 ม.ค. 2566 ถึง 01 มิ.ย. 2566',
        area: 'พื้นที่ดำเนินโครงการ ระบุพื้นที่: จังหวัดเชียงราย',),
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

          return Card(
            child: InkWell(
              onTap: () {
                _handleCickProjectItem(projects[index]);
              },
              //ถ้าใช้แค่ _handleCickProjectItem; ไม่ต้อง () {} ต่อท้ายฟังก์ชัน
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
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(project.title,overflow: TextOverflow.ellipsis,),
                                  const SizedBox(height: 8.0),
                                  Text('${project.description.toString()} ',
                                    style: myTextStylescript,overflow: TextOverflow.ellipsis,),
                                ],
                              ),
                            ),
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
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${project.duration} วัน',
                              style: myTextStylescript),
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
            ),
          );
        },
      ),
    );
  }

  void _handleCickProjectItem(Project p) {
    print(p.targetAmount.toString());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProjectDetailaPage(
          project: p!,
        ),
      ),
    );
  }
}
