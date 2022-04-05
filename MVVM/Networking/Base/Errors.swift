//
//  Errors.swift
//  Banana
//
//  Created by Abdulrahman Alaa on 8/5/20.
//  Copyright © 2020 Abdulrahman Alaa. All rights reserved.
//

import Foundation


struct ErrorMessage {
    
    static let genericError = "Something went wrong please try again later"
    
}



struct MyErrors {
    
    static let errorsEn = [
        
        "Internal server error",
        "Success",
        "Not authorized you must login",
        "User not found",
        "Your account blocked",
        "Wrong data",
        "Phone number already registered",
        "Wrong mobile number or email",
        "Wrong password",
        "Not found",
        "Cart is empty",
        "You are not the order owner!",
        "The order status not started",
        "Already Added!",
        "The order status not ended",
        "The new is password identical with the old password",
        "The new is mobile identical with the old mobile",
        "You must login again",
        "",
        "Offer is canceled or the order is ended",
        "Payment error",
        "client didn't select the seller's offer",
        "some thing happend in client payment",
        "seller can't add more than offer for the same order",
        "can't find selected offer for the order",
        "Issue already created",
        "This email is already registered",
        "you should provide certificate for order category",
        "Business activity papers are under review",
        "certificate expired",
        "category already exists",
        "error sending sms",
        "invalid mobile number",
        "no sms Credi",
        "you must verfy the account to countenue", //34
        "not allowed url accout allready verfied",
        "wrong code",
        "validation code expired",
        "empty",
        "Not enough money in your wallet please charge!",
        "The order not ended!",
        "You didn't pay!",
        "Can't cancel order after delivered!",
        "Order Canceled!",
        "No offer found!",
        "Order already delivered!",
        "Order canceled by the client!",
        "Order didn't delivered",//47
        "Not enough balance in your wallet!",
        "order didn't delivered",
        "You can't make a complaint after 3 days!",
        "price less than banana delivery price",
        "You can\'t filter with location in guest",
        "You should provide location",
        "You must be logged in to use this feature",
        
        
    ]
    

    static let errorsAr = [
        "خطأ في الخادم",
        "تم",
        "غير مسموح يجب تسجيل الدخول",
        "مستخدم غير موجود",
        "تم حظر حسابك",
        "خطأ في البيانات",
        "رقم الهاتف مسجل من قبل",
        "رقم الهاتف أو البريد غير صحيح",
        "كلمة المرور غير صحيحة",
        "غير موجود",
        "العربة فارغة",
        "انت لست المالك!",
        "the order status not started",
        "موجود بالفعل!",
        "the order status != ended",
        "كلمة الجديدة مطابقة للقديمة",
        "رقم الهاتف الجديد مطابق للقديم",
        "يجب تسجيل الدخول",
        "غير مسموح به عنوان url تم التحقق منه بالفعل",
        "تم إلغاء العرض أو تم إنهاء الطلب",
        "خطأ في عملية الدفع",
        "لم يقم العميل بتحديد عرض البائع",
        "حدث شيء ما في دفع العميل",
        "لا يمكن للبائع إضافة أكثر من عرض لنفس الطلب",
        "لا يمكن العثور على العرض المحدد للطلب",
        "تم إرسال شكوي بالفعل",
        "هذا البريد مسجل مسبقاً",
        "يجب عليك تقديم شهادة لفئة الطلب",
        "أوراق النشاط التجاري قيد المراجعة",
        "انتهت صلاحية الشهادة",
        "الفئة موجودة بالفعل",
        "خطأ في إرسال الرسائل القصيرة",
        "رقم هاتف غير صالح",
        "لا توجد رسالة نصية كريدي",
        "يجب عليك التحقق من الحساب للاستمرار",
        "",
        "كود خاطئ",
        "كود التحقق منتهي الصلاحية",
        "فارغ",
        "لا يوجد ما يكفي من المال في محفظتك ، الرجاء الشحن!",
        "الطلب لم ينته",
        "لم تدفع! ",
        "لا يمكن إلغاء الطلب بعد تسليمه!",
        " تم إلغاء الطلب!",
        "لم يتم العثور على عرض!",
        "تم تسليم الطلب بالفعل! ",
        "الطلب تم إلغاؤه من قبل العميل!",
        "الطلب لم يحذف",
        "ليس لديك رصيد كافٍ!",
        "الطلب لم يحذف",
        " لا يمكنك تقديم شكوى بعد 3 أيام!",
        " سعر أقل من 30",
        "لا يمكنك التصفية في وضع التجربة! ",
        "يجب عليك تحديد موقعك اولا! ",
     "يجب تسجيل دخول لاستخدام هذه الخاصية",
    
    ]

            
    
    
    static let errorsUr = [
         
         "اندرونی سرور کی خرابی",
         "کامیابی",
         "مجاز نہیں آپ کو لاگ ان کرنا ہوگا",
         "صارف نہیں ملا",
         "آپ کا اکاؤنٹ مسدود ہے",
         "غلط شرائط رازداری",
         "فون نمبر پہلے ہی رجسٹرڈ ہے",
         "غلط موبائل نمبر یا ای میل",
         "غلط پاس ورڈ",
         "نہیں ملا",
         "ٹوکری خالی ہے",
         "آپ آرڈر مالک نہیں ہیں !!",
         "آرڈر کی حیثیت! = شروع کردی گئی",
         "پہلے ہی شامل!",
         "آرڈر کی حیثیت! = ختم ہوگئی",
         "نیا پاس ورڈ پرانے پاس ورڈ سے مماثل ہے",
         "نیا موبائل پرانا موبائل جیسی ہے",
         "آپ کو دوبارہ لاگ ان کرنا ہوگا",
         "",
         "پیش کش منسوخ ہے یا آرڈر ختم ہوچکا ہے",
         "ادائیگی میں خرابی",
         "مؤکل نے بیچنے والے کی پیش کش کو منتخب نہیں کیا",
         "کچھ چیز کلائنٹ کی ادائیگی میں خوش ہوجاتی ہے",
         "ایلر اسی آرڈر کی پیش کش سے زیادہ شامل نہیں کرسکتا ہے",
         "آرڈر کیلئے منتخب پیش کش نہیں ڈھونڈ سکتا ہے",
         "مسئلہ پہلے ہی پیدا ہوچکا ہے",
         "یہ ای میل پہلے ہی اندراج شدہ ہے",
         "آپ کو آرڈر زمرے کے لئے سند فراہم کرنا چاہئے",
         "ایک یا زیادہ آرڈر کے زمرے کا جائزہ لیا جارہا ہے",
         "سرٹیفکیٹ کی میعاد ختم ہوگئی",
         "زمرہ پہلے سے موجود ہے",
         "ایس ایم ایس بھیجنے میں خامی",
         "غلط موبائل نمبر",
         "کوئی ایس ایم ایس کریڈٹ نہیں ہے",
         "جاری رکھنے کے ل  آپ کو اکاؤنٹ کی تصدیق کرنی ہوگی",
         "اجازت نہیں ہے کہ  ایکٹ آؤٹ ریڈی تصدیق ہو",
         "غلط کوڈ",
         "توثیقی کوڈ کی میعاد ختم ہوگئی",
         "خالی",
         "براہ کرم آپ کے بٹوے میں کافی رقم نہیں ہے!",
         "آرڈر ختم نہیں ہوا!",
         "آپ نے ادائیگی نہیں کی!",
         "آرڈر دینے کے بعد منسوخ نہیں کیا جاسکتا!",
         "آرڈر منسوخ!",
         "کوئی پیش کش نہیں ملی!",
         "آرڈر پہلے ہی پہنچا دیا گیا ہے!",
         "موکل کے ذریعہ آرڈر منسوخ!",
         "آرڈر فراہم نہیں کیا",
         "آپ کے بٹوے میں کافی مقدار میں بیلنس نہیں!",
         "آرڈر نہیں دیا گیا",
         "آپ 3 دن کے بعد شکایت نہیں کرسکتے ہیں!",
         "کیلے کی ترسیل کی قیمت سے کم قیمت",
         "آپ مہمان میں جگہ کے ساتھ فلٹر نہیں کرسکتے ہیں",
         "آپ کو مقام فراہم کرنا چاہئے",
         "اس خصوصیت کو استعمال کرنے کے ل You آپ کو لاگ ان کرنا ہوگا",
         
     ]
 
    
}

