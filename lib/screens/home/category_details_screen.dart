import 'package:doctor_app/models/doctors_category.dart';
import 'package:doctor_app/screens/home/doctor_details_screen.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final TopSpecialists specialist;

  const CategoryDetailsScreen({super.key, required this.specialist});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Specialist Doctors'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: mq.width * .04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: TextField(
                      style: myFontStyle(20, FontWeight.w400, textPureBlack),
                      onTapOutside: (event) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      cursorColor: primaryColors,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: secondaryColor.withOpacity(0.2),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        contentPadding: const EdgeInsets.all(14),
                        hintText: 'Eg, fever, cold',
                        hintStyle:
                        myFontStyle(20, FontWeight.w400, Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: SvgPicture.asset(
                            'assets/images/search.svg',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: mq.height * .06,
                    width: mq.width * .15,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/filter.svg',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '${specialist.categoryName}',
                style: categoryStyle(),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: specialistsList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorDetailsScreen(specialist: specialist)));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 210,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1,color: secondaryColor),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "${specialist.doctorsPic}",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  )),
                              Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5,),
                                      Text(
                                        "${specialist.doctorsName}",
                                        style: myFontStyle(16, FontWeight.w600, textPureBlack),
                                      ),
                                      Text(
                                        "${specialist.specialist}",
                                        style: myFontStyle(12, FontWeight.w400, text2Clr),
                                      ),
                                      const SizedBox(height: 5,),
                                      Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                    margin: const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                    child: const Icon(
                                                      Icons.star,
                                                      size: 15,
                                                      color: Colors.amber,
                                                    )),
                                                Text(
                                                  "${specialist.rating}(${specialist.numOfRating})",
                                                  style: myFontStyle(
                                                      10, FontWeight.w400, text2Clr),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    margin:
                                                    const EdgeInsets.symmetric(horizontal: 3),
                                                    child: Icon(
                                                      Icons.work_history_outlined,
                                                      size: 15,
                                                      color: secondaryColor,
                                                    )),
                                                Text("${specialist.experience}+Years",
                                                    style: myFontStyle(
                                                        10, FontWeight.w400, text2Clr)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 30,
                                        width: double.infinity,
                                        color: secondaryColor.withOpacity(0.1),
                                        child: Center(
                                            child: Text(
                                              'Consultant Fee : ${specialist.fees} BDT',
                                              textAlign: TextAlign.center,
                                              style: myFontStyle(
                                                  12, FontWeight.w400, primaryColors),
                                            )),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )

      ),
    );
  }
}
