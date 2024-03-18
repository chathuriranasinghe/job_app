import 'package:job_app/Models/job_model.dart';

class GetData {
  final instaLogo =
      'https://i.pinimg.com/736x/24/37/73/2437730f7e3a5705e205e67fa2cd1020.jpg';
  final uberLogo =
      'https://freelogopng.com/images/all_img/1659761297uber-icon.png';
  final tiktokLogo =
      'https://img.freepik.com/free-psd/3d-realistic-tiktok-icon_125540-2052.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1710460800&semt=ais';
  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: 'Senior UX Designer',
          salary: 'LKR 80000/ month',
          companyName: 'Instagram',
          logo: instaLogo,
          city: 'Colombo',
          time: '7 Days Left'),
      JobModel(
          title: 'Senior UI Designer',
          salary: 'LKR 90000/ month',
          companyName: 'Uber',
          logo: uberLogo,
          city: 'Kandy',
          time: '27 Days Left'),
      JobModel(
          title: 'Senior Mobile Developer',
          salary: 'LKR 60000/ month',
          companyName: 'Tiktok',
          logo: tiktokLogo,
          city: 'Jaffna',
          time: '4 Days Left'),
    ];
    return jobs;
  }
}
