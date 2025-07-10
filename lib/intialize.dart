import 'package:g365_widgets_user/constants.dart';

class G365User {
  static const String packageName = 'g365_widgets_user';

  static init(G365Application module, G365Envirnment env) {
    AppContants.logoDark = logosPath[env][module] ?? 'assets/svg/global365_dark.svg';
  }

  static dynamic logosPath = {
    G365Envirnment.development: {
      G365Application.accounting: {
        'dark': 'assets/svg/accounting_dark.svg',
        'light': 'assets/svg/accounting_light.svg',
      },
      G365Application.payroll: {'dark': 'assets/svg/payroll_dark.svg', 'light': 'assets/svg/payroll_light.svg'},
      G365Application.merchant: {'dark': 'assets/svg/merchant_dark.svg', 'light': 'assets/svg/merchant_light.svg'},
      G365Application.firm: {'dark': 'assets/svg/firm_dark.svg', 'light': 'assets/svg/firm_light.svg'},
    },
    G365Envirnment.staging: {
      G365Application.accounting: {
        'dark': 'assets/svg/accounting_dark.svg',
        'light': 'assets/svg/accounting_light.svg',
      },
      G365Application.payroll: {'dark': 'assets/svg/payroll_dark.svg', 'light': 'assets/svg/payroll_light.svg'},
      G365Application.merchant: {'dark': 'assets/svg/merchant_dark.svg', 'light': 'assets/svg/merchant_light.svg'},
      G365Application.firm: {'dark': 'assets/svg/firm_dark.svg', 'light': 'assets/svg/firm_light.svg'},
    },
    G365Envirnment.production: {
      G365Application.accounting: {
        'dark': 'assets/svg/accounting_dark.svg',
        'light': 'assets/svg/accounting_light.svg',
      },
      G365Application.payroll: {'dark': 'assets/svg/payroll_dark.svg', 'light': 'assets/svg/payroll_light.svg'},
      G365Application.merchant: {'dark': 'assets/svg/merchant_dark.svg', 'light': 'assets/svg/merchant_light.svg'},
      G365Application.firm: {'dark': 'assets/svg/firm_dark.svg', 'light': 'assets/svg/firm_light.svg'},
    },
  };
}

enum LogoType { dark, light }

enum G365Envirnment { development, staging, production }

enum G365Application { accounting, payroll, merchant, firm }
