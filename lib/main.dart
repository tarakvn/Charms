import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:torch_light/torch_light.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:lottie/lottie.dart';
import 'spells_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const HogwartsApp());
}

class HogwartsApp extends StatelessWidget {
  const HogwartsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final stt.SpeechToText _speech = stt.SpeechToText();
  String _status = 'طلسم بگو...';

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await [Permission.microphone, Permission.camera].request();
  }

  void _playEffect(String url) {
    if (!mounted) return;
    showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => Scaffold(
        backgroundColor: Colors.black54,
        body: Center(child: Lottie.network(url, repeat: false)),
      ),
    );
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted && Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    });
  }

  void _castSpell(String text) async {
    for (var spell in allSpells) {
      if (text.contains(spell.incant)) {
        _playEffect(spell.lottieUrl);
        
        try {
          if (spell.id == 'lumos' || spell.id == 'lumos_maxima') {
            await TorchLight.enableTorch();
          } else if (spell.id == 'nox' || spell.id == 'nox_spell') {
            await TorchLight.disableTorch();
          } else if (spell.id == 'alohomora') {
            const AndroidIntent(action: 'android.settings.SECURITY_SETTINGS').launch();
          }
        } catch (_) {}
        
        if (!mounted) return;
        setState(() => _status = 'جادوی ${spell.name} اجرا شد!');
        return;
      }
    }
    
    // اینجا متن شنیده شده را نشان می‌دهیم تا اگر اشتباه بود متوجه شوی
    setState(() => _status = 'ناشناخته: "$text"');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0515),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                _status,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color(0xFFC9A227), fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              // در بخش onTap میکروفون در main.dart:
onTap: () async {
  bool available = await _speech.initialize();
  if (available) {
    _speech.listen(
      localeId: 'en_US', // <--- زبان روی انگلیسی تنظیم شد
      onResult: (res) {
        if (res.finalResult) {
          final spokenText = res.recognizedWords.toLowerCase().trim();
          print("متن شنیده شده: $spokenText"); // برای بررسی در کنسول
          _castSpell(spokenText);
        }
      },
    );
  }
},

              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFC9A227), width: 2),
                  color: const Color(0xFFC9A227).withOpacity(0.2),
                ),
                child: const Icon(Icons.mic, size: 50, color: Color(0xFFC9A227)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E0F32),
                foregroundColor: const Color(0xFFC9A227),
                side: const BorderSide(color: Color(0xFFC9A227)),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SpellbookPage()),
              ),
              icon: const Icon(Icons.menu_book),
              label: const Text("کتاب طلسم‌ها"),
            ),
          ],
        ),
      ),
    );
  }
}

class SpellbookPage extends StatelessWidget {
  const SpellbookPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0515),
      appBar: AppBar(
        title: const Text("کتاب طلسم‌ها", style: TextStyle(color: Color(0xFFC9A227))),
        backgroundColor: const Color(0xFF0D0515),
        iconTheme: const IconThemeData(color: Color(0xFFC9A227)),
      ),
      body: ListView.builder(
        itemCount: allSpells.length,
        itemBuilder: (context, index) {
          final spell = allSpells[index];
          return Card(
            color: const Color(0xFF1E0F32),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(spell.icon, color: const Color(0xFFC9A227)),
              title: Text(spell.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(spell.desc, style: const TextStyle(color: Colors.white70)),
            ),
          );
        },
      ),
    );
  }
}
