import Foundation
public struct Money<Currency: CurrencyType> {

  public var amount: Decimal
  public var currency: Currency.Type {
    Currency.self
  }
}
