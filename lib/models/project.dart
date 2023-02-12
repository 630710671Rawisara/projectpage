class Project {
  final String title; //ชื่อโครงการขอรับบริจาค
  final String description; //คำอธิบายเกี่ยวกับโครงการ
  final int targetAmount; //ยอดเงินขอรับบริจาคที่ต้องการ
  final int duration; //ระยะเวลาโครงการ

  Project(
      {required this.title,
      required this.description,
      required this.targetAmount,
      required this.duration});
}
