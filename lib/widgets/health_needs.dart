// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "More", icon: 'assets/more.png'),
    ];
    List<CustomIcon> healthNeeds = [
      CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
    ];
    List<CustomIcon> specializedCare = [
      CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
      CustomIcon(name: "Health Care", icon: 'assets/health_care.png'),
      CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
      CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(90),
              onTap: () {
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        height: 350,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Health Needs", style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(healthNeeds.length, (index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      borderRadius: BorderRadius.circular(90),
                                      onTap: () {},
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          healthNeeds[index].icon,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(healthNeeds[index].name)
                                  ],
                                );
                              }),
                            ),
                            const SizedBox(height: 30),
                            Text("Specialised Care", style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(specializedCare.length, (index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      borderRadius: BorderRadius.circular(90),
                                      onTap: () {},
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          specializedCare[index].icon,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(specializedCare[index].name)
                                  ],
                                );
                              }),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  customIcons[index].icon,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
