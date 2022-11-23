/*
@resultBuilder class ConvertFunctionToResultBuilder {
    static func buildBlock(_ a: String, _ b: String, _ c: String) -> String {
        a + ", " + b + ", " + c
    }
}
*/

@resultBuilder class ConvertFunctionToResultBuilder {
    static func buildBlock(_ strings: String...) -> String {
        strings.joined(separator: ", ")
    }
}

/*
@ConvertFunctionToResultBuilder func MyFirstDeclarativeCode() -> String {
    "Hello World!"
    "Hello LogRocket!"
    "Hello Swift!"
}
*/

@ConvertFunctionToResultBuilder func MyFirstDeclarativeCode() -> String {
    "Hello World!"
    "Hello LogRocket!"
    "Hello Swift!"
    "Hello Result Bulders!"
}

print(MyFirstDeclarativeCode())

@resultBuilder
struct BreakfastBuilder {
    static func buildBlock(_ food: String...) -> String {
        food.joined(separator: ", ")
    }
    
    static func buildOptional(_ drink: String?) -> String {
        return drink ?? ""
    }
}

@BreakfastBuilder func makeBreakfast(_ drink: Bool) -> String {
    "Egg"
    "Bread"
    if drink {
        "Milk"
    }
}

print(makeBreakfast(false))
print(makeBreakfast(true))

@resultBuilder
struct BreakfastBuilder2 {
    static func buildBlock(_ food: String...) -> String {
        food.joined(separator: ", ")
    }
    
    static func buildEither(first drink: String) -> String {
        return drink
    }
    
    static func buildEither(second drink: String) -> String {
        return drink + " with sugar"
    }
}

@BreakfastBuilder2 func makeBreakfast2(_ drinkCoffee: Bool) -> String {
    "Egg"
    "Bread"
    if drinkCoffee {
        "Coffee"
    } else {
        "Tea"
    }
}

print(makeBreakfast2(false))
print(makeBreakfast2(true))

@resultBuilder
struct BreakfastBuilder3 {
    static func buildBlock(_ food: String...) -> String {
        food.joined(separator: ", ")
    }
    
    static func buildArray(_ drinks: [String]) -> String {
        "Drinks: " + drinks.joined(separator: ", ")
    }
}

@BreakfastBuilder3 func makeBreakfast3() -> String {
    "Egg"
    "Bread"
    for d in ["Coffee", "Tea"] {
        "\(d)"
    }
}

print(makeBreakfast3())

@resultBuilder
struct BreakfastBuilder4 {
    static func buildBlock(_ food: String...) -> String {
        food.joined(separator: ", ")
    }
    
    static func buildExpression(_ food: String) -> String {
        food
    }
    
    static func buildExpression(_ tissueAmount: Int) -> String {
        "\(tissueAmount) pieces of tissue"
    }
}

@BreakfastBuilder4 func makeBreakfast4() -> String {
    "Egg"
    "Bread"
    5
}

print(makeBreakfast4())
