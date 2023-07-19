import 'package:doctor_app/models/doctors_category.dart';
import 'package:doctor_app/screens/home/category_details_screen.dart';
import 'package:doctor_app/settings/refactoring_widgets/Custom_widgets.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Telemedicine extends StatelessWidget {
  const Telemedicine({super.key});
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                size: mq.height * .03,
              ),
            )),
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
                'Choose from top specialists',
                style: categoryStyle(),
              ),
            ),
            Container(
              height: 200,
              child: GridView.builder(
                itemCount: specialistsList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.1,
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,

                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryDetailsScreen(specialist: specialistsList[index]),));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: mq.height * .07,
                          width: mq.width * .18,
                          decoration: BoxDecoration(
                              color: secondaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              '${specialistsList[index].icon}',
                              color: secondaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: mq.width * .18,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '${specialistsList[index].categoryName}',
                            style: myFontStyle(12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Skin and Hair Issues',
                style: categoryStyle(),
              ),
            ),
            Container(
              height: 100,
              child: GridView.builder(
                itemCount: specialistsList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.1,
                  crossAxisCount: 1,
                  mainAxisSpacing: 0,

                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryDetailsScreen(specialist: specialistsList[index]),));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: mq.height * .07,
                          width: mq.width * .18,
                          decoration: BoxDecoration(
                              color: secondaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              '${specialistsList[index].icon}',
                              color: secondaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: mq.width * .18,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '${specialistsList[index].categoryName}',
                            style: myFontStyle(12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Common Health issues',
                style: categoryStyle(),
              ),
            ),
            Container(
              height: 100,
              child: GridView.builder(
                itemCount: specialistsList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.1,
                  crossAxisCount: 1,
                  mainAxisSpacing: 0,

                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryDetailsScreen(specialist: specialistsList[index]),));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: mq.height * .07,
                          width: mq.width * .18,
                          decoration: BoxDecoration(
                              color: secondaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              '${specialistsList[index].icon}',
                              color: secondaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: mq.width * .18,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '${specialistsList[index].categoryName}',
                            style: myFontStyle(12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
