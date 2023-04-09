import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:user_app/dg-components/widgets/qr_scanner/qr_scanner_page.dart';
import 'package:user_app/page/comment/comment_page.dart';
import 'package:user_app/page/credit_card_form/credit_card_form_page.dart';
import 'package:user_app/page/detail/detail_page.dart';
import 'package:user_app/page/grid/grid_page.dart';
import 'package:user_app/page/image_reader/image_reader_page.dart';
import 'package:user_app/page/order_payment/order_payment_slip_page.dart';
import 'package:user_app/page/password/password_page.dart';
import 'package:user_app/page/pdf_viewer/pdf_viewer_page.dart';
import 'package:user_app/page/plan/components/paypal_webview_page.dart';
import 'package:user_app/page/plan/plan_page.dart';
import 'package:user_app/page/premium_payment/premium_payment_page.dart';
import 'package:user_app/page/search/search_page.dart';
import 'package:user_app/page/subtitle/subtitle_page.dart';
import 'package:user_app/page/video_player/video_player_page.dart';
import 'package:user_app/page/webview/webview_page.dart';

import '../../page/account/account_page.dart';
import '../../page/address/address_form_page.dart';
import '../../page/audio_player/audio_player_page.dart';
import '../../page/cart/cart_page.dart';
import '../../page/cast_grid/cast_grid_page.dart';
import '../../page/category/category_grid_page.dart';
import '../../page/country/country_picker_page.dart';
import '../../page/favorite/favorite_page.dart';
import '../../page/google_map/google_map_picker_page.dart';
import '../../page/main/main_page.dart';
import '../../page/main/widgets/main_tab1_page.dart';
import '../../page/main/widgets/main_tab2_page.dart';
import '../../page/main/widgets/main_tab3_page.dart';
import '../../page/main/widgets/main_tab4_page.dart';
import '../../page/main/widgets/main_tab5_page.dart';
import '../../page/onboarding/onboarding_page.dart';
import '../../page/order/order_cart_page.dart';
import '../../page/order/order_item_page.dart';
import '../../page/order_payment/order_payment_page.dart';
import '../../page/order_payment/order_payment_wallet_page.dart';
import '../../page/payment/payment_list_select_page.dart';
import '../../page/plan/components/plan_list_select_page.dart';
import '../../page/point_exchange/point_exchange_page.dart';
import '../../page/premium_payment/premium_payment_slip_page.dart';
import '../../page/profile/profile_page.dart';
import '../../page/splash/splash_page.dart';
import '../../page/store_detail/store_detail_page.dart';
import '../../page/store_grid/store_grid_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    //DGSystemRoute -- Don't remove this route-
    CustomRoute(
        page: SplashPage,
        initial: true,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200),
    CustomRoute(
        page: MainPage,
        children: [
          AutoRoute(page: MainTab1Page),
          AutoRoute(page: MainTab2Page),
          AutoRoute(page: MainTab3Page),
          AutoRoute(page: MainTab4Page),
          AutoRoute(page: MainTab5Page),
          /* AutoRoute(
              name: 'mainTab5PageRouter',
              path: 'mainTab5Page',
              page: EmptyRouterPage,
              children: [
                AutoRoute(initial: true, page: MainTab5Page),
                AutoRoute(page: SettingAdsPage),
              ])*/
        ],
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200),
    CustomRoute(
        page: OnboardingPage,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200),
    CustomRoute(
        page: AccountPage,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200),

    CustomRoute(page: ProfilePage),
    CustomRoute(page: FavoritePage),
    CustomRoute(page: SearchPage),
    CustomRoute(page: GridPage),
    CustomRoute(page: CategoryGridPage),
    CustomRoute(page: CastGridPage),
    CustomRoute(page: CartPage),
    CustomRoute(page: StoreGridPage),
    CustomRoute(page: StoreDetailPage),
    CustomRoute(page: DetailPage),
    CustomRoute(page: ImageReaderPage),
    CustomRoute(page: PdfViewerPage),
    CustomRoute(page: CommentPage),
    CustomRoute(page: PasswordPage),
    CustomRoute(page: PlanPage),
    CustomRoute(page: PlanListSelectPage),
    CustomRoute(page: PaymentListSelectPage),
    CustomRoute(page: OrderPaymentSlipPage),
    CustomRoute(page: VideoPlayerPage),
    CustomRoute(page: AudioPlayerPage),
    CustomRoute(page: WebviewPage),
    CustomRoute(page: SubtitlePage),
    CustomRoute(page: CreditCardFormPage),
    CustomRoute(page: PaypalWebviewPage),
    CustomRoute(page: AddressFormPage),
    CustomRoute(page: CountryPickerPage),
    CustomRoute(page: GoogleMapPickerPage),
    CustomRoute(page: OrderPaymentPage),
    CustomRoute(page: OrderPaymentWalletPage),
    CustomRoute(page: OrderItemPage),
    CustomRoute(page: OrderCartPage),
    CustomRoute(page: PointExchangePage),
    CustomRoute(page: QRScannerPage),
////////
    CustomRoute(page: PremiumPaymentPage),
    CustomRoute(page: PremiumPaymentSlipPage),

    // CustomRoute(page: GooglewPage),
    //CustomRoute(page: ChatPage),
    // CustomRoute(page: ChatMessagePage),
    // CustomRoute(page: NotificationPage),
    //DGSystemRoute --End
  ],
)
class AppRouter extends _$AppRouter {}
