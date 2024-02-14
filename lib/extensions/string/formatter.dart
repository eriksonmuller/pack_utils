import 'package:text_mask/text_mask.dart';

extension MaskExtension on String {
  String unMask([List<String>? p]) {
    if (p != null) {
      String aux = this;
      for (var element in p) {
        aux = aux.replaceAll(element, '');
      }
      return aux;
    } else {
      return this;
    }
  }

  String maskCpf() {
    return TextMask(pallet: '###.###.###-##').getMaskedText(this);
  }

  String maskCnpj() {
    return TextMask(pallet: '##.###.###/####-##').getMaskedText(this);
  }

  String maskCpfCnpj() {
    if ((this).length < 12) {
      return TextMask(pallet: '###.###.###-##').getMaskedText(this);
    } else {
      return TextMask(pallet: '##.###.###/####-##').getMaskedText(this);
    }
  }

  String maskCpfCnpjBlock() {
    if ((this).length < 12) {
      var cpf = TextMask(pallet: '###.###.###-##').getMaskedText(this);

      return cpf.length > 12? "***${cpf.substring(3, 12)}**":"";
    } else {
      // var cnpj = TextMask(pallet: '##.###.###/####-##').getMaskedText(this);

      // return cnpj.length > 12? "**.*${cnpj.substring(4, 16)}**":"";
      return TextMask(pallet: '##.###.###/####-##').getMaskedText(this);
    }
  }

  String maskPhone() {
    return TextMask(pallet: '(##) #####-####').getMaskedText(this);
  }

  String maskAgency() {
    return TextMask(pallet: '####-#').getMaskedText(this);
  }

  String maskBarCode() {
    return TextMask(
            pallet: '#####.##### #####.###### #####.###### # ##############')
        .getMaskedText(this);
  }

  String maskCep() {
    return TextMask(pallet: '#####-###').getMaskedText(this);
  }
}
