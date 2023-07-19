class TopSpecialists {
  String? icon;
  String? categoryName;
  String? doctorsName;
  String? doctorsPic;
  String? specialist;
  String? biography;
  double? rating;
  int? numOfRating;
  double? fees;
  double? experience;
  int? patients;
  int? certification;
  String? medicalName;

  TopSpecialists(
      {this.icon,
      this.categoryName,
      this.doctorsName,
      this.doctorsPic,
      this.specialist,
      this.rating,
      this.numOfRating,
      this.biography,
      this.certification,
      this.experience,
      this.fees,
      this.medicalName,
      this.patients});
}

List<TopSpecialists> specialistsList = [
  TopSpecialists(
      icon: 'assets/images/gynaecology.svg',
      categoryName: 'General Physician',
      doctorsName: 'Dr. Nasima',
      specialist: 'Sr. gynaecology',
      rating: 4.5,
      numOfRating: 122,
      doctorsPic: 'assets/images/doctorsPic.png',
      experience: 1.5,
      biography:
          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown''',
      certification: 6,
      patients: 1000,
      fees: 500,
      medicalName: 'Dhaka Medical'),
  TopSpecialists(
    icon: 'assets/images/general.svg',
    categoryName: 'General Physician',
    doctorsName: 'Dr. Rahim',
    specialist: 'sr. gynaecology',
    rating: 4.5,
    numOfRating: 12,
    doctorsPic: 'assets/images/doctorsPic.png',
    experience: 5.5,
    biography:
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown''',
    certification: 6,
    patients: 1000,
    fees: 500,
    medicalName: 'Dhaka Medical',
  ),
  TopSpecialists(
    icon: 'assets/images/coronavirus.svg',
    categoryName: 'Coronavirus Related',
    doctorsName: 'Dr Korim',
    specialist: 'sr. gynaecology',
    rating: 4.5,
    numOfRating: 122,
    doctorsPic: 'assets/images/doctorsPic.png',
    experience: 1.5,
    biography:
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown''',
    certification: 6,
    patients: 1000,
    fees: 500,
    medicalName: 'Dhaka Medical',
  ),
  TopSpecialists(
    icon: 'assets/images/dermatology.svg',
    categoryName: 'Dermatology',
    doctorsName: 'Dr. Morzina',
    specialist: 'Sr. gynaecology',
    rating: 4.5,
    numOfRating: 22,
    doctorsPic: 'assets/images/doctorsPic.png',
    experience: 1.5,
    biography:
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown''',
    certification: 7,
    patients: 100,
    fees: 1000,
    medicalName: 'Dhaka Medical',
  ),
  TopSpecialists(
      icon: 'assets/images/gynaecology.svg', categoryName: 'Gynaecology'),
  TopSpecialists(
      icon: 'assets/images/general.svg', categoryName: 'General Physician'),
  TopSpecialists(
      icon: 'assets/images/coronavirus.svg',
      categoryName: 'Coronavirus Related'),
  TopSpecialists(
      icon: 'assets/images/dermatology.svg', categoryName: 'Dermatology'),
  // Add more objects as needed
];
