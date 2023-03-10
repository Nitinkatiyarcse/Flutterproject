import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //ENGLISH
        'en_US': {
          'hello': 'Hello Team',
          'message': 'Welcome To Noida 57',
          'translate': 'Translation',
          'changelang': 'Change Language',
          'calories': 'Calories',
          'phone number': 'Phone number',
          'uRL': 'URL',
          'password': 'Password',
          'email': 'Email',
          'name': 'Name',
          'employee form': 'Employee Form'
        },
        // HINDI
        'hi_IN': {
          'hello': 'नमस्ते टीम',
          'message': 'नोएडा 57 में आपका स्वागत है',
          'translate': 'अनुवाद',
          'title': 'स्पंदन भाषा',
          'changelang': 'भाषा बदलो',
          'calories': 'कैलोरी',
          'phone number': 'फ़ोन नंबर',
          'uRL': 'यूआरएल',
          'password': 'पासवर्ड',
          'email': 'ईमेल',
          'name': 'नाम',
          'employee form': 'कर्मचारी प्रपत्र'
        },
      };
}
