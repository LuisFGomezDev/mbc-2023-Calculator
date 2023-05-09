import Int "mo:base/Int";
import Float "mo:base/Float";

actor Calculator {

  var y: Int  = 0;
  var result : Int = 0;


  // Function - Add.
  public func add(n : Int) : async Int {
    result += n;
    return result;
  };

  // Function - Subtract.
  public func sub(n : Int) : async Int {
    result -= n;
    return result;
  };

  // Function - Multiply.
  public func mul(n : Int) : async Int {
    result *= n;
    return result;
  };

  // Function - Divide.
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // Division by zero error.
      return null;
    } 
    else 
    {
      result /= n;
      return ?result;
    };
  };

  // Function - query
  public query func see() : async Int {
    return result;
  };

  // Function - power
  public func power(x : Int) : async Int {
    result:= result ** x;
    return result;
  };

  // Function - sqrt
  public func sqrt() : async Int {
    result:= result ** 0.5;
    return result;
    };

  // Function - floor
  public func floor() : async Int {
    y:= Float.toInt(result);
    return y;
  };

  // Function - Reset
  public func reset() : async () {
    return result:= 0;
  };

};
