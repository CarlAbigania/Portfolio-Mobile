// screens/gallery_screen.dart
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class GalleryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _gallery = [
    {
      'id': 1,
      'title': 'Professional Photo',
      'description': 'Taken during company event',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494329503_1251032793200924_7635178422215502606_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeHNAKZ2-qXo03WHdz9zQfmINOV6iHBQn0k05XqIcFCfSRkwIgl4JBGlPh2si9gyxYEtQlu3z-7MQPRNyEwMrL92&_nc_ohc=asDMXGYQDzIQ7kNvwHOjNCv&_nc_oc=AdmcoStYfXGEg6aGrtVDM_cS2OkPMyGZwOQoz2E_JOAwVe9mdx_eyChW1DYg7NsM7kA&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHiTlQMSQCDmAt87nbt3CEzvbNp9o5xwRO55TGIoOEU-g&oe=68453341',
    },
    {
      'id': 2,
      'title': 'Project Showcase',
      'description': 'Working on Flutter app',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494814076_1393687058747182_86664193001600727_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeHQm66TKzp3tKHhfzdZ9ISYf9j6ez9C8Yh_2Pp7P0LxiLUGDRCPjoMRPvoPLMOIfJ6Yvgb4W7eyQHurQvSJEN73&_nc_ohc=axiOUBZ-ORcQ7kNvwHVV6ZQ&_nc_oc=Adkb_1lr14E3lAqNo0wpQTkpV3e_pYW1BZj2wQp4RWNsc6X8jnmTySL5GwESAuEy7QM&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHLmdmpMbUesJHv-nu3pgFiREhN9sF3h1YrLoXS_ydvqg&oe=684540A4',
    },
    {
      'id': 3,
      'title': 'Graduation Day',
      'description': 'University of Cabuyao, 2023',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494817209_990434903295963_8597524289158481321_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeFLYClSPZRrqv_s2QPVNH6gy0CIkTS9mY7LQIiRNL2Zjmz2L3nCLuNUtm-vlKv26PQPJworOXEKeKyY9fg21ftm&_nc_ohc=42mmSk3Po2sQ7kNvwGP8g4J&_nc_oc=AdkXKcKNHCpwFy0f_r9T1eWOVBFNHIujAn3Ol5Sk5AVNEWZpccxqU3d1iHy7Sog0qco&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHzJ06rZrMcfsSbCmusPN7G9kY8LvzfahnYG451Rl5hGQ&oe=6845591C',
    },
    {
      'id': 4,
      'title': 'Workshop',
      'description': 'Teaching Flutter Development',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494328452_2176993029420413_4441464827502246527_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeHb7JhijB5P-9Uy9gzb64TpeKidijg2L_F4qJ2KODYv8TyihLTNl_quGi_tbdiPsf-CViEbrR8s_pIJ7sDpzMbB&_nc_ohc=nXPFO1Qcox4Q7kNvwEQz0T6&_nc_oc=Adnt-LbufAxThh1RE51L3PRGgddAuQ4q6ZoqvDxlj7ta5hq5FfdOaRAC8oaaheY68_0&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHmm3zme-aBhQ4TxGPf5rCmNKLEerVaFg0dAJhu-1xtIA&oe=68454AEB',
    },
    {
      'id': 5,
      'title': 'Award Ceremony',
      'description': 'Best Mobile App Award',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494339474_680363364846332_7044499948357977877_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeEGhJoJ0BFsdtgw63jRb6T1ACy_-gfJEE4ALL_6B8kQTh4VekBs6K7Dbk1courNciqNc0vmcPv2BdPd34he1Wji&_nc_ohc=d4TwWxmMj_UQ7kNvwFBJtss&_nc_oc=AdlTCZBD9_k8WB3nRLUZojfCWkbRBcLGTcH_VOTR64Qe_0XeaVugub5jF0PqJrZOmis&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHIQpnW1WoSoFNUZhA1cNdQiZNNsJkEtOfmMITDoUQm4A&oe=68455361',
    },
    {
      'id': 6,
      'title': 'Hackathon',
      'description': 'With development team',
      'icon': Icons.person,
      'imagePath':
          'https://scontent.fmnl16-1.fna.fbcdn.net/v/t1.15752-9/494818832_1628897881163337_4237325638068434470_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeGItLM5Zk0IhOYeS8HJbn8taDmbhN04GoZoOZuE3TgahqzhR4TyYghIFt8NEFNhWUFoHvIttL8GvV21Vpp_ntRt&_nc_ohc=dLjXo--4YwcQ7kNvwFoom_9&_nc_oc=AdmXn3MKOK5LDRwsPovF4UpaddISm14DCKLhmZklh1eOrATWnzlCn5-m9UJr877B-OY&_nc_zt=23&_nc_ht=scontent.fmnl16-1.fna&oh=03_Q7cD2QHaqDGZLYE-ZHs5daCJhMrFPne_k8nubatBa3pW_Cvr1g&oe=6845437C',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(title: 'Gallery'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 3 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: _gallery.length,
                  itemBuilder: (context, index) {
                    return _buildGalleryItem(context, _gallery[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryItem(BuildContext context, Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        _showPhotoDetails(context, item);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  item['imagePath'],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.blue[50],
                      child: Icon(
                        item['icon'],
                        size: 80,
                        color: Colors.blue[800],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    item['description'],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPhotoDetails(BuildContext context, Map<String, dynamic> item) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    item['imagePath'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;
                      return Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          item['icon'],
                          size: 150,
                          color: Colors.blue[800],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                item['title'],
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 10),
              Text(
                item['description'],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 20),
              Text(
                'This is a placeholder for a detailed description of the photo. In a real application,this would contain information about where and when the photo was taken, who is in it, andany relevant stories or memories associated with it.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    color: Colors.blue,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.download),
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
