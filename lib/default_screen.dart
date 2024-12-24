import 'package:sept24batch7pm/utils/colors.dart';
import 'package:sept24batch7pm/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  bool isLogin = false;
  late SharedPreferences _preferences;
  List city = [];

  void _initSharedPreferences() async {
    _preferences = await SharedPreferences.getInstance();
    isLogin = _preferences.getBool(prefIsLogin) ?? false;
    debugPrint(_preferences.getString('stringValue'));
    debugPrint(_preferences.getInt('intValue').toString());
    debugPrint(_preferences.getDouble('doubleValue').toString());
    if (_preferences.containsKey('cityNameList')) {
      city = _preferences.getStringList('cityNameList') ?? [];
    }
    setState(() {});
  }

  Future _openUrlFromLink() async {
    final Uri urlLink = Uri.parse("https://flutter.dev");
    if (await canLaunchUrl(urlLink) == true) {
      launchUrl(urlLink);
    } else {
      MySnackBar.showSnackBar(
        context: context,
        backGroundColor: Colors.red,
        content: 'Could not launch $urlLink',
      );
    }
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Future _openEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'info@mayursoftware.in',
      query: _encodeQueryParameters(
        {
          'subject': 'Example Subject & Symbols are allowed!',
          'body': 'Hello, Good Afternoon!.'
        },
      ),
    );

    launchUrl(emailLaunchUri);
  }

  Future _openPhone() async {
    Uri uriPhone = Uri(
      scheme: 'tel',
      path: '+911234567890'
    );

    launchUrl(uriPhone);
  }

  Future _openSMS() async {
    Uri uriSMS = Uri(
      scheme: 'sms',
      path: '+911234567890',
      queryParameters: {
        'body' : "Hello"
      }
    );
    launchUrl(uriSMS);
  }

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColorAppBar,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Contact us on SMS'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: _openSMS,
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Contact us on Phone'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: _openPhone,
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Contact us on Email'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: _openEmail,
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Privacy Policy'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              _openUrlFromLink();
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Register Screen 2'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeRegisterScreen2);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Employee List'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeEmployeeListScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('List Builder Screen'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeListBuilderScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Tab Screen'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeTabScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Dialog Screen'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeDialogScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Image Picker'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeImagePickerScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Register'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeRegisterScreen);
            },
          ),
          const SizedBox(height: 20),
          isLogin
              ? ListTile(
                  tileColor: Colors.blueAccent,
                  title: const Text('Logout'),
                  textColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _preferences.setBool(prefIsLogin, false);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (Route r) => false);
                  },
                )
              : ListTile(
                  tileColor: Colors.blueAccent,
                  title: const Text('Login'),
                  textColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, routeLoginScreen);
                  },
                ),
          const SizedBox(height: 20),
          ListView.builder(
            itemCount: city.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Text(city[index]),
          ),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Clear All Preferences'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              // _preferences.clear();
              _preferences.remove('cityNameList');
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route r) => false);
            },
          ),
        ],
      ),
    );
  }
}
