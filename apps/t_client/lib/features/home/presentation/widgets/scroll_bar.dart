import 'package:flutter/material.dart';

///
class BuildScrollBar extends StatelessWidget {
  ///
  const BuildScrollBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: scrollListData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  scrollListData[index],
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 3,
                  width: 60,
                  color: index == 0
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<SocailPost> data = [
  SocailPost(
    title: 'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
    postDate: ' Aug 11, 2022',
    detail: '''
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.
STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!

Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:
नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  ''',
    totalViews: '2000',
    tags:
        '''  #krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal#krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal#krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal''',
    socialLink: 'Pmg2PtMwhgs',
    time: '1hr Ago',
    color: const Color(0xffE21F27),
    text: 'YouTube',
  ),
  SocailPost(
    color: const Color(0xff0F5EA2),
    text: 'Facebook',
    title: 'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
    postDate: ' Aug 11, 2022',
    detail: '''
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.
STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!

Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:
नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  ''',
    totalViews: '2000',
    tags: '''
#ntvnews #nepaltelevision #krishi#nabinkrishi
     #krishiprabidhi #krishinepal #nepalkrishi #krishi
     #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal''',
    socialLink: 'Pmg2PtMwhgs',
    time: '1hr Ago',
  ),
  SocailPost(
    color: const Color(0xff812082),
    text: 'TOP NEWS',
    title: 'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
    postDate: ' Aug 11, 2022',
    detail: '''
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.
STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!

Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:
नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  ''',
    totalViews: '2000',
    tags: '''
#ntvnews #nepaltelevision #krishi#nabinkrishi
     #krishiprabidhi #krishinepal #nepalkrishi #krishi
     #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal''',
    socialLink: 'Pmg2PtMwhgs',
    time: '1hr Ago',
  ),
  SocailPost(
    color: const Color(0xff17AF4E),
    text: 'ABC news',
    title: 'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
    postDate: ' Aug 11, 2022',
    detail: '''
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.
STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!

Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:
नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  ''',
    totalViews: '2000',
    tags: '''
#ntvnews #nepaltelevision #krishi#nabinkrishi
     #krishiprabidhi #krishinepal #nepalkrishi #krishi
     #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal''',
    socialLink: 'Pmg2PtMwhgs',
    time: '1hr Ago',
  ),
  SocailPost(
    title: 'NABIN KRISHI PRABIDHI || Nepal Television 2079-04-23',
    postDate: ' Aug 11, 2022',
    detail: '''
Subscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.
STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!

Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:
नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  ''',
    totalViews: '2000',
    tags: '''
#ntvnews #nepaltelevision #krishi#nabinkrishi
     #krishiprabidhi #krishinepal #nepalkrishi #krishi
     #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepal''',
    socialLink: 'Pmg2PtMwhgs',
    time: '1hr Ago',
    color: const Color(0xffE21F27),
    text: 'YouTube',
  ),
];

final scrollListData = [
  'Trending',
  'Trending',
  'Trending feature',
  'Trending',
  'Trending',
  'Trending',
];

// ignore_for_file: public_member_api_docs

class SocailPost {
  SocailPost({
    required this.color,
    required this.text,
    required this.title,
    required this.postDate,
    required this.detail,
    required this.totalViews,
    required this.tags,
    required this.socialLink,
    required this.time,
  });

  final String title;
  final String postDate;
  final String detail;
  final String totalViews;
  final String socialLink;
  final String tags;
  final String time;
  final Color color;
  final String text;
}

/// Socal medial Platform
enum SocialPlatform { youtube, facebook, abcNews, topNews }
