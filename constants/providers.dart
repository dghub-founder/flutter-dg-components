import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:user_app/dg-components/constants/enums.dart';
import 'package:user_app/providers/account/account_refresh_token_provider.dart';
import 'package:user_app/providers/downloaded/downloaded_provider.dart';
import 'package:user_app/providers/link/link_collection_provider.dart';
import 'package:user_app/providers/onboarding/onboarding_provider.dart';
import 'package:user_app/providers/point_exchange/point_exchange_provider.dart';
import 'package:user_app/providers/post/post_cover_photo_provider.dart';
import 'package:user_app/providers/post/post_review_provider.dart';
import 'package:user_app/providers/store/store_products_provider.dart';
import '../../providers/address/address_store_provider.dart';
import '../../providers/contact/contact_provider.dart';
import '../../providers/coupon/coupon_provider.dart';
import '../../providers/point_exchange/point_exchange_history_provider.dart';
import '../../providers/post/post_cast_provider.dart';
import '../../providers/post/post_free_provider.dart';
import '../../providers/account/account_forgot_password_provider.dart';
import '../../providers/account/account_logout_provider.dart';
import '../../providers/account/account_provider.dart';
import '../../providers/account/email_verification_provider.dart';
import '../../providers/account/otp_verification_provider.dart';
import '../../providers/address/address_provider.dart';
import '../../providers/ads/ads_provider.dart';
import '../../providers/cart/cart_provider.dart';
import '../../providers/category/category_provider.dart';
import '../../providers/category_child/category_child_provider.dart';
import '../../providers/country/country_provider.dart';
import '../../providers/credit_card/credit_card_provider.dart';
import '../../providers/detail/detail_provider.dart';
import '../../providers/favorite/favorite_provider.dart';
import '../../providers/google/google_map_picker_provider.dart';
import '../../providers/grid/grid_provider.dart';
import '../../providers/horizontal_slider/horizontal_slider_provider.dart';
import '../../providers/image_slider/image_slider_provider.dart';
import '../../providers/order/order_provider.dart';
import '../../providers/payment/payment_provider.dart';
import '../../providers/payment_history/payment_history_provider.dart';
import '../../providers/plan/plan_provider.dart';
import '../../providers/post/post_popular_provider.dart';
import '../../providers/profile/profile_provider.dart';
import '../../providers/room/room_provider.dart';
import '../../providers/search/search_provider.dart';
import '../../providers/season/season_provider.dart';
import '../../providers/splash/splash_provider.dart';
import '../../providers/store/store_detail_provider.dart';
import '../../providers/store/store_grid_provider.dart';
import '../../providers/store/store_provider.dart';
import '../../providers/subtitle/subtitle_provider.dart';
import '../../providers/ticket/ticket_provider.dart';
import '../../providers/update/update_provider.dart';
import '../../providers/wallet/wallet_history_provider.dart';
import 'globals.dart';

class Providers {
  static List<SingleChildWidget> get() => [
        ChangeNotifierProvider(create: (_) => AccountProvider()),
        ChangeNotifierProvider(create: (_) => PostFreeProvider()),
        ChangeNotifierProvider(create: (_) => PostPopularProvider()),
        ChangeNotifierProvider(create: (_) => PostCastProvider()),
        ChangeNotifierProvider(create: (_) => AccountForgotPasswordProvider()),
        ChangeNotifierProvider(create: (_) => AccountLogoutProvider()),
        ChangeNotifierProvider(create: (_) => AccountRefreshTokenProvider()),
        ChangeNotifierProvider(create: (_) => EmailVerificationProvider()),
        ChangeNotifierProvider(create: (_) => OTPVerificationProvider()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => UpdateProvider()),
        ChangeNotifierProvider(create: (_) => DetailProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => CategoryChildProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => HorizontalSliderProvider()),
        ChangeNotifierProvider(create: (_) => ImageSliderProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => GridProvider()),
        ChangeNotifierProvider(create: (_) => PlanProvider()),
        ChangeNotifierProvider(create: (_) => AdsProvider()),
        ChangeNotifierProvider(create: (_) => SeasonProvider()),
        ChangeNotifierProvider(create: (_) => PaymentHistoryProvider()),
        ChangeNotifierProvider(create: (_) => PaymentProvider()),
        ChangeNotifierProvider(create: (_) => TicketProvider()),
        ChangeNotifierProvider(create: (_) => LinkCollectionProvider()),
        ChangeNotifierProvider(create: (_) => SubtitleProvider()),
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
        ChangeNotifierProvider(create: (_) => DownloadedProvider()),
        ChangeNotifierProvider(create: (_) => CreditCardProvider()),
        ChangeNotifierProvider(create: (_) => AddressProvider()),
        ChangeNotifierProvider(create: (_) => AddressStoreProvider()),
        ChangeNotifierProvider(create: (_) => CountryProvider()),
        ChangeNotifierProvider(create: (_) => GoogleMapPickerProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
        ChangeNotifierProvider(create: (_) => ContactProvider()),
        ChangeNotifierProvider(create: (_) => StoreProvider()),
        ChangeNotifierProvider(create: (_) => StoreDetailProvider()),
        ChangeNotifierProvider(create: (_) => StoreProductsProvider()),
        ChangeNotifierProvider(create: (_) => StoreGridProvider()),
        ChangeNotifierProvider(create: (_) => PostCoverPhotoProvider()),
        ChangeNotifierProvider(create: (_) => PointExchangeProvider()),
        ChangeNotifierProvider(create: (_) => PointExchangeHistoryProvider()),
        ChangeNotifierProvider(create: (_) => PostReviewProvider()),
        ChangeNotifierProvider(create: (_) => RoomProvider()),
        ChangeNotifierProvider(create: (_) => WalletHistoryProvider()),
        ChangeNotifierProvider(create: (_) => CouponProvider()),
      ];

  static initStart(BuildContext context) {
    context.read<SplashProvider>().start(context: context);
    context.read<HorizontalSliderProvider>().start();
    context.read<ImageSliderProvider>().start();
    context.read<CategoryProvider>().start();
    context.read<PlanProvider>().start();
    context.read<PaymentProvider>().start();
    context.read<PostFreeProvider>().start();
    context.read<PostPopularProvider>().start();
    context.read<PostCastProvider>().start();
    context.read<ContactProvider>().start();
    context.read<PointExchangeProvider>().start();

    if (storage.read('token') != null) {
      context.read<FavoriteProvider>().start();
      context.read<PaymentHistoryProvider>().start();
      context.read<WalletHistoryProvider>().start();
      context.read<ProfileProvider>().get(context);
      context.read<CreditCardProvider>().start();
    }
  }

  static settingCompleteStart(BuildContext context) {
    if (settings!.more.setting.app_type == 'shop' ||
        settings!.more.setting.app_type == 'multiple_shop') {
      if (storage.read('token') != null) {
        context.read<AddressProvider>().start();
        context.read<CartProvider>().start();
        context.read<OrderProvider>().start();
      }
      context.read<StoreProvider>().start();
    }
  }
}
