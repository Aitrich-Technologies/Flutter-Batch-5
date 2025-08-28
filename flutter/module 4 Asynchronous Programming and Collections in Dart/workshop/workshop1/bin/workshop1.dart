mixin LoggingMixin {
  void logMessage(String message) {
    print('LOG: $message');
  }
}

// Class that uses the LoggingMixin
class ClassA with LoggingMixin {
  void performAction() {
    logMessage('Performing action in ClassA');
    // Additional logic for ClassA
  }
}

// Class that also uses the LoggingMixin

    // Additional logic for ClassB
  
void main() {
  // Create instances of classes using the LoggingMixin
  var instanceA = ClassA();
  

  // Use the shared logging functionality
  instanceA.performAction();
  
}
