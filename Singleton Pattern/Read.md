![alt text](https://github.com/FuzzyBuckBeak/DesignPatterns/blob/master/Singleton%20Pattern/Contents/Singleton.png?raw=true)

- ## Singleton Pattern

The singleton pattern restricts a class to only one instance. Every reference to the class refers to the same underlying instance.


```class Logger {
  static let shared = Logger()
  private init () { }

  func save(file: String = #file, _ log: String) {
    do {
      let log = "\(file) - \(log)"
      try log.write(toFile: "/Users/Shared/log.txt", atomically: true, encoding: .utf8)
    } catch  {
      print("Error: File not found")
    }
  }
}
```
* You first declare a public static property called shared, which is the singleton instance.
* You mark init as private to prevent the creation of additional instances.
* You get the singleton instance by calling MySingleton.shared.
* You’ll get a compiler error if you try to create additional instances of MySingleton.

```
Logger.shared.save("View Did Load") 
```

- ## Singleton Plus Pattern

Singleton Plus Pattern allows creation new instances

```
class LoggerPlus {
  static let shared = Logger()
  public init () { }

  func save(file: String = #file, _ log: String) {
    do {
      let log = "\(file) - \(log)"
      try log.write(toFile: "/Users/Shared/log.txt", atomically: true, encoding: .utf8)
    } catch  {
      print("Error: File not found")
    }
  }
}
``` 


* You declare a shared static property just like a singleton. This is sometimes called default instead, but it’s simply a preference for whichever name you prefer.
* Unlike a true singleton, you declare init as public to allow additional instances to be created.
* You get the singleton instance by calling MySingletonPlus.shared.
* You can also create new instances, too.

```
let logger = Logger()
Logger.save("View Did Load")
```
