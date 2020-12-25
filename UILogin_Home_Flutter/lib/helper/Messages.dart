import 'package:get/get.dart';
import 'package:flutter/material.dart';
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
 const String kEmailNullError = "Please Enter your email";
const String kInvalidPhoneError = "Please Enter Valid Phone";
const String kInvalidEmailError = "Please Enter Valid Email";
 const String kPassNullError = "Please Enter your password";
const String kPhoneNullError = "Please Enter your Phone";
const String kShortPassError = "Password is too short";
 const String kMatchPassError = "Passwords don't match";
 const String kNamelNullError = "Please Enter your name";
 const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kContactUs = "kContactUS";
const String klang = "kLang";
const String kRateApp = "Rate app";
const String kShareApp = "Share app";
const String kPages = "Pages";
const String kSignIn = "kSignIn";
const String kSignUp = "Sign Up";
const String kLogOut = "Log Out";
const String kCreateAccount = "Create account";
const String kAboutUs = "aboutUs";
const String kPrivacyPolicy = "Privacy Policy";
const String kReturnPolicy = "Return policy";
const String kMessage_contact_us ="message_contact_us";
const String kMessage_contact_useEmali ="Or through e-mail";
const String kSendMessage ="kSendMessage";
const String kHomeTab ="Home";
const String kFavoriteTab ="Favorite";
const String kmyaccountTab ="My Account";
const String kCategoriesTab ="Categories";
const String kUserName ="UserName";
const String kEmail ="Email";
const String kPassword ="Password";
const String kOldPassword ="Old Password";
const String kPasswordReset ="Password Reset";
const String kRepeatPassword ="Repeat Password";
const String kForgot_Password ="Forgot your password";
const String kLogin_visitor="Login visitor";
const String kFirstName='first name';
const String kLastName='last name';
const String kMobileNumber='Mobile number';
const String kSave='Save';
const String kDoneAdd='kDoneAdd';
const String kContinuationshopping='kContinuationShoppinh';
const String kShowCart='ShowCart';
const String kFailedAddedCart='kFailedAddedCart';
const String kCountry='Country';
const String kStates='states';
const String kCity='City';
const String kStreet='Street';
const String kNext='Next';
const String kBrowse_products='Browse_products';

const String kShippingAddress ='Shipping Address';
const String kshipping_method ='Shipping Method';
const String kCheackOut ='kCheackOut';
const String kPaymentMethod ='kPaymentMethod';
const String kSummary ='kSummary';
const String kSubtotal ='kSubtotal';
const String kDiscount ='kDiscount';
const String kTax ='kTax';
const String kTotal ='kTotal';
const String kShippingCosts ='kShippingCosts';
const String kcost_delivary_cash ='cost_delivary_cash';
const String kEditAddress ='kEditAddress';
const String kAddress ='kAddress';
const String kCurrency ='kCurrency';
const String kDescription ='Description';
const String kAddRating ='Add Rating';
const String kViewReviews ='View reviews';
const String kTitle ='Title';
const String kComment ='Comment';
const String kSign_in_first ='Sign in first';
const String kNodata ='No data';
const String kErorrLogin ='kErorrLogin';
const String kErorr ='kError';
const String kEditProfile ='Edit profile';
const String kMyOrders ='My Orders';
const String kMyAddress ='My Address';
const String kChangePassword ='kChangePassword';
const String kDone ='Done';
const String kOrder_number ='Order Number';
const String kDate ='Date';
const String kTotal_Order ='Total Order';
const String kSend_to ='Send to';
const String kStatus ='Status';
const String kProductName ='Product Name';
const String kPrice ='Price';
const String kQuantity ='Quantity';
const String kPleaseEditeAddresses ='Please Edite your address';
const String kNewAddress ='New Address';
const String kAddToCart ='add to cart';
const String kSortby ='Sort';
const String kFillter ='kFillter';
const String kSort_lower_price ='Sort_lower_price';
const String kSort_higher_price ='Sort_higher_price';
const String kSearch ='Search';
const String kBrand ='Brand';
const String kdone_send_order ='kdone_send_order';
const String knot_order ='knot_order';
const String kErorr_add_order ='kErorr_add_order';
const String kTry_again ='kTry again';
const String kSee_More ='kSee_More';
const String kNew_Products='New products';
const String kRelated_Products='Related Products';
const String kAll='All';
const String kBuyvisitor='Buy as a visitor';
const String kPurchase_client='Purchase client';
const String kHolding_shopping='Holding shopping';
const String kView_Cart='View Cart';
const String kYour_Cart='kYour_Cart';
const String kProduct='kProduct';
const String kdetails='kdetails';
const String kAdd='kAdd';
const String kDiscountCode='DiscountCode';
const String kAvailable='Available';
const String kNotAvailable='Not Available';
const String kSend='kSend';
const String kdone_forGetPassword='done_forGetPassword';

const String kQuantityNotAvailable='Quantity of this product is not available';
class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'hello': 'Hello World',
      kDiscountCode:'Discount Code',
      kAdd:'Add',
      kSend:'Send',
      kQuantityNotAvailable:'Quantity of this product is not available',
      kAvailable:'Available',
      kNotAvailable:'Not Available',
      kdone_forGetPassword:'It has been sent a new password to the e-mail',

      kYour_Cart:'Your Cart',
      kdetails:'Details',
      kProduct:'Product',
      kSearch:'Search',
      kHolding_shopping:'Holding Shopping',
      kAll:'All',
      kView_Cart:'View Cart',
      kBuyvisitor:'Buy as a visitor',
      kPurchase_client:'Purchase client',
      kBrowse_products:'Browse Products',
      kTry_again:'Try again',
      kSee_More:'See More',
      kNew_Products:'New Products',
      kRelated_Products:'Related Products',
      kSave:'Save',

      kErorr_add_order:'error occurred while creating the request',
      knot_order:'We will contact you soon',
      kdone_send_order:'Thank you, I have been sent your request successfully',
      kSort_lower_price:'、Product from lowest price to high',
      kSort_higher_price:'Product from the highest price to the lowest',
      kPleaseEditeAddresses:'Please Edite your address',
      kAddToCart:'Add to Cart',
      kFillter:'Fillter',
      kBrand:'Brand',
      kSortby:'Sort by',
      kNewAddress:'New Address',
      kQuantity:'Quantity',
      kProductName:'Product Name',
      kPrice:'Price',
      kOrder_number:'Order Number',
      kDate:'Date',
      kTotal_Order:'Total Order',
      kSend_to:'Send to',
      kStatus:'Status',
      kSign_in_first:'Sign in first',
      kChangePassword:'Change Password',
      kDone:'Done',
      kMyOrders:'My Orders',
      kEditProfile:'Edit profile',
      kErorrLogin:'Name or password error',
      kErorr:'Erorr',
      kLogOut:'LogOut',
      kMyAddress:'My Address',
      kOldPassword:'Old Password',

      kNodata:'No data',
      kShippingAddress:'Shipping Address',
      kTitle:'Title',
      kComment:'Comment',
      kViewReviews:'View Reviews',
      kAddRating:'Add Rating',
      kDescription:'Description',
      kTax:'Tax',
      kcost_delivary_cash:'Payment fee upon receipt',
      kEditAddress:'Edit Address',
      kAddress:'Address',
      kReturnPolicy:'Return Policy',
      kCurrency:'Currency',

      kTotal:'Total',
      kShippingCosts:'ShippingCosts',
      kDiscount:'Discount',
      kSubtotal:'Subtotal',
      kSummary:'Summary',
      kPaymentMethod:'Payment Method',
      kCheackOut:'Cheack Out',
      kshipping_method:'Shipping Method',
      kNext:'Next',
      kStreet:'Street',
      kCountry:'Country',
      kCity:'City',
      kStates:'States',
      kFailedAddedCart:'Failed to add product to cart',
      kShowCart:'Show Cart',
      kContinuationshopping:'Continuation shopping',
      kDoneAdd:'This product has been added successfully',
      kEmailNullError:'Please Enter your email',
      kInvalidEmailError:'Please Enter Valid Email',
      kPassNullError:'Please Enter your password',
      kShortPassError:'Password is too short',
      kMatchPassError:'Passwords dont match',
      kNamelNullError:'Please Enter your Filed',
      kPhoneNumberNullError:'Please Enter your phone number',
      kAddressNullError:'Please Enter your address',
      kContactUs:'Contact Us',
      klang:'lang',
      kRateApp:'Rate app',
      kShareApp:'Share app',
      kPages:'Pages',
      kSignIn:'Sign in',
      kSignUp:'Sign Up',
      kCreateAccount:'Create Account',
      kAboutUs:'About Us',
      kPrivacyPolicy:'Privacy Policy',
      kMessage_contact_us:'do you need help ? Our team is here to help you.',
      kMessage_contact_useEmali:'Or through e-mail',
      kSendMessage:'send a message',
      kHomeTab:'Home',
      kFavoriteTab:'Favorite',
      kmyaccountTab:'My Account',
      kCategoriesTab:'Categories',
      kUserName:'UserName',
      kEmail:'Email',
      kPassword:'Password',
      kPasswordReset:'Password Reset',
      kRepeatPassword:'Repeat Password',
      kForgot_Password:'Forgot your password',
      kLogin_visitor:'Login visitor',
      kFirstName:'First Name',
      kLastName:'Last Name',
      kMobileNumber:'Mobile Number',
      kPhoneNullError :'Please Enter your Phone',
      kInvalidPhoneError :'Please Enter Valid Phone'

    },
    'ar': {
      kAll:'الكل',
      kdone_forGetPassword:'تم ارسال كلمة المرور الجديدة الى الأيميل',
      kQuantityNotAvailable:'الكمية غير متوفرة من هذا المنتج',
      kAvailable:'متوفر',
      kNotAvailable:'غير متوفر',
      kSend:'ارسال',
      kBuyvisitor:'الشراء كزائر',
      kPurchase_client:'الشراء كعميل',
      kHolding_shopping:'الأستمرار بالتسوق',
      kView_Cart:'عرض حقيبة التسوق',
      kYour_Cart:'سلة التسوق',
      kProduct:'منتج',
      kdetails:'التفاصيل',
      kAdd:'اضافة',
      kDiscountCode:'كود الخصم',
      kSave:'حفظ',
      kRelated_Products:'منتجات ذات صلة',
      kTry_again:'حاول مرة اخرى',
      kSee_More:'شاهد المزيد',
      kNew_Products:'جديد المنتجات',
      kErorr_add_order:'نعتذر منك، حصل خطأ اثناء انشاء الطلب',
      kdone_send_order:'شكرا لك، لقد تم ارسال طلبك بنجاح',
      knot_order:'سنتواصل معكم قريبا',
      kSearch:'بحث',
      kBrowse_products:'تصفح المنتجات',
      kSort_lower_price:'ترتيب من الأقل سعر الى الأعلى',
      kSort_higher_price:'الترتيب من الأعلى سعر الى الأقل سعر',
      kPleaseEditeAddresses:'لطفا عدل عنوانك',
      kSortby:'ترتيب',
      kOrder_number:'رقم الطلب',
      kDate:'التاريخ',
      kTotal_Order:'اجمالي الطلب',
      kSend_to:'يرسل الى',
      kStatus:'الحالة',
      kProductName:'اسم المنتج',
      kPrice:'السعر',
      kQuantity:'الكمية',
      kNewAddress:'عنوا  ن جديد',
      kAddToCart:'أضف للسلة',
      kFillter:'تصنيف حسب',
      kBrand:'ماركات',
      kNodata:'لا يوجد بيانات',
      kErorr:'خطأ',
      kChangePassword:'تغيير كلمة المرور',
      kOldPassword:'كلمة المرور القديمة',
      kDone:'تم',

      kLogOut:'تسجيل خروج',
      kEditProfile:'تعديل الملف الشخصي',
      kMyOrders:'طلباتي',
      kMyAddress:'عنواني',

      kErorrLogin:'الاسم او الباسورد خطأ',
      kSign_in_first:'قم بتسجيل الدخول اولا',
      kTitle:'عنوان',
      kComment:'تعليق',
      kViewReviews:'عرض التقييمات',
      kAddRating:'اضافة تقييم',
      kDescription:'الوصف',
      kCurrency:'العملة',
      kReturnPolicy:'سياسة الاسترجاع',
      kEditAddress:'تعديل العنوان',
      kAddress:'العنوان',
      kcost_delivary_cash:'رسوم الدفع عند الاستلام',
      kShippingCosts:'تكاليف الشحن',
      kTotal:'الاجمالي',
      kTax:'الضريبة',
      kDiscount:'الخصم',
      kSubtotal:'المجموع الفرعي',
      kSummary:'ملخص',
      kPaymentMethod:'طريقة الدفع',
      kCheackOut:'الدفع',
      kshipping_method:'طرق الشحن',
      kShippingAddress:'عنوان الشحن',
      kCountry:'الدولة',
      kStates:'المحافظة',
      kCity:'المدينة',
      kStreet:'الشارع',
      kNext:'التالي',
      kFailedAddedCart:'فشل اضافة المنتج الى السلة',
      kShowCart:'عرض حقيبة التسوق',
      kContinuationshopping:'الأستمرار بالتسوق',
      kDoneAdd:'تمت إضافة هذا المنتج بنجاح',
      'hello': 'مرحبا',
      kPhoneNullError :'الرجاء ادخال رقم الجوال',
      kInvalidPhoneError :'ادخل رقم هاتف صحيح',
      kEmailNullError:'رجاءا أدخل بريدك الإلكتروني',
      kInvalidEmailError:'الرجاء إدخال بريد إلكتروني صحيح',
      kPassNullError:'من فضلك أدخل رقمك السري',
      kShortPassError:'كلمة المرور قصيرة جدا',
      kMatchPassError:'كلمات المرور غير متطابقة',
      kNamelNullError:'من فضلك ادخل بالحقل المطلوب',
      kPhoneNumberNullError:'يرجى إدخال رقم الهاتف الخاص بك',
      kAddressNullError:'الرجاء إدخال عنوانك',
      kContactUs:'اتصل بنا',
      klang:'اللغة',
      kRateApp:'قيم التطبيق',
      kShareApp:'مشاركة التطبيق',
      kPages:"الصفحات",
      kSignIn:'تسجيل الدخول',
      kSignUp:'تسجيل',
      kCreateAccount:'انشاء حساب',
      kAboutUs:'من نحن',
      kPrivacyPolicy:'سياسة الخصوصية',
      kMessage_contact_us:' هل تحتاج الى مساعدة ؟ فريقنا هنا من.أجل مساعدتك.',
      kMessage_contact_useEmali:'أو من خلال الايميل',
      kSendMessage:'ارسل رسالة',
      kHomeTab:'الرئيسية',
      kFavoriteTab:'المفضلة',
      kmyaccountTab:'حسابي',
      kCategoriesTab:'الفئات',
      kUserName:'اسم المتخدم',
      kEmail:'الايميل',
      kPassword:'كلمة المرور',
      kPasswordReset:'اعادة تعيين كلمة المرور',
      kRepeatPassword:'تكرار كلمة المرور',
      kForgot_Password:'نسيت كلمة المرور',
      kLogin_visitor:'الدخول كزائر',
      kFirstName:'الأسم الأول',
      kLastName:'اسم العائلة',
      kMobileNumber:'رقم الجوال',

    }
  };


}