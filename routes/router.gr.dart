// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnboardingRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AccountRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FavoriteRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FavoritePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SearchRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    GridRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const GridPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CategoryGridRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CategoryGridPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CastGridRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CastGridPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CartRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    StoreGridRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const StoreGridPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    StoreDetailRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const StoreDetailPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetailRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const DetailPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ImageReaderRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ImageReaderPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PdfViewerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PdfViewerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CommentRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: CommentPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PasswordRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PasswordPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PlanRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PlanPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PlanListSelectRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PlanListSelectPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaymentListSelectRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PaymentListSelectPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderPaymentSlipRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OrderPaymentSlipPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    VideoPlayerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const VideoPlayerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AudioPlayerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AudioPlayerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    WebviewRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const WebviewPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SubtitleRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SubtitlePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreditCardFormRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CreditCardFormPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PaypalWebviewRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PaypalWebviewPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddressFormRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AddressFormPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CountryPickerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const CountryPickerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    GoogleMapPickerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const GoogleMapPickerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderPaymentRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OrderPaymentPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderPaymentWalletRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OrderPaymentWalletPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderItemRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OrderItemPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderCartRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OrderCartPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PointExchangeRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PointExchangePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    QRScannerRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const QRScannerPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PremiumPaymentRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PremiumPaymentPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PremiumPaymentSlipRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PremiumPaymentSlipPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainTab1Route.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTab1Page(),
      );
    },
    MainTab2Route.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTab2Page(),
      );
    },
    MainTab3Route.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTab3Page(),
      );
    },
    MainTab4Route.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTab4Page(),
      );
    },
    MainTab5Route.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainTab5Page(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              MainTab1Route.name,
              path: 'main-tab1-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              MainTab2Route.name,
              path: 'main-tab2-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              MainTab3Route.name,
              path: 'main-tab3-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              MainTab4Route.name,
              path: 'main-tab4-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              MainTab5Route.name,
              path: 'main-tab5-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        RouteConfig(
          AccountRoute.name,
          path: '/account-page',
        ),
        RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        RouteConfig(
          FavoriteRoute.name,
          path: '/favorite-page',
        ),
        RouteConfig(
          SearchRoute.name,
          path: '/search-page',
        ),
        RouteConfig(
          GridRoute.name,
          path: '/grid-page',
        ),
        RouteConfig(
          CategoryGridRoute.name,
          path: '/category-grid-page',
        ),
        RouteConfig(
          CastGridRoute.name,
          path: '/cast-grid-page',
        ),
        RouteConfig(
          CartRoute.name,
          path: '/cart-page',
        ),
        RouteConfig(
          StoreGridRoute.name,
          path: '/store-grid-page',
        ),
        RouteConfig(
          StoreDetailRoute.name,
          path: '/store-detail-page',
        ),
        RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        RouteConfig(
          ImageReaderRoute.name,
          path: '/image-reader-page',
        ),
        RouteConfig(
          PdfViewerRoute.name,
          path: '/pdf-viewer-page',
        ),
        RouteConfig(
          CommentRoute.name,
          path: '/comment-page',
        ),
        RouteConfig(
          PasswordRoute.name,
          path: '/password-page',
        ),
        RouteConfig(
          PlanRoute.name,
          path: '/plan-page',
        ),
        RouteConfig(
          PlanListSelectRoute.name,
          path: '/plan-list-select-page',
        ),
        RouteConfig(
          PaymentListSelectRoute.name,
          path: '/payment-list-select-page',
        ),
        RouteConfig(
          OrderPaymentSlipRoute.name,
          path: '/order-payment-slip-page',
        ),
        RouteConfig(
          VideoPlayerRoute.name,
          path: '/video-player-page',
        ),
        RouteConfig(
          AudioPlayerRoute.name,
          path: '/audio-player-page',
        ),
        RouteConfig(
          WebviewRoute.name,
          path: '/webview-page',
        ),
        RouteConfig(
          SubtitleRoute.name,
          path: '/subtitle-page',
        ),
        RouteConfig(
          CreditCardFormRoute.name,
          path: '/credit-card-form-page',
        ),
        RouteConfig(
          PaypalWebviewRoute.name,
          path: '/paypal-webview-page',
        ),
        RouteConfig(
          AddressFormRoute.name,
          path: '/address-form-page',
        ),
        RouteConfig(
          CountryPickerRoute.name,
          path: '/country-picker-page',
        ),
        RouteConfig(
          GoogleMapPickerRoute.name,
          path: '/google-map-picker-page',
        ),
        RouteConfig(
          OrderPaymentRoute.name,
          path: '/order-payment-page',
        ),
        RouteConfig(
          OrderPaymentWalletRoute.name,
          path: '/order-payment-wallet-page',
        ),
        RouteConfig(
          OrderItemRoute.name,
          path: '/order-item-page',
        ),
        RouteConfig(
          OrderCartRoute.name,
          path: '/order-cart-page',
        ),
        RouteConfig(
          PointExchangeRoute.name,
          path: '/point-exchange-page',
        ),
        RouteConfig(
          QRScannerRoute.name,
          path: '/q-rscanner-page',
        ),
        RouteConfig(
          PremiumPaymentRoute.name,
          path: '/premium-payment-page',
        ),
        RouteConfig(
          PremiumPaymentSlipRoute.name,
          path: '/premium-payment-slip-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: '/account-page',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: '/favorite-page',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [GridPage]
class GridRoute extends PageRouteInfo<void> {
  const GridRoute()
      : super(
          GridRoute.name,
          path: '/grid-page',
        );

  static const String name = 'GridRoute';
}

/// generated route for
/// [CategoryGridPage]
class CategoryGridRoute extends PageRouteInfo<void> {
  const CategoryGridRoute()
      : super(
          CategoryGridRoute.name,
          path: '/category-grid-page',
        );

  static const String name = 'CategoryGridRoute';
}

/// generated route for
/// [CastGridPage]
class CastGridRoute extends PageRouteInfo<void> {
  const CastGridRoute()
      : super(
          CastGridRoute.name,
          path: '/cast-grid-page',
        );

  static const String name = 'CastGridRoute';
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart-page',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [StoreGridPage]
class StoreGridRoute extends PageRouteInfo<void> {
  const StoreGridRoute()
      : super(
          StoreGridRoute.name,
          path: '/store-grid-page',
        );

  static const String name = 'StoreGridRoute';
}

/// generated route for
/// [StoreDetailPage]
class StoreDetailRoute extends PageRouteInfo<void> {
  const StoreDetailRoute()
      : super(
          StoreDetailRoute.name,
          path: '/store-detail-page',
        );

  static const String name = 'StoreDetailRoute';
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [ImageReaderPage]
class ImageReaderRoute extends PageRouteInfo<void> {
  const ImageReaderRoute()
      : super(
          ImageReaderRoute.name,
          path: '/image-reader-page',
        );

  static const String name = 'ImageReaderRoute';
}

/// generated route for
/// [PdfViewerPage]
class PdfViewerRoute extends PageRouteInfo<void> {
  const PdfViewerRoute()
      : super(
          PdfViewerRoute.name,
          path: '/pdf-viewer-page',
        );

  static const String name = 'PdfViewerRoute';
}

/// generated route for
/// [CommentPage]
class CommentRoute extends PageRouteInfo<void> {
  const CommentRoute()
      : super(
          CommentRoute.name,
          path: '/comment-page',
        );

  static const String name = 'CommentRoute';
}

/// generated route for
/// [PasswordPage]
class PasswordRoute extends PageRouteInfo<void> {
  const PasswordRoute()
      : super(
          PasswordRoute.name,
          path: '/password-page',
        );

  static const String name = 'PasswordRoute';
}

/// generated route for
/// [PlanPage]
class PlanRoute extends PageRouteInfo<void> {
  const PlanRoute()
      : super(
          PlanRoute.name,
          path: '/plan-page',
        );

  static const String name = 'PlanRoute';
}

/// generated route for
/// [PlanListSelectPage]
class PlanListSelectRoute extends PageRouteInfo<void> {
  const PlanListSelectRoute()
      : super(
          PlanListSelectRoute.name,
          path: '/plan-list-select-page',
        );

  static const String name = 'PlanListSelectRoute';
}

/// generated route for
/// [PaymentListSelectPage]
class PaymentListSelectRoute extends PageRouteInfo<void> {
  const PaymentListSelectRoute()
      : super(
          PaymentListSelectRoute.name,
          path: '/payment-list-select-page',
        );

  static const String name = 'PaymentListSelectRoute';
}

/// generated route for
/// [OrderPaymentSlipPage]
class OrderPaymentSlipRoute extends PageRouteInfo<void> {
  const OrderPaymentSlipRoute()
      : super(
          OrderPaymentSlipRoute.name,
          path: '/order-payment-slip-page',
        );

  static const String name = 'OrderPaymentSlipRoute';
}

/// generated route for
/// [VideoPlayerPage]
class VideoPlayerRoute extends PageRouteInfo<void> {
  const VideoPlayerRoute()
      : super(
          VideoPlayerRoute.name,
          path: '/video-player-page',
        );

  static const String name = 'VideoPlayerRoute';
}

/// generated route for
/// [AudioPlayerPage]
class AudioPlayerRoute extends PageRouteInfo<void> {
  const AudioPlayerRoute()
      : super(
          AudioPlayerRoute.name,
          path: '/audio-player-page',
        );

  static const String name = 'AudioPlayerRoute';
}

/// generated route for
/// [WebviewPage]
class WebviewRoute extends PageRouteInfo<void> {
  const WebviewRoute()
      : super(
          WebviewRoute.name,
          path: '/webview-page',
        );

  static const String name = 'WebviewRoute';
}

/// generated route for
/// [SubtitlePage]
class SubtitleRoute extends PageRouteInfo<void> {
  const SubtitleRoute()
      : super(
          SubtitleRoute.name,
          path: '/subtitle-page',
        );

  static const String name = 'SubtitleRoute';
}

/// generated route for
/// [CreditCardFormPage]
class CreditCardFormRoute extends PageRouteInfo<void> {
  const CreditCardFormRoute()
      : super(
          CreditCardFormRoute.name,
          path: '/credit-card-form-page',
        );

  static const String name = 'CreditCardFormRoute';
}

/// generated route for
/// [PaypalWebviewPage]
class PaypalWebviewRoute extends PageRouteInfo<void> {
  const PaypalWebviewRoute()
      : super(
          PaypalWebviewRoute.name,
          path: '/paypal-webview-page',
        );

  static const String name = 'PaypalWebviewRoute';
}

/// generated route for
/// [AddressFormPage]
class AddressFormRoute extends PageRouteInfo<void> {
  const AddressFormRoute()
      : super(
          AddressFormRoute.name,
          path: '/address-form-page',
        );

  static const String name = 'AddressFormRoute';
}

/// generated route for
/// [CountryPickerPage]
class CountryPickerRoute extends PageRouteInfo<void> {
  const CountryPickerRoute()
      : super(
          CountryPickerRoute.name,
          path: '/country-picker-page',
        );

  static const String name = 'CountryPickerRoute';
}

/// generated route for
/// [GoogleMapPickerPage]
class GoogleMapPickerRoute extends PageRouteInfo<void> {
  const GoogleMapPickerRoute()
      : super(
          GoogleMapPickerRoute.name,
          path: '/google-map-picker-page',
        );

  static const String name = 'GoogleMapPickerRoute';
}

/// generated route for
/// [OrderPaymentPage]
class OrderPaymentRoute extends PageRouteInfo<void> {
  const OrderPaymentRoute()
      : super(
          OrderPaymentRoute.name,
          path: '/order-payment-page',
        );

  static const String name = 'OrderPaymentRoute';
}

/// generated route for
/// [OrderPaymentWalletPage]
class OrderPaymentWalletRoute extends PageRouteInfo<void> {
  const OrderPaymentWalletRoute()
      : super(
          OrderPaymentWalletRoute.name,
          path: '/order-payment-wallet-page',
        );

  static const String name = 'OrderPaymentWalletRoute';
}

/// generated route for
/// [OrderItemPage]
class OrderItemRoute extends PageRouteInfo<void> {
  const OrderItemRoute()
      : super(
          OrderItemRoute.name,
          path: '/order-item-page',
        );

  static const String name = 'OrderItemRoute';
}

/// generated route for
/// [OrderCartPage]
class OrderCartRoute extends PageRouteInfo<void> {
  const OrderCartRoute()
      : super(
          OrderCartRoute.name,
          path: '/order-cart-page',
        );

  static const String name = 'OrderCartRoute';
}

/// generated route for
/// [PointExchangePage]
class PointExchangeRoute extends PageRouteInfo<void> {
  const PointExchangeRoute()
      : super(
          PointExchangeRoute.name,
          path: '/point-exchange-page',
        );

  static const String name = 'PointExchangeRoute';
}

/// generated route for
/// [QRScannerPage]
class QRScannerRoute extends PageRouteInfo<void> {
  const QRScannerRoute()
      : super(
          QRScannerRoute.name,
          path: '/q-rscanner-page',
        );

  static const String name = 'QRScannerRoute';
}

/// generated route for
/// [PremiumPaymentPage]
class PremiumPaymentRoute extends PageRouteInfo<void> {
  const PremiumPaymentRoute()
      : super(
          PremiumPaymentRoute.name,
          path: '/premium-payment-page',
        );

  static const String name = 'PremiumPaymentRoute';
}

/// generated route for
/// [PremiumPaymentSlipPage]
class PremiumPaymentSlipRoute extends PageRouteInfo<void> {
  const PremiumPaymentSlipRoute()
      : super(
          PremiumPaymentSlipRoute.name,
          path: '/premium-payment-slip-page',
        );

  static const String name = 'PremiumPaymentSlipRoute';
}

/// generated route for
/// [MainTab1Page]
class MainTab1Route extends PageRouteInfo<void> {
  const MainTab1Route()
      : super(
          MainTab1Route.name,
          path: 'main-tab1-page',
        );

  static const String name = 'MainTab1Route';
}

/// generated route for
/// [MainTab2Page]
class MainTab2Route extends PageRouteInfo<void> {
  const MainTab2Route()
      : super(
          MainTab2Route.name,
          path: 'main-tab2-page',
        );

  static const String name = 'MainTab2Route';
}

/// generated route for
/// [MainTab3Page]
class MainTab3Route extends PageRouteInfo<void> {
  const MainTab3Route()
      : super(
          MainTab3Route.name,
          path: 'main-tab3-page',
        );

  static const String name = 'MainTab3Route';
}

/// generated route for
/// [MainTab4Page]
class MainTab4Route extends PageRouteInfo<void> {
  const MainTab4Route()
      : super(
          MainTab4Route.name,
          path: 'main-tab4-page',
        );

  static const String name = 'MainTab4Route';
}

/// generated route for
/// [MainTab5Page]
class MainTab5Route extends PageRouteInfo<void> {
  const MainTab5Route()
      : super(
          MainTab5Route.name,
          path: 'main-tab5-page',
        );

  static const String name = 'MainTab5Route';
}
