import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/body_appointment_card_model_dummy.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/provider_info_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';

import 'package:my_salon/featchers/Booking%20Freelance/data/model/option_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Freelance/data/model/service_item_buy_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/data/model/provider_model_dummy.dart';
import 'package:my_salon/featchers/Cart/data/model/card_item_wallet_model_dummy.dart';
import 'package:my_salon/featchers/Cart/data/model/point_reward_item_model.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:my_salon/featchers/Home/data/model/cosmet_providers_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/Cosmetic_Item_Model_Dummy.dart';
import 'package:my_salon/featchers/Home/data/model/services_all_provider_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/image_item_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/address_model.dart';
import 'package:my_salon/featchers/Home/data/model/city_model.dart';
import 'package:my_salon/featchers/Home/data/model/nearest_model.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';
import 'package:my_salon/featchers/Home/data/model/region_model.dart';
import 'package:my_salon/featchers/My%20Booking/data/model/service_card_model_dummy.dart';
import 'package:my_salon/featchers/Notification/data/model/notification_item_model_dummy.dart';
import 'package:my_salon/featchers/Profile/data/model/order_canceled_model_dummy.dart';
import 'package:my_salon/featchers/Profile/data/model/order_complete_model_dummy.dart';
import 'package:my_salon/featchers/Profile/data/model/order_pending_model_dummy.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/data/model/user_data_model.dart';

class DummyData {
  static List<String> imageSliderListDUMMY = [
    'https://picsum.photos/124/86?random=5',
    'https://picsum.photos/124/86?random=6',
    'https://picsum.photos/124/86?random=7',
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<ImageItemDUMMY> imageItemListDUMMY = [
    ImageItemDUMMY(
      id: 1,
      appImage: 'https://picsum.photos/124/86?random=40',
      title: 'Item 1',
    ),
    ImageItemDUMMY(
      id: 2,
      appImage: 'https://picsum.photos/124/86?random=41',
      title: 'Item 2',
    ),
    ImageItemDUMMY(
      id: 3,
      appImage: 'https://picsum.photos/124/86?random=42',
      title: 'Item 3',
    ),
    ImageItemDUMMY(
      id: 4,
      appImage: 'https://picsum.photos/124/86?random=43',
      title: 'Item 4',
    ),
    ImageItemDUMMY(
      id: 5,
      appImage: 'https://picsum.photos/124/86?random=44',
      title: 'Item 5',
    ),
    ImageItemDUMMY(
      id: 6,
      appImage: 'https://picsum.photos/124/86?random=45',
      title: 'Item 6',
    ),
    ImageItemDUMMY(
      id: 7,
      appImage: 'https://picsum.photos/124/86?random=46',
      title: 'Item 7',
    ),
    ImageItemDUMMY(
      id: 8,
      appImage: 'https://picsum.photos/124/86?random=47',
      title: 'Item 8',
    ),
    ImageItemDUMMY(
      id: 9,
      appImage: 'https://picsum.photos/124/86?random=48',
      title: 'Item 9',
    ),
    ImageItemDUMMY(
      id: 10,
      appImage: 'https://picsum.photos/124/86?random=49',
      title: 'Item 10',
    ),
    ImageItemDUMMY(
      id: 11,
      appImage: 'https://picsum.photos/124/86?random=50',
      title: 'Item 11',
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<CosmeticProvidersModelDUMMY> cosmeticProvidersListDUMMY = [
    CosmeticProvidersModelDUMMY(
      title: "Luxury Lipstick",
      location: "Dubai, United Arab Emirates",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=50",
      profileImage: "https://picsum.photos/124/86?random=51",
      rating: 4.5,
      reviews: 45,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Glow Foundation",
      location: "Paris, France",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=52",
      profileImage: "https://picsum.photos/124/86?random=53",
      rating: 4.8,
      reviews: 120,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Hydrating Face Cream",
      location: "New York, USA",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=54",
      profileImage: "https://picsum.photos/124/86?random=55",
      rating: 4.7,
      reviews: 80,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Matte Compact Powder",
      location: "London, UK",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=56",
      profileImage: "https://picsum.photos/124/86?random=57",
      rating: 4.6,
      reviews: 65,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Waterproof Mascara",
      location: "Tokyo, Japan",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=58",
      profileImage: "https://picsum.photos/124/86?random=59",
      rating: 4.9,
      reviews: 150,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Organic Face Serum",
      location: "Berlin, Germany",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=60",
      profileImage: "https://picsum.photos/124/86?random=61",
      rating: 4.3,
      reviews: 33,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Vitamin C Moisturizer",
      location: "Sydney, Australia",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=62",
      profileImage: "https://picsum.photos/124/86?random=63",
      rating: 4.8,
      reviews: 95,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Herbal Shampoo",
      location: "Milan, Italy",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=64",
      profileImage: "https://picsum.photos/124/86?random=65",
      rating: 4.4,
      reviews: 52,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Aloe Vera Gel",
      location: "Los Angeles, USA",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=66",
      profileImage: "https://picsum.photos/124/86?random=67",
      rating: 4.2,
      reviews: 40,
    ),
    CosmeticProvidersModelDUMMY(
      title: "Coconut Hair Oil",
      location: "Mumbai, India",
      category: "Cosmetics",
      appImage: "https://picsum.photos/124/86?random=68",
      profileImage: "https://picsum.photos/124/86?random=69",
      rating: 4.7,
      reviews: 120,
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<CosmeticItemModelDUMMY> cosmeticItemsListDUMMY = [
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=10",
      profileAppImage: "https://picsum.photos/124/86?random=11",
      title: "Luxury Lipstick",
      location: "Dubai, UAE",
      distance: 2,
      rating: 4.5,
      reviewsCount: 45,
      serviceType: ServiceType.Salon,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=12",
      profileAppImage: "https://picsum.photos/124/86?random=13",
      title: "Glow Foundation",
      location: "Paris, France",
      distance: 5,
      rating: 4.8,
      reviewsCount: 120,
      serviceType: ServiceType.Freelance,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=14",
      profileAppImage: "https://picsum.photos/124/86?random=15",
      title: "Hydrating Face Cream",
      location: "New York, USA",
      distance: 3,
      rating: 4.7,
      reviewsCount: 80,
      serviceType: ServiceType.Salon,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=16",
      profileAppImage: "https://picsum.photos/124/86?random=17",
      title: "Matte Compact Powder",
      location: "London, UK",
      distance: 1,
      rating: 4.6,
      reviewsCount: 65,
      serviceType: ServiceType.Freelance,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=18",
      profileAppImage: "https://picsum.photos/124/86?random=19",
      title: "Waterproof Mascara",
      location: "Tokyo, Japan",
      distance: 4,
      rating: 4.9,
      reviewsCount: 150,
      serviceType: ServiceType.Salon,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=20",
      profileAppImage: "https://picsum.photos/124/86?random=21",
      title: "Organic Face Serum",
      location: "Berlin, Germany",
      distance: 6,
      rating: 4.3,
      reviewsCount: 33,
      serviceType: ServiceType.Freelance,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=22",
      profileAppImage: "https://picsum.photos/124/86?random=23",
      title: "Vitamin C Moisturizer",
      location: "Sydney, Australia",
      distance: 3,
      rating: 4.8,
      reviewsCount: 95,
      serviceType: ServiceType.Salon,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=24",
      profileAppImage: "https://picsum.photos/124/86?random=25",
      title: "Herbal Shampoo",
      location: "Milan, Italy",
      distance: 2,
      rating: 4.4,
      reviewsCount: 52,
      serviceType: ServiceType.Freelance,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=26",
      profileAppImage: "https://picsum.photos/124/86?random=27",
      title: "Aloe Vera Gel",
      location: "Los Angeles, USA",
      distance: 7,
      rating: 4.2,
      reviewsCount: 40,
      serviceType: ServiceType.Salon,
    ),
    CosmeticItemModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=28",
      profileAppImage: "https://picsum.photos/124/86?random=29",
      title: "Coconut Hair Oil",
      location: "Mumbai, India",
      distance: 8,
      rating: 4.7,
      reviewsCount: 120,
      serviceType: ServiceType.Freelance,
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<ServicesAllProviderModelDUMMY> freelancersDUMMY = [
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=81',
      name: 'John Doe',
      subtitle: 'UI/UX Designer',
      rating: 4.5,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=82',
      name: 'Jane Smith',
      subtitle: 'Flutter Developer',
      rating: 4.7,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=83',
      name: 'Ali Hassan',
      subtitle: 'Backend Developer',
      rating: 4.2,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=84',
      name: 'Sara Lee',
      subtitle: 'Graphic Designer',
      rating: 4.8,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=85',
      name: 'David Martin',
      subtitle: 'Full Stack Developer',
      rating: 4.3,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=86',
      name: 'Maria Garcia',
      subtitle: 'Mobile Developer',
      rating: 4.6,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=87',
      name: 'Peter Brown',
      subtitle: 'DevOps Engineer',
      rating: 4.1,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=88',
      name: 'Olivia Taylor',
      subtitle: 'Product Manager',
      rating: 4.4,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=89',
      name: 'Liam Scott',
      subtitle: 'Data Scientist',
      rating: 4.9,
    ),
    ServicesAllProviderModelDUMMY(
      appImage: 'https://picsum.photos/124/86?random=90',
      name: 'Emily Johnson',
      subtitle: 'Project Lead',
      rating: 5.0,
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  static List<ServiceCardModelDUMMY> serviceCardListDUMMY = [
    ServiceCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=172",
        title: "Home Cleaning",
        minute: 60,
        hour: 4,
        price: 100.0,
      ),
      statusText: "2 Two escorts",
      providerAppImage: "https://picsum.photos/124/86?random=175",
      providerName: "Technical Name",
      providerSpecialty: "Skin Care Specialist",
    ),
    ServiceCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=173",
        title: "Haircut",
        minute: 45,
        hour: 1,
        price: 30.0,
      ),
      statusText: "Confirmed",
      providerAppImage: "https://picsum.photos/124/86?random=176",
      providerName: "John Doe",
      providerSpecialty: "Barber",
    ),
    ServiceCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=174",
        title: "Massage Therapy",
        minute: 90,
        hour: 2,
        price: 75.0,
      ),
      statusText: "Pending",
      providerAppImage: "https://picsum.photos/124/86?random=177",
      providerName: "Emma Wilson",
      providerSpecialty: "Massage Therapist",
    ),
    ServiceCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=172",
        title: "Home Cleaning",
        minute: 60,
        hour: 4,
        price: 100.0,
      ),
      statusText: "2 Two escorts",
      providerAppImage: "https://picsum.photos/124/86?random=175",
      providerName: "Technical Name",
      providerSpecialty: "Skin Care Specialist",
    ),
    ServiceCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=179",
        title: "Home Cleaning",
        minute: 60,
        hour: 4,
        price: 100.0,
      ),
      statusText: "2 Two escorts",
      providerAppImage: "https://picsum.photos/124/86?random=123",
      providerName: "Technical Name",
      providerSpecialty: "Skin Care Specialist",
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<ProductModelDUMMY> productsDUMMY = [
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=100",
        productName: "Black T-Shirt",
        originalPrice: 199,
        discountedPrice: 149,
        description:
            "A comfortable black T-shirt made from high-quality cotton."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=101",
        productName: "Blue Jeans",
        originalPrice: 250,
        discountedPrice: 180,
        description:
            "Slim fit blue jeans with a classic design, perfect for everyday wear."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=102",
        productName: "Running Shoes",
        originalPrice: 350,
        discountedPrice: 270,
        description:
            "Durable running shoes with excellent grip for outdoor activities."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=103",
        productName: "Leather Wallet",
        originalPrice: 120,
        discountedPrice: 80,
        description:
            "Genuine leather wallet with multiple card slots and a sleek design."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=104",
        productName: "Smartwatch",
        originalPrice: 499,
        discountedPrice: 380,
        description:
            "A modern smartwatch with fitness tracking and notification features."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=105",
        productName: "Sunglasses",
        originalPrice: 150,
        discountedPrice: 110,
        description:
            "Stylish sunglasses with UV protection, perfect for sunny days."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=106",
        productName: "Backpack",
        originalPrice: 220,
        discountedPrice: 170,
        description:
            "A spacious and durable backpack with multiple compartments."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=107",
        productName: "Winter Jacket",
        originalPrice: 450,
        discountedPrice: 320,
        description:
            "A warm and insulated jacket designed for cold winter days."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=108",
        productName: "Bluetooth Headphones",
        originalPrice: 300,
        discountedPrice: 210,
        description:
            "Wireless Bluetooth headphones with high-quality sound and comfort."),
    ProductModelDUMMY(
        AppImage: "https://picsum.photos/124/86?random=109",
        productName: "Camera Lens",
        originalPrice: 750,
        discountedPrice: 620,
        description:
            "A high-quality camera lens suitable for professional photographers."),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<BodyAppointmentCardModelDUMMY> appointmentsDUMMY = [
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=120",
        title: "Car Cleaning",
        minute: 30,
        hour: 2,
        price: 50.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Mohammed Ali",
        status: "Available",
      ),
      location: "Riyadh - King Fahd Street",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 12,
          month: 2,
          year: 2025,
        ),
        hour: 10,
        minute: 15,
        period: TimePeriod.AM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=121",
        title: "Haircut",
        minute: 45,
        hour: 1,
        price: 30.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Ahmed Hassan",
        status: "Busy",
      ),
      location: "Jeddah - Al Rawdah District",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 14,
          month: 2,
          year: 2025,
        ),
        hour: 3,
        minute: 30,
        period: TimePeriod.PM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=122",
        title: "Home Cleaning",
        minute: 60,
        hour: 4,
        price: 100.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Sarah Khaled",
        status: "Available",
      ),
      location: "Dammam - Al Khaleej Street",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 16,
          month: 2,
          year: 2025,
        ),
        hour: 9,
        minute: 0,
        period: TimePeriod.AM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=123",
        title: "Electronics Repair",
        minute: 90,
        hour: 2,
        price: 150.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Khalid Fahd",
        status: "Available",
      ),
      location: "Khobar - Al Olaya District",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 18,
          month: 2,
          year: 2025,
        ),
        hour: 11,
        minute: 45,
        period: TimePeriod.AM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=124",
        title: "Delivery Service",
        minute: 20,
        hour: 1,
        price: 20.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Abdullah Nasser",
        status: "Busy",
      ),
      location: "Mecca - Al Aziziyah District",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 20,
          month: 2,
          year: 2025,
        ),
        hour: 5,
        minute: 10,
        period: TimePeriod.PM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=125",
        title: "Plumbing Service",
        minute: 40,
        hour: 3,
        price: 80.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Faisal Rashid",
        status: "Available",
      ),
      location: "Medina - Prince Naif Street",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 22,
          month: 2,
          year: 2025,
        ),
        hour: 8,
        minute: 20,
        period: TimePeriod.AM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=126",
        title: "Home Electrician",
        minute: 50,
        hour: 2,
        price: 120.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Hossam Omar",
        status: "Busy",
      ),
      location: "Abha - Al Sadd District",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 24,
          month: 2,
          year: 2025,
        ),
        hour: 6,
        minute: 30,
        period: TimePeriod.PM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=127",
        title: "Interior Design",
        minute: 120,
        hour: 4,
        price: 300.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Noor Al Said",
        status: "Available",
      ),
      location: "Qassim - King Abdullah District",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 26,
          month: 2,
          year: 2025,
        ),
        hour: 9,
        minute: 15,
        period: TimePeriod.AM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=128",
        title: "Car Repair",
        minute: 75,
        hour: 3,
        price: 200.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Majed Al Qahtani",
        status: "Busy",
      ),
      location: "Hail - New Industrial Area",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 28,
          month: 2,
          year: 2025,
        ),
        hour: 7,
        minute: 50,
        period: TimePeriod.PM,
      ),
    ),
    BodyAppointmentCardModelDUMMY(
      serviceInfo: ServiceInfoModelDUMMY(
        appImage: "https://picsum.photos/124/86?random=129",
        title: "Courier Service",
        minute: 15,
        hour: 1,
        price: 15.0,
      ),
      providerInfoModel: ProviderInfoModel(
        providerName: "Ziad Al Mutairi",
        status: "Available",
      ),
      location: "Jazan - North Corniche",
      bookingDateTime: BookingDateTime(
        date: BookingDate(
          day: 1,
          month: 3,
          year: 2025,
        ),
        hour: 12,
        minute: 0,
        period: TimePeriod.AM,
      ),
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<RateProductDetailsModelDUMMY> reviewsDUMMY = [
    RateProductDetailsModelDUMMY(
      // reviewerImage: "https://picsum.photos/124/86?random=1",
      reviewerName: "Reem mohammad",
      rating: 3.5,
    ),
    RateProductDetailsModelDUMMY(
      // reviewerImage: "https://picsum.photos/124/86?random=2",
      reviewerName: "Ahmed Ali",
      rating: 4.0,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=3",
      reviewerName: "Sara Khaled",
      rating: 5.0,
    ),
    RateProductDetailsModelDUMMY(
      // reviewerImage: "https://picsum.photos/124/86?random=4",
      reviewerName: "Mona Youssef",
      rating: 2.0,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=5",
      reviewerName: "Khaled Hassan",
      rating: 4.5,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=6",
      reviewerName: "Lina Fathi",
      rating: 3.0,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=7",
      reviewerName: "Omar Ibrahim",
      rating: 4.8,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=8",
      reviewerName: "Salma Mostafa",
      rating: 2.6,
    ),
    RateProductDetailsModelDUMMY(
      // reviewerImage: "https://picsum.photos/124/86?random=9",
      reviewerName: "Ali Ahmed",
      rating: 5.0,
    ),
    RateProductDetailsModelDUMMY(
      reviewerImage: "https://picsum.photos/124/86?random=10",
      reviewerName: "Hala Mahmoud",
      rating: 1.9,
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<OrderCanceledModelDUMMY> orderCanceledListDUMMY = [
    OrderCanceledModelDUMMY(
      isGuest: false,
      orderId: 123,
      date: BookingDate(day: 15, month: 4, year: 2025),
      price: 50.0,
      providerAppImage: "https://picsum.photos/124/86?random=41",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
    ),
    OrderCanceledModelDUMMY(
      isGuest: true,
      orderId: 124,
      date: BookingDate(day: 16, month: 4, year: 2025),
      price: 55.0,
      providerAppImage: "https://picsum.photos/124/86?random=49",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<OrderCompleteModelDUMMY> orderCompleteListDUMMY = [
    OrderCompleteModelDUMMY(
      isGuest: false,
      orderId: 123,
      date: BookingDate(day: 15, month: 4, year: 2025),
      price: 50.0,
      providerAppImage: "https://picsum.photos/124/86?random=41",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
    ),
    OrderCompleteModelDUMMY(
      isGuest: true,
      orderId: 124,
      date: BookingDate(day: 15, month: 4, year: 2025),
      price: 50.0,
      providerAppImage: "https://picsum.photos/124/86?random=48",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<OrderPendingModelDUMMY> orderPendingListDUMMY = [
    OrderPendingModelDUMMY(
      orderId: 123,
      date: BookingDate(day: 15, month: 4, year: 2025),
      price: 50.0,
      providerAppImage: "https://picsum.photos/124/86?random=43",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
    ),
    OrderPendingModelDUMMY(
      orderId: 124,
      date: BookingDate(day: 15, month: 4, year: 2025),
      price: 50.0,
      providerAppImage: "https://picsum.photos/124/86?random=42",
      providerName: "Mohamed Zeytoun",
      providerSpecialty: "Flutter Developer",
      isGuest: false,
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  static List<ServiceInfoModelDUMMY> servicesListDUMMY = [
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=101",
      title: "Haircut",
      minute: 45,
      hour: 1,
      price: 30.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=102",
      title: "Beard Trim",
      minute: 30,
      hour: 0,
      price: 15.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=103",
      title: "Facial Treatment",
      minute: 50,
      hour: 1,
      price: 40.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=104",
      title: "Nail Care",
      minute: 60,
      hour: 1,
      price: 25.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=105",
      title: "Massage",
      minute: 30,
      hour: 2,
      price: 80.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=106",
      title: "Hair Coloring",
      minute: 15,
      hour: 2,
      price: 70.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=107",
      title: "Eyebrow Shaping",
      minute: 20,
      hour: 0,
      price: 10.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=108",
      title: "Hair Wash",
      minute: 25,
      hour: 0,
      price: 12.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=109",
      title: "Full Body Wax",
      minute: 30,
      hour: 1,
      price: 60.0,
    ),
    ServiceInfoModelDUMMY(
      appImage: "https://picsum.photos/124/86?random=110",
      title: "Makeup",
      minute: 90,
      hour: 1,
      price: 90.0,
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<String> galleryWorkImagesDUMMY = [
    "https://picsum.photos/124/86?random=177",
    "https://picsum.photos/124/86?random=178",
    "https://picsum.photos/124/86?random=179",
    "https://picsum.photos/124/86?random=180",
    "https://picsum.photos/124/86?random=181",
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<OptionModelDUMMY> optionsDUMMY = [
    OptionModelDUMMY(
        time: BookingTime(hour: 10, minute: 15, period: TimePeriod.AM),
        isEnabled: true),
    OptionModelDUMMY(
        time: BookingTime(hour: 2, minute: 30, period: TimePeriod.PM),
        isEnabled: false),
    OptionModelDUMMY(
        time: BookingTime(hour: 6, minute: 45, period: TimePeriod.PM),
        isEnabled: true),
    OptionModelDUMMY(
        time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
        isEnabled: true),
    OptionModelDUMMY(
        time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
        isEnabled: false),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static Map<DateTime, List<OptionModelDUMMY>> optionsPerDateDUMMY = {
    DateTime(2025, 6, 1): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 2): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 3): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 4): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 15, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 45, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 6): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 7): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 8): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 15, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 45, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 15, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 9): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 45, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 10): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 11): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 30, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 12): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 13): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 14): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 15): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 16): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 17): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 18): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 19): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 20): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 20): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 21): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 22): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 23): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 30, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 24): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 30, period: TimePeriod.PM),
          isEnabled: false),
    ],
    DateTime(2025, 6, 25): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 26): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 27): [
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 28): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 12, minute: 0, period: TimePeriod.PM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 3, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 29): [
      OptionModelDUMMY(
          time: BookingTime(hour: 8, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 0, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 11, minute: 30, period: TimePeriod.AM),
          isEnabled: true),
    ],
    DateTime(2025, 6, 30): [
      OptionModelDUMMY(
          time: BookingTime(hour: 9, minute: 0, period: TimePeriod.AM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 10, minute: 30, period: TimePeriod.AM),
          isEnabled: false),
      OptionModelDUMMY(
          time: BookingTime(hour: 1, minute: 0, period: TimePeriod.PM),
          isEnabled: true),
      OptionModelDUMMY(
          time: BookingTime(hour: 2, minute: 30, period: TimePeriod.PM),
          isEnabled: true),
    ],
  };

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<DateTime> disabledDatesListDUMMY = [
    DateTime(2025, 6, 30),
    DateTime(2025, 6, 1),
    DateTime(2025, 6, 5),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<ServiceItemBuyModelDUMMY> invoiceListDUMMY = [
    ServiceItemBuyModelDUMMY(
      name: "Cut Hair",
      quantity: 2,
      priceItem: 2.6,
    ),
    ServiceItemBuyModelDUMMY(
      name: "Nails",
      quantity: 1,
      priceItem: 4.3,
    ),
    ServiceItemBuyModelDUMMY(
      name: "Color",
      quantity: 1,
      priceItem: 3.3,
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<ProviderModelDUMMY> providerListDUMMY = [
    ProviderModelDUMMY(
      name: 'Provider Name 1',
      image: 'https://picsum.photos/124/86?random=168',
      description: 'Skin Care Specialist',
      isUnavailable: true,
    ),
    ProviderModelDUMMY(
      name: 'Provider Name 2',
      image: 'https://picsum.photos/124/86?random=160',
      description: 'Massage Expert',
    ),
    ProviderModelDUMMY(
      isUnavailable: true,
      name: 'Provider Name 3',
      image: 'https://picsum.photos/124/86?random=169',
      description: 'Hair Treatment Guru',
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<PointRewardItemModelDUMMY> pointRewardItemsListDUMMY = [
    PointRewardItemModelDUMMY(
      title: "Spa Treatment",
      location: "Paris, France",
      appImage: "https://picsum.photos/124/86?random=1",
      serviceType: ServiceType.Salon,
      points: 100,
      bookingDate: BookingDate(year: 2024, month: 10, day: 15),
    ),
    PointRewardItemModelDUMMY(
      title: "Facial Treatment",
      location: "London, UK",
      appImage: "https://picsum.photos/124/86?random=2",
      serviceType: ServiceType.Salon,
      points: 200,
      bookingDate: BookingDate(year: 2024, month: 12, day: 20),
    ),
    PointRewardItemModelDUMMY(
      title: "Haircut & Styling",
      location: "New York, USA",
      appImage: "https://picsum.photos/124/86?random=3",
      serviceType: ServiceType.Freelance,
      points: 150,
      bookingDate: BookingDate(year: 2024, month: 11, day: 5),
    ),
    PointRewardItemModelDUMMY(
      title: "Manicure & Pedicure",
      location: "Tokyo, Japan",
      appImage: "https://picsum.photos/124/86?random=4",
      serviceType: ServiceType.Freelance,
      points: 250,
      bookingDate: BookingDate(year: 2024, month: 9, day: 10),
    ),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static List<CardItemWalletModelDUMMY> cardItemWalletListDUMMY = [
    CardItemWalletModelDUMMY(isUp: true, isShowProfile: false),
    CardItemWalletModelDUMMY(isUp: false, isShowProfile: true),
    CardItemWalletModelDUMMY(isUp: true, isShowProfile: true),
    CardItemWalletModelDUMMY(isUp: false, isShowProfile: false),
  ];
  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  static List<NotificationItemModelDUMMY> notificationListDUMMY = [
    NotificationItemModelDUMMY(
      AppImage: "https://picsum.photos/124/86?random=1",
      userName: "Ali",
      messageText:
          "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor  Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor  ",
      date: BookingDate(day: 10, month: 8, year: 2024),
    ),
    NotificationItemModelDUMMY(
      AppImage: "https://picsum.photos/124/86?random=2",
      userName: "Mona",
      messageText: "Your booking has been confirmed successfully.",
      date: BookingDate(day: 12, month: 8, year: 2024),
    ),
    NotificationItemModelDUMMY(
      AppImage: "https://picsum.photos/124/86?random=3",
      userName: "Tariq",
      messageText: "Please rate your recent experience.",
      date: BookingDate(day: 14, month: 8, year: 2024),
    ),
  ];

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static NearestModel testNearestModelDUMMY = NearestModel(
    id: 0,
    providerId: 0,
    createdAt: DateTime.now(),
    managerName: 'test',
    isOpen: 0,
    phone: 'test',
    name: 'test',
    distance: 0.0,
    productsCount: 0,
    image: 'test',
    coverImage: 'test',
    gallery: [],
    address: AddressModel(
      id: 0,
      address: 'test',
      lat: '0.0',
      lng: '0.0',
      regionId: 0,
      createdAt: DateTime.now(),
      region: RegionModel(
        id: 0,
        cityId: 0,
        createdAt: DateTime.now(),
        name: 'test',
        city: CityModel(
          id: 0,
          createdAt: DateTime.now(),
          name: 'test',
        ),
      ),
    ),
    provider: ProviderModel(
      id: 0,
      showInHome: 0,
      type: 0,
      createdAt: DateTime.now(),
      subscriptionId: null,
      order: 0,
      currencyPerPoint: null,
      pointValue: null,
      name: 'test',
      bio: 'test',
      address: 'test',
      categories: [],
      supportLoyaltyPoints: 0,
      user: UserDataModel(
        id: 0,
        name: 'test',
        email: 'test',
        phone: 'test',
        image: 'test',
        type: "0",
        gender: GenderEnum.female,
        active: 0,
        userableId: 0,
        createdAt: DateTime(32),
      ),
    ),
  );

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  //!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
}

class GlobalCartData {
  static List<AddServiceModel> addedServicesDUMMY = [];
}
