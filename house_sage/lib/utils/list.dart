import 'package:house_sage/model/chat_model.dart';
import 'package:house_sage/model/featured.dart';
import 'package:house_sage/model/notification_model.dart';
import 'package:house_sage/model/onboarding.dart';
import 'package:house_sage/model/recent_view.dart';
import 'package:house_sage/model/recommendation.dart';
import 'package:house_sage/model/sale_history.dart';
import 'package:house_sage/model/schedule.dart';
import 'package:house_sage/model/virtual_app.dart';

List<OnboardingModel> boardingList = [
  OnboardingModel(
      image: 'boarding1',
      title: 'Find Your Dream Home With Us',
      text:
          'Discover and explore a wide range of properties tailored to your preferences.'),
  OnboardingModel(
      image: 'boarding2',
      title: 'Simplify Your Property Search',
      text:
          'Efforlessly browse, filter, and save properties to streamline to your real estate journey.'),
  OnboardingModel(
      image: 'boarding3',
      title: 'Stay One Step Ahead in Real Estate',
      text:
          'Access the latest listings, market trends, and expert advice to make informed decisions.')
];

List<FeaturedModel> featuredList = [
  FeaturedModel(
      image: 'featured1',
      price: '1,900',
      place: 'Lavender Manor',
      location: 'Reykjavik, Iceland'),
  FeaturedModel(
      image: 'featured2',
      price: '1.300',
      place: 'Rosewood Retreat',
      location: 'Cape Town, South Africa')
];

List<String> recommendationList = ['All', 'Villa', 'Apartment', 'Home'];

List<RecommendationModel> recItemList = [
  RecommendationModel(
      image: 'Image-1',
      name: 'Suny apartment',
      location: 'Istanbul, Turkey',
      price: '33'),
  RecommendationModel(
      image: 'Image-2',
      name: 'La Grand Maison',
      location: 'Vancouver, Canada',
      price: '47'),
  RecommendationModel(
      image: 'Image-3',
      name: 'Muslimah Al-Azhar',
      location: 'Delhi, India',
      price: '74'),
  RecommendationModel(
      image: 'Image-4',
      name: 'Alpha Housing',
      location: 'Stockholm, Sweden',
      price: '36'),
  RecommendationModel(
      image: 'Image-5',
      name: 'White Cottage',
      location: 'Vancouver, Canada',
      price: '56'),
  RecommendationModel(
      image: 'Image-6',
      name: 'Astute Homes',
      location: 'Istanbul, Turkey',
      price: '46')
];

List<FeaturedModel> featuredScreenList = [
  FeaturedModel(
      image: 'f1',
      price: '1,900',
      place: 'Alpine Lodge',
      location: 'Auckland, New Zealand'),
  FeaturedModel(
      image: 'f2',
      price: '1,900',
      place: 'Manhattan Loft',
      location: 'Marrakech, Morocco'),
  FeaturedModel(
      image: 'f3',
      price: '1,900',
      place: 'Santorini Retreat',
      location: 'Rio de Janeiro, Brazil'),
  FeaturedModel(
      image: 'f4',
      price: '1,900',
      place: 'Alpine Lodge',
      location: 'Surabaya, landonesia'),
  FeaturedModel(
      image: 'f6',
      price: '1,900',
      place: 'Kyoto Zen House',
      location: 'Vancouver, Canada'),
  FeaturedModel(
      image: 'f5',
      price: '1,900',
      place: 'Owent Apartment',
      location: 'Surabaya, landonesia')
];

List<String> recentSearch = [
  'Owent Apartment',
  'Real estate home',
  'Small Apartment'
];

List<RecentViewModel> recentViewList = [
  RecentViewModel(
      image: 'recent_view1',
      place: 'Vancouver, Canada',
      name: 'Joneore Garden',
      price: '1,900',
      rate: '4.3',
      total: '32'),
  RecentViewModel(
      image: 'recent_view2',
      place: 'Cape Town, South Africa',
      name: 'Lontoro House',
      price: '3,900',
      rate: '4.2',
      total: '42'),
  RecentViewModel(
      image: 'recent_view3',
      place: 'Kyoto, Japan',
      name: 'Owent Apartment',
      price: '9,900',
      rate: '4.5',
      total: '52')
];

List<NotificationModel> notificationList = [
  NotificationModel(
      image: 'sms-notification',
      title: 'You bookmarked “Casa De L”!',
      subTitle:
          'We have bookmarked a property “Casa De Leone” for you. Find out more about the property!',
      time: '2 m ago'),
  NotificationModel(
      image: 'sms-notification',
      title: 'You have a new messages!',
      subTitle: 'Patrick Leone just messages you! Come and reply right now',
      time: '2 m ago'),
  NotificationModel(
      image: 'sms-notification',
      title: 'You have 4 new messages!',
      subTitle: 'Your offer on “Casa De Leone” is aprroved. Come check it out!',
      time: '2 m ago'),
  NotificationModel(
      image: 'show_noti',
      title: 'You bookmarked “Casa De Leone”!',
      subTitle: 'For all transaction without requirements',
      time: '10 m ago'),
  NotificationModel(
      image: 'show_noti',
      title: 'Your offer is aprroved!',
      subTitle: 'Your offer on “Casa De Leone” is aprroved. Come check it out!',
      time: '10 m ago'),
  NotificationModel(
      image: 'show_noti',
      title: 'Someone interested in your property!',
      subTitle:
          'Your property “Rumah singgah” have just bookmarked by 3 people. Well Done!',
      time: '10 m ago')
];

List<String> timeList = ['9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM'];

List<ScheduleModel> scheduleList = [
  ScheduleModel(
    date: '26',
    day: 'Sat',
  ),
  ScheduleModel(date: '27', day: 'Sun'),
  ScheduleModel(date: '28', day: 'Mon'),
  ScheduleModel(date: '29', day: 'Tue'),
  ScheduleModel(date: '30', day: 'Wed'),
  ScheduleModel(date: '31', day: 'Thu'),
];

List<VirtualAppModel> virtualAppList = [
  VirtualAppModel(image: 'skype', text: 'Skype'),
  VirtualAppModel(image: 'meet', text: 'Google meet'),
  VirtualAppModel(image: 'signal', text: 'Signal'),
  VirtualAppModel(image: 'whats_app', text: 'Whatsapp'),
  VirtualAppModel(image: 'telegram', text: 'Telegram')
];
List<VirtualAppModel> facilitiesList = [
  VirtualAppModel(image: 'car', text: 'Car Parking'),
  VirtualAppModel(image: 'swim', text: 'Swimming...'),
  VirtualAppModel(image: 'gym', text: 'Gym & Fitne..'),
  VirtualAppModel(image: 'restaurant', text: 'Restaurant'),
  VirtualAppModel(image: 'wifi', text: 'Wi-fi & Ne...'),
  VirtualAppModel(image: 'pet', text: 'Pet Center'),
  VirtualAppModel(image: 'spot', text: 'Sport Center'),
  VirtualAppModel(image: 'laundry', text: 'Laundry')
];

List<SaleHistoryModel> saleHistoryList = [
  SaleHistoryModel(
      date: '28/12/2021', title: 'Listed for Sale', amount: '2,400'),
  SaleHistoryModel(date: '10/10/2021', title: 'PriceChange', amount: '2,000'),
  SaleHistoryModel(date: '03/04/2020', title: 'Rented', amount: '1,650'),
  SaleHistoryModel(
      date: '25/11/2019', title: 'Relisted (Active)', amount: '1,500'),
  SaleHistoryModel(
      date: '09/02/2019', title: 'Listed for Sale', amount: '1,400'),
];

List<ChatModel> chatList = [
  ChatModel(message: 'Hi, Tom 👋', isSender: true),
  ChatModel(
      message:
          'I\'m looking for information about your house. Can I visit to see your house?',
      isSender: true),
  ChatModel(
      message: 'Hi, Santi! Of course, the door is always open 😉',
      isSender: false),
  ChatModel(
      message:
          'That’s great, thank you! Sunday at 10 AM does this work for you?',
      isSender: true),
  ChatModel(message: 'Of course, see you on Sunday!', isSender: false)
];
