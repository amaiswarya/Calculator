dynamic text = '0';
double firstOperand = 0;
double secondOperand = 0;
dynamic result = '';
dynamic finalResult = '';
dynamic operator = '';
dynamic preOpr = '';
void calculation(text) {
  if (text == 'AC') {
    text = '0';
    firstOperand = 0;
    secondOperand = 0;
    result = '';
    finalResult = '0';
    operator = '';
    preOpr = '';
  }
  if (text == 'C') {
    result = result.substring(0, result.length - 1);
  } else if (operator == '=' && text == '=') {
    if (preOpr == '+') {
      finalResult = add();
    } else if (preOpr == '-') {
      finalResult = sub();
    } else if (preOpr == 'x') {
      finalResult = mul();
    } else if (preOpr == '/') {
      finalResult = div();
    }
  } else if (text == '+' ||
      text == '-' ||
      text == 'x' ||
      text == '%' ||
      text == '=') {
    if (firstOperand == 0) {
      firstOperand = double.parse(result);
    } else {
      secondOperand = double.parse(result);
    }

    if (operator == '+') {
      finalResult = add();
    } else if (operator == '-') {
      finalResult = sub();
    } else if (operator == 'x') {
      finalResult = mul();
    } else if (operator == '/') {
      finalResult = div();
    }
    preOpr = operator;
    operator = text;
    result = '';
  } else if (text == '%') {
    result = firstOperand / 100;
    finalResult = doesContainDecimal(result);
  } else if (text == '.') {
    if (!result.toString().contains('.')) {
      result = result.toString() + '.';
    }
    finalResult = result;
  } else if (text == '+/-') {
    result.toString().startsWith('-')
        ? result = result.toString().substring(1)
        : result = '-' + result.toString();
    finalResult = result;
  } else {
    result = result + text;
    finalResult = result;
  }

  setState(() {
    text = finalResult;
  });
}

String add() {
  result = (firstOperand + secondOperand).toString();
  firstOperand = double.parse(result);
  return doesContainDecimal(result);
}

String sub() {
  result = (firstOperand - secondOperand).toString();
  firstOperand = double.parse(result);
  return doesContainDecimal(result);
}

String mul() {
  result = (firstOperand * secondOperand).toString();
  firstOperand = double.parse(result);
  return doesContainDecimal(result);
}

String div() {
  result = (firstOperand / secondOperand).toString();
  firstOperand = double.parse(result);
  return doesContainDecimal(result);
}

String doesContainDecimal(dynamic result) {
  if (result.toString().contains('.')) {
    List<String> splitDecimal = result.toString().split('.');
    if (!(int.parse(splitDecimal[1]) > 0))
      return result = splitDecimal[0].toString();
  }
  return result;
}
