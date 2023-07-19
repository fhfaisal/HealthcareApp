import 'package:doctor_app/models/doctors_category.dart';
import 'package:doctor_app/settings/refactoring_widgets/Custom_widgets.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final TopSpecialists specialist;

  const DoctorDetailsScreen({super.key, required this.specialist});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Doctor Details'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: mq.width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('${specialist.doctorsPic}'),
                      ),
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${specialist.doctorsName}',
                              style: myFontStyle(
                                  20, FontWeight.w600, textPureBlack, 2),
                            ),
                            Text(
                              '${specialist.categoryName} specialist',
                              style:
                                  myFontStyle(14, FontWeight.w600, text2Clr, 2),
                            ),
                            Text(
                              '${specialist.medicalName}',
                              style:
                                  myFontStyle(14, FontWeight.w600, text2Clr, 2),
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.amber,
                                  child: Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '${specialist.rating} (${specialist.numOfRating})',
                                  style: myFontStyle(
                                      10, FontWeight.w400, text2Clr),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      border:
                          Border.symmetric(horizontal: BorderSide(width: 1))),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                  'assets/images/work.svg',
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Experience',
                                  style: myFontStyle(
                                      12, FontWeight.w400, textPureBlack, 2),
                                ),
                                Text(
                                  '${specialist.rating}+Years',
                                  style: myFontStyle(
                                      14, FontWeight.w600, textPureBlack),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 1,
                          height: 35,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                  'assets/images/patient.svg',
                                  width: 20,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Patients',
                                  style: myFontStyle(
                                      12, FontWeight.w400, textPureBlack, 2),
                                ),
                                Text(
                                  '${specialist.patients}+',
                                  style: myFontStyle(
                                      14, FontWeight.w600, textPureBlack),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 1,
                          height: 35,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                  'assets/images/note.svg',
                                  width: 20,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Certification',
                                  style: myFontStyle(
                                      12, FontWeight.w400, textPureBlack, 2),
                                ),
                                Text(
                                  '${specialist.certification}',
                                  style: myFontStyle(
                                      14, FontWeight.w600, textPureBlack),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Text('Consultant Fee : ${specialist.fees} Taka',textAlign: TextAlign.center,style: myFontStyle(20,FontWeight.w700,secondaryColor),),
                ),
                Text(
                  'Biography',
                  style: categoryStyle(),
                ),
                Text('${specialist.biography}',style: myFontStyle(12,FontWeight.w400,text2Clr,1.5),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Schedule',
                    style: categoryStyle(),
                  ),
                ),
                Container(height: 60,child: Placeholder(),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Choose Time',
                    style: categoryStyle(),
                  ),
                ),
                Container(height: 100,child: Placeholder(),),
                SizedBox(height: 55,),
                CustomButton(btnText: 'Book Appointment',
                  onTap: (){},
                  isIcon: true,
                  addIcon: Icons.arrow_right_alt,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
