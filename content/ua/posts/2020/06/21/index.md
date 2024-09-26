
---
title: "mikrotik"
date: "2020-06-21T12:30:00Z"
categories:
    - blog
tags:
    - imported
---

Ще один викопаний із чорновиків некропост. В принципі, все ще досить вірно і актуально, окрім того, що "нещодавно" (став власником) \- навіть невідомо коли.... Не знайшов дані про покупку, що досить дивно. Але так приблизно навскидку 2015 чи шо.....  
  
Став нещодавно власником простенького маленького роутера від mikrotik \- hap ac lite. Lite \- це значить, що він не вміє 1Гб, у іншому \- це двухдіапазонний вайфай\-роутер (на 2 і на 5 Ггц) із 600\-мегагерцовим процом на борту, 5 Ethernet портами і підтримкою PoE.  
І якщо ви такий гостинний господар, як і я і вам не шкода для друзів\-родичів свого інтернету, то ось як можна оффлайново (не світити ж свій пароль на сумнівних сайтах) зненерувати QR\-код для шарінгу своєї вай\-фай мережі (нагуглено на [реддіт](https://www.reddit.com/r/InternetIsBeautiful/comments/33evqp/generate_a_qr_code_for_wifi_networks/)):  
qrencode \-o \- "Ce n'est pas un QR code" \| display \-resize 450x450 \-  

  

WIFI:T:\<authentication\>;S:\<yourSSID\>;P:\<yourpassword/PSK\>;H:\<true/false\>;  

  

Опис формату:  
  


Hidden is optional (defaults to false), replace values in \<\> with your info (without the \<\>). T: is the authenthication method, WPA works for both WPA and WPA2\. The last semicolon (for H) needs to be included even if H: itself is omitted.

example:

```
WIFI:T:WPA;S:mywifi;P:hunter2;;

```


