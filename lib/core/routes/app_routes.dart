
// import 'package:my_salon/core/app/manager/app_manager_state.dart';
// import 'package:my_salon/core/app/manager/app_manager_cubit.dart';// import 'package:my_salon/featchers/All/presentation/pages/All_Product_Page.dart';
// import 'package:my_salon/featchers/All/presentation/pages/near_suppliers_page.dart';
// import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/booking_an_appointment_freelance_product_page.dart';
// import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/booking_confirmation_freelance_page.dart';
// import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
// import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Display_Other_Services_Page.dart';
// import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Invoice_Details_Page.dart';
// import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_salon_invoice_details_page.dart';
// import 'package:my_salon/featchers/Cart/presentation/pages/wallet_page.dart';
// import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
// import 'package:my_salon/featchers/Home/presentation/pages/Home_Content_Page.dart';
// import 'package:my_salon/featchers/Home/presentation/pages/Home_page.dart';
// import 'package:my_salon/featchers/Home/presentation/pages/provider_profile_page.dart';
// import 'package:my_salon/featchers/Home/presentation/pages/services_category_page.dart';
// import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/change_password_page.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/Create_new_account_page.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/login_page.dart';
// import 'package:my_salon/core/routes/routes_path.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/o_t_p_number_page.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/phone_number_page.dart';
// import 'package:my_salon/featchers/auth/presentation/pages/Select_Location_Page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// class AppRoutes {
//   static GoRouter router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//           path: RoutesPath.login,
//           builder: (BuildContext context, GoRouterState state) {
//             return BlocBuilder<AppManagerCubit, AppManagerState>(
//                 builder: (context, state) {
//               return state.authResponseModel != null
//                   ? const HomePage()
//                   : const LoginPage();
//             });
//           },
//           routes: [
//             GoRoute(
//                 path: RoutesPath.home,
//                 builder: (context, state) {
//                   return BlocProvider.value(
//                       value: state.extra as AuthCubit, child: const HomePage());
//                 }),
//             GoRoute(
//                 path: RoutesPath.register,
//                 builder: (context, state) {
//                   return BlocProvider(
//                       create: (context) => AuthCubit(),
//                       child: CreateNewAccountPage());
//                 }),
//             GoRoute(
//               path: RoutesPath.nearSuppliers,
//               builder: (context, state) => NearSuppliersPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.servicesCategory,
//               builder: (context, state) => const ServicesCategoryPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.allProduct,
//               builder: (context, state) => const AllProductPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.phoneNumberPage,
//               builder: (context, state) => PhoneNumberPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.homeContent,
//               builder: (context, state) => BlocProvider.value(
//                   value:BlocProvider.of<AuthCubit>(context) , child: const HomeContentPage()),
//             ),
//             GoRoute(
//               path: RoutesPath.changePassword,
//               builder: (context, state) => const ChangePasswordPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.otpNumber,
//               builder: (context, state) => const OtpNumberPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.selectLocation,
//               builder: (context, state) => SelectLocation(
//                 onPressed: () {
//                   context.go(RoutesPath.login);
//                 },
//               ),
//             ),
//             GoRoute(
//               path: RoutesPath.bookingConfirmationFreelance,
//               name: 'bookingConfirmationFreelance',
//               builder: (context, state) {
//                 final price = state.extra as double;
//                 return BookingConfirmationFreelancePage(price: price);
//               },
//             ),
//             GoRoute(
//               path: RoutesPath.bookingFreelanceProduct,
//               name: 'bookingFreelanceProduct',
//               builder: (context, state) {
//                 final addedServices = state.extra as List<AddServiceModel>;
//                 return BookingAnAppointmentFreelanceProductPage(
//                     addedServices: addedServices);
//               },
//             ),
//             GoRoute(
//               path: RoutesPath.providerProfile,
//               name: 'providerProfile',
//               builder: (context, state) => ProviderProfilePage(),
//             ),
//             GoRoute(
//               path: RoutesPath.freelanceProfile,
//               name: 'freelanceProfile',
//               builder: (context, state) => FrelanceProfilePage(),
//             ),
//             GoRoute(
//               path: RoutesPath.wHouseInvoiceDetails,
//               name: 'wHouseInvoiceDetails',
//               builder: (context, state) => WHouseInvoiceDetailsPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.wHouseDisplayOtherServices,
//               name: 'wHouseDisplayOtherServices',
//               builder: (context, state) => WHouseDisplayOtherServicesPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.wSalonInvoiceDetails,
//               name: 'wSalonInvoiceDetails',
//               builder: (context, state) => WSalonInvoiceDetailsPage(),
//             ),
//             GoRoute(
//               path: RoutesPath.wallet,
//               name: 'wallet',
//               builder: (context, state) => const WalletPage(),
//             ),

//             //!_________________________________________________________________________________________
//           ]),
//     ],
//   );
// }
