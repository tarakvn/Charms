import 'package:flutter/material.dart';

class Spell {
  final String id;
  final String name;
  final String incant;
  final String lottieUrl;
  final String desc;
  final IconData icon;

  const Spell(this.id, this.name, this.incant, this.lottieUrl, this.desc, this.icon);
}

const List<Spell> allSpells = [
  Spell('lumos', 'Lumos', 'لوموس', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'چراغ‌قوه را روشن می‌کند.', Icons.lightbulb),
  Spell('nox', 'Nox', 'ناکس', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'چراغ‌قوه را خاموش می‌کند.', Icons.lightbulb_outline),
  Spell('alohomora', 'Alohomora', 'آلوهومورا', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'باز کردن تنظیمات.', Icons.lock_open),
  Spell('incendio', 'Incendio', 'اینسندیو', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'تولید آتش جادویی.', Icons.local_fire_department),
  Spell('wingardium', 'Wingardium Leviosa', 'وینگاردیم لویوسا', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'شناور کردن اجسام.', Icons.air),
  Spell('expelliarmus', 'Expelliarmus', 'اکسپلیارموس', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'خلع سلاح حریف.', Icons.flash_on),
  Spell('protego', 'Protego', 'پروتگو', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'ایجاد سپر جادویی.', Icons.shield),
  Spell('accio', 'Accio', 'آکیو', 'https://assets3.lottiefiles.com/packages/lf20_d4e5f6.json', 'احضار اشیاء از راه دور.', Icons.arrow_downward),
  Spell('stupefy', 'Stupefy', 'استوپفای', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'بیهوش کردن حریف.', Icons.bolt),
  Spell('expecto', 'Expecto Patronum', 'اکسپکتو پاترونوم', 'https://assets5.lottiefiles.com/packages/lf20_j0k1l2.json', 'احضار محافظ نقره‌ای (پاترونوس).', Icons.auto_awesome),
  Spell('avada', 'Avada Kedavra', 'آوادا کداورا', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'طلسم مرگبار.', Icons.dangerous),
  Spell('crucio', 'Crucio', 'کروزیو', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'شکنجه‌گر.', Icons.highlight_off),
  Spell('imperio', 'Imperio', 'امپریو', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'کنترل ذهن.', Icons.psychology),
  Spell('expulso', 'Expulso', 'اکسپولسو', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'ایجاد انفجار.', Icons.whatshot),
  Spell('confundo', 'Confundo', 'کونفوندو', 'https://assets3.lottiefiles.com/packages/lf20_d4e5f6.json', 'گیج کردن هدف.', Icons.help),
  Spell('obliviate', 'Obliviate', 'اوبلیویات', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'پاک کردن حافظه.', Icons.settings_backup_restore),
  Spell('sectumsempra', 'Sectumsempra', 'سکتومسمپرا', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'ایجاد بریدگی‌های عمیق.', Icons.content_cut),
  Spell('levicorpus', 'Levicorpus', 'لويکورپوس', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'آویزان کردن از مچ پا.', Icons.vertical_align_top),
  Spell('muffliato', 'Muffliato', 'مافلیاتو', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'ایجاد وزوز در گوش دیگران.', Icons.volume_off),
  Spell('aguamenti', 'Aguamenti', 'آگوامنتی', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'تولید آب از چوبدستی.', Icons.water_drop),
  Spell('epoximise', 'Epoximise', 'اپوکسی‌میز', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'چسباندن اشیاء به هم.', Icons.link),
  Spell('reparo', 'Reparo', 'ریپارو', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'تعمیر اشیاء شکسته.', Icons.build),
  Spell('scorgify', 'Scorgify', 'اسکورجیفای', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'تمیز کردن کثیفی.', Icons.cleaning_services),
  Spell('tergeo', 'Tergeo', 'ترجئو', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'پاک کردن مایعات.', Icons.cleaning_services),
  Spell('alarte', 'Alarte Ascendare', 'الارتی آسنداره', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'پرت کردن شیء به هوا.', Icons.arrow_upward),
  Spell('arresto', 'Arresto Momentum', 'آرستو مومنتوم', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'کم کردن سرعت سقوط.', Icons.slow_motion_video),
  Spell('ascendio', 'Ascendio', 'آسندیو', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'پرتاب جادوگر به سمت بالا.', Icons.navigation),
  Spell('bombarda', 'Bombarda', 'بومباردا', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'منهدم کردن موانع.', Icons.bubble_chart),
  Spell('cushioned', 'Cushioning Charm', 'کاشنینگ چارم', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'ایجاد نرمی و ضربه‌گیر.', Icons.bed),
  Spell('densaugeo', 'Densaugeo', 'دنسائوگئو', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'بزرگ کردن دندان‌ها.', Icons.face),
  Spell('diffindo', 'Diffindo', 'دیفیندو', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'بریدن و پاره کردن.', Icons.cut),
  Spell('disillusionment', 'Disillusionment Charm', 'دیسیلوژنمنت', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'استتار و همرنگ محیط شدن.', Icons.visibility_off),
  Spell('draconifors', 'Draconifors', 'دراکونیفورز', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'تبدیل مجسمه به اژدهای کوچک.', Icons.local_fire_department),
  Spell('ebublio', 'Ebublio', 'ایبوبلیو', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'حبس کردن هدف در حباب بزرگ.', Icons.bubble_chart),
  Spell('engorgio', 'Engorgio', 'انگورجیو', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'بزرگ کردن اجسام.', Icons.zoom_in),
  Spell('episkey', 'Episkey', 'اپیسکی', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'درمان آسیب‌های جزئی.', Icons.medical_services),
  Spell('evanesco', 'Evanesco', 'اوونسکو', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'نابود کردن و محو کردن اشیاء.', Icons.blur_off),
  Spell('ferula', 'Ferula', 'فرولا', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'بستن آتل و باند پیچی.', Icons.healing),
  Spell('finestra', 'Finite Incantatem', 'فینیته اینکانتاتم', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'پایان دادن به اثر طلسم‌ها.', Icons.stop),
  Spell('flagrate', 'Flagrate', 'فلاگرایت', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'ایجاد نشانه‌های آتشین در هوا.', Icons.create),
  Spell('flipendo', 'Flipendo', 'فلیپندو', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'هل دادن و به عقب پرتاب کردن.', Icons.keyboard_arrow_left),
  Spell('furnunculus', 'Furnunculus', 'فورونکولوس', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'ایجاد جوش روی پوست.', Icons.pest_control),
  Spell('geminio', 'Geminio', 'جیمینیو', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'تکثیر کردن اشیاء.', Icons.copy),
  Spell('glisseo', 'Glisseo', 'گلیسیو', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'صاف و سرسره‌ای کردن پله‌ها.', Icons.trending_flat),
  Spell('homenum', 'Homenum Revelio', 'هومنوم رِوِلیو', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'آشکار کردن حضور انسان‌ها.', Icons.person_search),
  Spell('immobulus', 'Immobulus', 'ایموبولوس', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'متوقف کردن موجودات متحرک.', Icons.pause_circle),
  Spell('impedimenta', 'Impedimenta', 'امپدیمنتا', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'کُند کردن حرکت مهاجمان.', Icons.timer),
  Spell('impervius', 'Impervius', 'امپرویو', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'ضد آب کردن اشیاء.', Icons.umbrella),
  Spell('incarcerous', 'Incarcerous', 'اینکارسِروس', 'https://assets2.lottiefiles.com/packages/lf20_rc6315.json', 'بستن هدف با طناب.', Icons.linear_scale),
  Spell('langlock', 'Langlock', 'لنگ‌لاک', 'https://assets4.lottiefiles.com/packages/lf20_g7h8i9.json', 'چسباندن زبان به سقف دهان.', Icons.lock),
  Spell('locomotor', 'Locomotor', 'لوکوموتور', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'بلند کردن و حرکت دادن شیء.', Icons.open_with),
  Spell('lumos_maxima', 'Lumos Maxima', 'لوموس ماکسیما', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'تولید نور بسیار قوی.', Icons.wb_sunny),
  Spell('lumos_solem', 'Lumos Solem', 'لوموس سولم', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'ایجاد نور خورشید مصنوعی.', Icons.brightness_high),
  Spell('nox_spell', 'Nox', 'ناکس', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'خاموش کردن نور چوبدستی.', Icons.nights_stay),
  Spell('orbis', 'Orbis', 'اوربیس', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'مدفون کردن هدف در زمین.', Icons.vertical_align_bottom),
  Spell('pack', 'Pack', 'پک', 'https://assets5.lottiefiles.com/packages/lf20_zyw5u8.json', 'جمع کردن خودکار وسایل در چمدان.', Icons.cases),
  Spell('periculum', 'Periculum', 'پریکولوم', 'https://assets9.lottiefiles.com/packages/lf20_9h4fsc.json', 'پرتاب جرقه‌های قرمز هشداردهنده.', Icons.warning),
  Spell('piertotum', 'Piertotum Locomotor', 'پیرتوتم لوکوموتور', 'https://assets8.lottiefiles.com/packages/lf20_x62ch1.json', 'زنده کردن مجسمه‌ها و زره‌ها.', Icons.smart_toy),
  Spell('prior', 'Prior Incantato', 'پریور اینکنتاتو', 'https://assets10.lottiefiles.com/packages/lf20_t2sx5y.json', 'نمایش آخرین طلسم اجرا شده.', Icons.history),
  Spell('quietus', 'Quietus', 'کویی توس', 'https://assets1.lottiefiles.com/packages/lf20_a1b2c3.json', 'پایین آوردن بلندی صدا.', Icons.volume_down),
];
