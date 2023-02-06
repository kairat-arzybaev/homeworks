import 'package:clinic_app/assets/themes/app_images.dart';
import 'package:clinic_app/assets/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../assets/themes/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const Text(
                'Мой профиль',
                style: AppTextStyles.headline1,
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.lightBlue,
                radius: 60,
                child: Text(
                  'AA',
                  style:
                      AppTextStyles.avatarText.copyWith(color: AppColors.white),
                ),
              ),
              Positioned(
                top: 80,
                left: 80,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: AppColors.buttonColorBlue, shape: BoxShape.circle),
                  child: IconButton(
                    iconSize: 16,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_camera,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Айзан Алишерова',
            style: AppTextStyles.headline2,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '+996 555 78 65 65',
            style: AppTextStyles.headline3,
          ),
          DefaultTabController(
            initialIndex: 0,
            length: 3,
            child: Expanded(
              child: Column(children: [
                TabBar(
                    labelColor: AppColors.mediumBlue,
                    unselectedLabelColor: AppColors.mediumBlue.withOpacity(0.5),
                    tabs: const [
                      Tab(
                        icon: Icon(
                          Icons.colorize_outlined,
                        ),
                        text: 'Анализы',
                      ),
                      Tab(
                        icon: Icon(
                          Icons.screen_lock_landscape_outlined,
                        ),
                        text: 'Диагнозы',
                      ),
                      Tab(
                        icon: Icon(
                          Icons.messenger,
                        ),
                        text: 'Рекомендации',
                      )
                    ]),
                Expanded(
                  child: TabBarView(children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/clipboard.png',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'У вас пока нет добавленных результатов анализов',
                          style: AppTextStyles.headline3
                              .copyWith(color: AppColors.inActive),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.note_add,
                                  color: AppColors.buttonColorBlue,
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Добавить документы',
                                  style: AppTextStyles.text1,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/diagnose.png',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'У вас пока нет добавленных результатов анализов',
                          style: AppTextStyles.headline3
                              .copyWith(color: AppColors.inActive),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.note_add,
                                  color: AppColors.buttonColorBlue,
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Добавить документы',
                                  style: AppTextStyles.text1,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(AppImages.recommendation),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'У вас пока нет добавленных рекомендаций',
                          style: AppTextStyles.headline3
                              .copyWith(color: AppColors.inActive),
                        )
                      ],
                    )
                  ]),
                )
              ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 36,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.buttonColorBlue,
          unselectedItemColor: AppColors.inActive,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add), label: 'Доктора'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: 'Статьи'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: 'Мои доктора'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.medical_services,
            ),
            Text('Вызов')
          ],
        ),
      ),
    );
  }
}
