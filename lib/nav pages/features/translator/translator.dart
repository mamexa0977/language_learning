


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';



class TranslatorPage extends StatefulWidget {
  @override
  _TranslatorPageState createState() => _TranslatorPageState();
}

class _TranslatorPageState extends State<TranslatorPage> {
  final TextEditingController _textController = TextEditingController();
  final GoogleTranslator _translator = GoogleTranslator();

  String _translatedText = '';

  void _translateText() async {
    String inputText = _textController.text;
    
    if (inputText.isNotEmpty) {
      Translation translation = await _translator.translate(inputText, to: language.text);
      setState(() {
        _translatedText = translation.text;
      });
    }
  }
  final language = TextEditingController();
  
  late String _selectedOption;
 List<LanguageOption> _languageOptions = [

  LanguageOption('af', 'Afrikaans'),
  LanguageOption('sq', 'Albanian'),
  LanguageOption('oo', 'Oromo'),
  LanguageOption('ti', 'Tigriyna'),
  LanguageOption('am', 'Amharic'),
  LanguageOption('ar', 'Arabic'),
  LanguageOption('hy', 'Armenian'),
  LanguageOption('az', 'Azerbaijani'),
  LanguageOption('eu', 'Basque'),
  LanguageOption('be', 'Belarusian'),
  LanguageOption('bn', 'Bengali'),
  LanguageOption('bs', 'Bosnian'),
  LanguageOption('bg', 'Bulgarian'),
  LanguageOption('ca', 'Catalan'),
  LanguageOption('ceb', 'Cebuano'),
  LanguageOption('ny', 'Chichewa'),
  // LanguageOption('zh', 'Chinese (Simplified)'),
  // LanguageOption('zh-TW', 'Chinese (Traditional)'),
  LanguageOption('co', 'Corsican'),
  LanguageOption('hr', 'Croatian'),
  LanguageOption('cs', 'Czech'),
  LanguageOption('da', 'Danish'),
  LanguageOption('nl', 'Dutch'),
  LanguageOption('en', 'English'),
  LanguageOption('eo', 'Esperanto'),
  LanguageOption('et', 'Estonian'),
  LanguageOption('tl', 'Filipino'),
  LanguageOption('fi', 'Finnish'),
  LanguageOption('fr', 'French'),
  LanguageOption('fy', 'Frisian'),
  LanguageOption('gl', 'Galician'),
  LanguageOption('ka', 'Georgian'),
  LanguageOption('de', 'German'),
  LanguageOption('el', 'Greek'),
  LanguageOption('gu', 'Gujarati'),
  LanguageOption('ht', 'Haitian Creole'),
  LanguageOption('ha', 'Hausa'),
  LanguageOption('haw', 'Hawaiian'),
  LanguageOption('iw', 'Hebrew'),
  LanguageOption('hi', 'Hindi'),
  LanguageOption('hmn', 'Hmong'),
  LanguageOption('hu', 'Hungarian'),
  LanguageOption('is', 'Icelandic'),
  LanguageOption('ig', 'Igbo'),
  LanguageOption('id', 'Indonesian'),
  LanguageOption('ga', 'Irish'),
  LanguageOption('it', 'Italian'),
  LanguageOption('ja', 'Japanese'),
  LanguageOption('jw', 'Javanese'),
  LanguageOption('kn', 'Kannada'),
  LanguageOption('kk', 'Kazakh'),
  LanguageOption('km', 'Khmer'),
  LanguageOption('ko', 'Korean'),
  LanguageOption('ku', 'Kurdish'),
  LanguageOption('ky', 'Kyrgyz'),
  LanguageOption('lo', 'Lao'),
  LanguageOption('la', 'Latin'),
  LanguageOption('lv', 'Latvian'),
  LanguageOption('lt', 'Lithuanian'),
  LanguageOption('lb', 'Luxembourgish'),
  LanguageOption('mk', 'Macedonian'),
  LanguageOption('mg', 'Malagasy'),
  LanguageOption('ms', 'Malay'),
  LanguageOption('ml', 'Malayalam'),
  LanguageOption('mt', 'Maltese'),
  LanguageOption('mi', 'Maori'),
  LanguageOption('mr', 'Marathi'),
  LanguageOption('mn', 'Mongolian'),
  LanguageOption('my', 'Burmese'),
  LanguageOption('ne', 'Nepali'),
  LanguageOption('no', 'Norwegian'),
  LanguageOption('ps', 'Pashto'),
  LanguageOption('fa', 'Persian'),
  LanguageOption('pl', 'Polish'),
  LanguageOption('pt', 'Portuguese'),
  LanguageOption('pa', 'Punjabi'),
  LanguageOption('ro', 'Romanian'),
  LanguageOption('ru', 'Russian'),
  LanguageOption('sm', 'Samoan'),
  LanguageOption('gd', 'Scots Gaelic'),
  LanguageOption('sr', 'Serbian'),
  LanguageOption('st', 'Sesotho'),
  LanguageOption('sn', 'Shona'),
  LanguageOption('sd', 'Sindhi'),
  LanguageOption('si', 'Sinhala'),
  LanguageOption('sk', 'Slovak'),
  LanguageOption('sl', 'Slovenian'),
  LanguageOption('so', 'Somali'),
  LanguageOption('es', 'Spanish'),
  LanguageOption('su', 'Sundanese'),
  LanguageOption('sw', 'Swahili'),
  LanguageOption('sv', 'Swedish'),
  LanguageOption('tg', 'Tajik'),
  LanguageOption('ta', 'Tamil'),
  LanguageOption('tt', 'Tatar'),
  LanguageOption('te', 'Telugu'),
  LanguageOption('th', 'Thai'),
  LanguageOption('tr', 'Turkish'),
  LanguageOption('tk', 'Turkmen'),
  LanguageOption('uk', 'Ukrainian'),
  LanguageOption('ur', 'Urdu'),
  LanguageOption('ug', 'Uyghur'),
  LanguageOption('uz', 'Uzbek'),
  LanguageOption('vi', 'Vietnamese'),
  LanguageOption('cy', 'Welsh'),
  LanguageOption('xh', 'Xhosa'),
  LanguageOption('yi', 'Yiddish'),
  LanguageOption('yo', 'Yoruba'),
  LanguageOption('zu', 'Zulu'),
  // Add more language options here
];


  void _selectOption(String option) {
    setState(() {
      _selectedOption = option;
      language.text = option;
    });
  }

  @override
  void dispose() {
    language.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translator App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: language,
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Select language ',
                suffixIcon: IconButton(
  icon: Icon(Icons.arrow_drop_down),
  onPressed: () {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // Handle search filter here
                // Update the displayed list based on the search value
              },
            ),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: _languageOptions
                      .map((language) => ListTile(
                            title: Text(language.languageName),
                            onTap: () {
                              _selectOption(language.languageCode);
                              Navigator.pop(context);
                            },
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
),

              ),
            ),
          ],
        ),
      ),
    
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter text to translate...',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _translateText,
              child: Text('Translate'),
            ),
            SizedBox(height: 20),
            Text(
              'Translated Text:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(_translatedText),
          ],
        ),
      ),
    );
  }
}
class LanguageOption {
  final String languageCode;
  final String languageName;

  LanguageOption(this.languageCode, this.languageName);
}
