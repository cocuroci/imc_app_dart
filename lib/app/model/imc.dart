class Imc {
  final double result;
  final String message;

  Imc({required this.result, required this.message});

  @override
  bool operator ==(Object other) {
    return other is Imc && other.message == message && other.result == result;
  }

  @override
  int get hashCode {
    return result.hashCode + message.hashCode;
  }

  @override
  String toString() {
    return {"result": result, "message": message}.toString();
  }
}
