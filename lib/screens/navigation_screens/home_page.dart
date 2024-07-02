import 'package:flutter/material.dart';
import 'package:logistics/components/custom_button.dart';
import 'package:logistics/components/custom_icon_button.dart';
import 'package:logistics/components/custom_text_field.dart';
import 'package:logistics/theme/colors.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StickyHeader(
                  overlapHeaders: false,
                  header: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          ///
                          /// notification panel
                          ///
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.notifications_none_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    size: 30,
                                  ))
                            ],
                          ),

                          ///
                          /// top header
                          ///
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // top icon and welcome text
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: Icon(
                                            Icons.waving_hand,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            size: 18,
                                          ),
                                        ),
                                        Text(
                                          'Welcome James',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),

                                    // secondary text
                                    Expanded(
                                      child: Text(
                                        'We are ready to serve you',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // profile photo
                              Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/pp.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  ///
                  /// content for the sticky header
                  ///
                  content: Column(
                    children: [
                      /// loading the tracking number details
                      ///
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0x1400696B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // top text
                              Text(
                                'Track your load',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 8, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    // icon button
                                    CustomIconButton(
                                        icon: Icons.qr_code,
                                        foregroundColor: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        borderColor: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        onPressed: () {
                                          //Navigator.popAndPushNamed(context, '');
                                        }),

                                    // text input
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 0, 0, 0),
                                        child: CustomTextFormField(
                                          hintText: 'Enter load number',
                                          keyboardType: TextInputType.text,
                                          onChanged: (String value) {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Button
                              Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: CustomButton(
                                      text: "Track",
                                      foregroundColor: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      onPressed: () {
                                        //Navigator.popAndPushNamed(context, '');
                                      })),
                            ],
                          ),
                        ),
                      ),

                      /// deliveries container
                      ///
                      ///
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                // header text
                                Text(
                                  'Track Deliveries',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),

                                Text(
                                  'Sell All',
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).colorScheme.primary,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14
                                  ),
                                )
                              ],
                            ),

                            InkWell(
                              onTap: (){},
                              borderRadius: BorderRadius.circular(12),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                              
                                    // delivery header text
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                              'Siku Transport Ltd',
                                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                  fontWeight: FontWeight.w700
                                              )
                                          ),
                                        ),
                                        Text(
                                          'in 5 hours',
                                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                            color: AppColors.hint,
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                              
                                    // filters
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          _deliveryFilters("652km left"),
                                          _deliveryFilters("FTL"),
                                          _deliveryFilters("1.5 ton"),
                                        ],
                                      ),
                                    ),
                              
                                    // origin
                                    Container(
                                      width: double.infinity,
                                      constraints: const BoxConstraints(
                                        maxWidth: 570,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                      'Blantyre, BT',
                                                      style: Theme.of(context).textTheme.bodySmall
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 0,
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    offset: const Offset(
                                                      -2,
                                                      0,
                                                    ),
                                                  )
                                                ],
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                        child: Text(
                                                          '09-06-2024',
                                                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                            color: Theme.of(context).colorScheme.onSurface,
                                                            fontSize: 12,
                                                            letterSpacing: 0,
                                                            fontWeight: FontWeight.normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                              
                                    // destination
                                    Container(
                                      width: double.infinity,
                                      constraints: const BoxConstraints(
                                        maxWidth: 570,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Theme.of(context).colorScheme.secondary,
                                                size: 20,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                      'Lilongwe, LL',
                                                      style: Theme.of(context).textTheme.bodySmall
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '09-06-2024',
                                                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                          color: Theme.of(context).colorScheme.onSurface,
                                                          fontSize: 12,
                                                          letterSpacing: 0,
                                                          fontWeight: FontWeight.normal,
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// services container
                      ///
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 10),
                              child: Text(
                                'Type of Service',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),

                            // Services
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                InkWell(
                                  borderRadius: BorderRadius.circular(24),
                                  child: _servicesCard(
                                      "Truck", "assets/images/truck.png"),
                                  onTap: (){},
                                ),

                                InkWell(
                                  borderRadius: BorderRadius.circular(24),
                                  child: _servicesCard(
                                      "Ship", "assets/images/ship.png"),
                                  onTap: (){},
                                ),

                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  ///
  /// Widget that duplicates how the services should look like
  ///
  Widget _servicesCard(String headText, String image) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.425,
        height: 160,
        decoration: BoxDecoration(
          color: const Color(0x1400696B),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        headText,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Theme.of(context).colorScheme.background,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        image,
                        width: 300,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }

  Widget _deliveryFilters(String text) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0x1400696B),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 11,
              letterSpacing: 0,
            ),
          ),
        ),
      ),
    );
  }
}
