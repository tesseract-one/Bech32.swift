# Bech32.swift

## Overview 

[Bech32](https://github.com/bitcoin/bips/blob/master/bip-0173.mediawiki), [Bech32m](https://github.com/bitcoin/bips/blob/master/bip-0350.mediawiki) and SegWit library for Swift.

Supports encoding and decoding Bech32 and Bech32m data and SegWit Address encoding/decoding.

This library is based on [0xDEADP00L repository](https://github.com/0xDEADP00L/Bech32) with added Bech32m support.

## Install

- **Swift Package Manager:**
  Add this to the dependency section of your `Package.swift` manifest:

    ```Swift
    .package(url: "https://github.com/tesseract-one/Bech32.swift.git", from: "1.1.0")
    ```

- **CocoaPods:** Put this in your `Podfile`:

    ```Ruby
    pod 'Bech32.swift', '~> 1.1.0'
    ```
## Examples

### Bech32 decode data

```swift
// Bech32
let b32 = try! Bech32.standard.decode("tb1qrp33g0q5c5txsp9arysrx4k6zdkfs4nce4xj0gdcccefvpysxf3q0sl5k7")

// Bech32m
let b32m = try! Bech32.modified.decode("bc1p5cyxnuxmeuwuvkwfem96lqzszd02n6xdcjrs20cac6yqjjwudpxqkedrcr")

print("bech32 hrp: \(b32.hrp), data: \(b32.data)")
print("bech32m hrp: \(b32m.hrp), data: \(b32m.data)")
```

### Bech32m encode data

```swift
// Bech32
let b32 = Bech32.standard.encode(hrp: "bc", data: Data(repeating: 0, count: 10))

// Bech32m
let b32m = Bech32.modified.encode(hrp: "tp", data: Data(repeating: 0, count: 10))

print("bech32: \(b32)")
print("bech32m: \(b32m)")
```
## License

Bech32.swift can be used, distributed and modified under [the MIT license](LICENSE).
