import Foundation

public protocol CurrencyType {
  static var code: String { get }
  static var symbol: String { get }
  static var name: String { get }
}
