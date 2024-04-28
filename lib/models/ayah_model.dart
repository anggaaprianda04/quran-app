class AyahModel {
  Number? number;
  TextRead? text;
  Translation? translation;
  Audio? audio;

  AyahModel({
    this.number,
    this.text,
    this.translation,
    this.audio,
  });

  AyahModel.fromJson(Map<String, dynamic> json)
      : number = (json['number'] as Map<String, dynamic>?) != null
            ? Number.fromJson(json['number'] as Map<String, dynamic>)
            : null,
        text = (json['text'] as Map<String, dynamic>?) != null
            ? TextRead.fromJson(json['text'] as Map<String, dynamic>)
            : null,
        translation = (json['translation'] as Map<String, dynamic>?) != null
            ? Translation.fromJson(json['translation'] as Map<String, dynamic>)
            : null,
        audio = (json['audio'] as Map<String, dynamic>?) != null
            ? Audio.fromJson(json['audio'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'number': number?.toJson(),
        'text': text?.toJson(),
        'translation': translation?.toJson(),
        'audio': audio?.toJson(),
      };
}

class Number {
  final int? inQuran;
  final int? inSurah;

  Number({
    this.inQuran,
    this.inSurah,
  });

  Number.fromJson(Map<String, dynamic> json)
      : inQuran = json['inQuran'] as int?,
        inSurah = json['inSurah'] as int?;

  Map<String, dynamic> toJson() => {'inQuran': inQuran, 'inSurah': inSurah};
}

class TextRead {
  final String? arab;
  final Transliteration? transliteration;

  TextRead({
    this.arab,
    this.transliteration,
  });

  TextRead.fromJson(Map<String, dynamic> json)
      : arab = json['arab'] as String?,
        transliteration =
            (json['transliteration'] as Map<String, dynamic>?) != null
                ? Transliteration.fromJson(
                    json['transliteration'] as Map<String, dynamic>)
                : null;

  Map<String, dynamic> toJson() =>
      {'arab': arab, 'transliteration': transliteration?.toJson()};
}

class Transliteration {
  final String? en;

  Transliteration({
    this.en,
  });

  Transliteration.fromJson(Map<String, dynamic> json)
      : en = json['en'] as String?;

  Map<String, dynamic> toJson() => {'en': en};
}

class Translation {
  final String? en;
  final String? id;

  Translation({
    this.en,
    this.id,
  });

  Translation.fromJson(Map<String, dynamic> json)
      : en = json['en'] as String?,
        id = json['id'] as String?;

  Map<String, dynamic> toJson() => {'en': en, 'id': id};
}

class Audio {
  final String? primary;
  final List<String>? secondary;

  Audio({
    this.primary,
    this.secondary,
  });

  Audio.fromJson(Map<String, dynamic> json)
      : primary = json['primary'] as String?,
        secondary = (json['secondary'] as List?)
            ?.map((dynamic e) => e as String)
            .toList();

  Map<String, dynamic> toJson() => {'primary': primary, 'secondary': secondary};
}

class Id {
  final String? short;
  final String? long;

  Id({
    this.short,
    this.long,
  });

  Id.fromJson(Map<String, dynamic> json)
      : short = json['short'] as String?,
        long = json['long'] as String?;

  Map<String, dynamic> toJson() => {'short': short, 'long': long};
}
