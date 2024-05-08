part of creek_blue;

class LanguageModel{

  OperationType type = OperationType.invalid;
  LanguageType languageType = LanguageType.english;
  ///1bytes 中文
  bool chineseSupport = false ;
  ///1bytes 英语
  bool englishSupport = true;
  ///1bytes 德语
  bool germanSupport = true;
  ///1bytes 西班牙语
  bool spanishSupport = false ;
  ///1bytes 意大利语
  bool italianSupport = false;
  ///1bytes 日语
  bool janPanSupport = false;
  ///1bytes 俄罗斯语
  bool russianSupport = false ;
  ///1bytes 葡萄牙语
  bool portugueseSupport = false ;
  ///1bytes 法语
  bool french = false ;

  LanguageModel fromBuffer(List<int> buffer) {
    LanguageModel timeModel = LanguageModel();
    protocol_language_inquire_reply model = protocol_language_inquire_reply
        .fromBuffer(buffer);
    timeModel.type =
    model.operate == operate_type.INQUIRE ? OperationType.inquire : model
        .operate == operate_type.SET ? OperationType.set : OperationType.invalid;
    LanguageType lanType = LanguageType.invalid;
    switch(model.curLanguage){
      case language.LANG_INVALID:
        lanType = LanguageType.invalid;
        break;
      case language.CHINESE:
        lanType = LanguageType.chinese;
        break;
      case language.ENGLISH:
        lanType = LanguageType.english;
        break;
      case language.GERMAN:
        lanType = LanguageType.german;
        break;
      case language.SPANISH:
        lanType = LanguageType.spanish;
        break;
      case language.ITALIAN:
        lanType = LanguageType.italian;
        break;
      case language.JAPANESE:
        lanType = LanguageType.japanese;
        break;
      case language.RUSSIAN:
        lanType = LanguageType.russian;
        break;
      case language.PORTUGUESE:
        lanType = LanguageType.portuguese;
        break;
      case language.FRENCH:
        lanType = LanguageType.french;
        break;
    }
    timeModel.languageType = lanType;
    timeModel.chineseSupport = model.chineseSupport;
    timeModel.englishSupport = model.englishSupport;
    timeModel.germanSupport = model.germanSupport;
    timeModel.spanishSupport = model.spanishSupport;
    timeModel.italianSupport = model.italianSupport;
    timeModel.janPanSupport = model.janpaneseSupport;
    timeModel.russianSupport = model.russianSupport;
    timeModel.portugueseSupport = model.portugueseSupport;
    timeModel.french = model.frenchSupport;
    return timeModel;
  }

  protocol_language_operate fromModel(){
    protocol_language_operate model = protocol_language_operate();
    model.operate = type == OperationType.inquire ? operate_type.INQUIRE : type == OperationType.set ? operate_type.SET : operate_type.INVALID;
    language lanType = language.LANG_INVALID;
    switch(languageType){
      case LanguageType.invalid:
        lanType =  language.LANG_INVALID;
        break;
      case  LanguageType.chinese :
        lanType = language.CHINESE;
        break;
      case LanguageType.english :
        lanType = language.ENGLISH;
        break;
      case LanguageType.german :
        lanType = language.GERMAN;
        break;
      case LanguageType.spanish:
        lanType =  language.SPANISH;
        break;
      case LanguageType.italian:
        lanType =  language.ITALIAN;
        break;
      case LanguageType.japanese:
        lanType =  language.JAPANESE;
        break;
      case LanguageType.russian:
        lanType =  language.RUSSIAN;
        break;
      case LanguageType.portuguese:
        lanType =  language.PORTUGUESE;
        break;
      case LanguageType.french:
        lanType =  language.FRENCH;
        break;
    }
    model.curLanguage =  lanType;
    return model;
  }

  @override
  String toString() {
    return 'LanguageModel{type: $type, languageType: $languageType, chineseSupport: $chineseSupport, englishSupport: $englishSupport, germanSupport: $germanSupport, spanishSupport: $spanishSupport, italianSupport: $italianSupport, janPanSupport: $janPanSupport, russianSupport: $russianSupport, portugueseSupport: $portugueseSupport}';
  }
}