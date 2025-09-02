import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPoicyPage extends StatelessWidget {
  const PrivacyPoicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Privacy Policy"),
      backgroundColor: AppColors.colorThird,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            Text(
              "Privacy Policy for Deyram".tr(),
              style:
                  AppTextStyles.whit20ww700.copyWith(color: Color(0xff434343)),
            ),
            Text(
              "At Deyram.com, accessible from makemeup.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Deyram.com and how we use it. If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us. This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Deyram.com. This policy is not applicable to any information collected offline or via channels other than this website. Consent By using our website, you hereby consent to our Privacy Policy and agree to its terms."
                  .tr(),
              style:
                  AppTextStyles.whid18w400.copyWith(color: Color(0xff434343)),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Information we collect\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.\n'
                            'If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.\n'
                            'When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'How we use your information\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: '• Provide, operate, and maintain our website\n'
                            '• Improve, personalize, and expand our website\n'
                            '• Understand and analyze how you use our website\n'
                            '• Develop new products, services, features, and functionality\n'
                            '• Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes\n'
                            '• Send you emails\n'
                            '• Find and prevent fraud\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Log Files\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'makemeup.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include:\n'
                            '• Internet protocol (IP) addresses\n'
                            '• Browser type\n'
                            '• Internet Service Provider (ISP)\n'
                            '• Date and time stamp\n'
                            '• Referring/exit pages\n'
                            '• Possibly the number of clicks\n'
                            'These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Cookies and Web Beacons\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Like any other website, makemeup.com uses "cookies". These cookies are used to store information including:\n'
                            '• Visitors\' preferences\n'
                            '• The pages on the website that the visitor accessed or visited\n'
                            'The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Google DoubleClick DART Cookie\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text:
                        'Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – '
                            .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'https://policies.google.com/technologies/ads\n'.tr(),
                    style:
                        AppTextStyles.whid18w400.copyWith(color: Colors.blue),
                  ),
                  TextSpan(
                    text: 'Advertising Partners\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text:
                        'Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.\n'
                            .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Google\n'.tr(),
                    style:
                        AppTextStyles.whid18w400.copyWith(color: Colors.blue),
                  ),
                  TextSpan(
                    text: 'https://policies.google.com/technologies/ads\n'.tr(),
                    style:
                        AppTextStyles.whid18w400.copyWith(color: Colors.blue),
                  ),
                  TextSpan(
                    text:
                        'CCPA Privacy Rights (Do Not Sell My Personal Information)\n'
                            .tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Under the CCPA, among other rights, California consumers have the right to:\n'
                            '• Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.\n'
                            '• Request that a business delete any personal data about the consumer that a business has collected.\n'
                            '• Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.\n'
                            'If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'GDPR Data Protection Rights\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:\n'
                            '• The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.\n'
                            '• The right to rectification – You have the right to request that we correct any information you believe is inaccurate.\n'
                            '• The right to erasure – You have the right to request that we erase your personal data, under certain conditions.\n'
                            '• The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.\n'
                            '• The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.\n'
                            '• The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.\n'
                            'If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Children\'s Information\n'.tr(),
                    style: AppTextStyles.whit20ww700
                        .copyWith(color: Color(0xff434343)),
                  ),
                  TextSpan(
                    text: 'Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.\n'
                            'makemeup.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.\n'
                        .tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff434343)),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
