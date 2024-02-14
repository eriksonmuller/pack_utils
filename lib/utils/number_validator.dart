class NumberValidator {
  static sequencia2(s) {
    int s1 = int.parse("${s[0]}${s[1]}");
    int s2 = int.parse("${s[2]}${s[3]}");
    int s3 = int.parse("${s[4]}${s[5]}");

    if ((s2 - s1) == 1 || (s3 - s2) == 1) {
      return true;
    } else {
      return false;
    }
  }

  static sequencia3(s) {
    int s1 = int.parse("${s[0]}${s[1]}${s[2]}");
    int s2 = int.parse("${s[3]}${s[4]}${s[5]}");

    if ((s2 - s1) == 1) {
      return true;
    } else {
      return false;
    }
  }

  static sequencia1(s) {
    int s1 = int.parse(s[0]);
    int s2 = int.parse(s[1]);
    int s3 = int.parse(s[2]);
    int s4 = int.parse(s[3]);
    int s5 = int.parse(s[4]);
    //int s6 = int.parse(s[5]);

    if ((s2 - s1) == 1 && (s3 - s2) == 1 && (s4 - s3) == 1 && (s5 - s4) == 1) {
      return true;
    } else {
      return false;
    }
  }

  static validationPassword(String s) {
    if(s.length < 6){return false;}
    bool b = sequencia1(s);
    bool b2 = sequencia1(s.split('').reversed.join());
    bool b3 = sequencia2(s);
    bool b4 = sequencia2(s.split('').reversed.join());
    bool b5 = sequencia3(s);
    bool b6 = sequencia3(s.split('').reversed.join());
      

        return !(b || b2 || b3 || b4 || b5 || b6);
  }
}
