import 'package:flutter/material.dart';

class newsTile extends StatelessWidget {
  const newsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://images.skynewsarabia.com/images/v1/2024/07/02/1726213/800/450/1-1726213.JPG',
            height: 200,
            width: 400,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'تحدث كريستيانو رونالدو عن ركلة الجزاء التي أهدرها وانخراطه في نوبة بكاء، خلال مباراة منتخب بلاده البرتغال أمام سلوفينيا، الإثنين، في دور الـ16 من بطولة أوروبا',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
        Text(
          'وأهدر رونالدو ركلة جزاء في الوقت الإضافي لتنتهي المباراة بالتعادل السلبي، لكنه سجل في ركلات الترجيح وتصدى حارس المرمى ديوغو كوستا لثلاث ضربات، لتتغلب البرتغال على سلوفينيا وتتأهل إلى دور الثمانية',
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        )
      ],
    );
  }
}
