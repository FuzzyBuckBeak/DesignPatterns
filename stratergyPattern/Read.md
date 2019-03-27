# Stratergy Pattern

![alt text](https://github.com/FuzzyBuckBeak/DesignPatterns/blob/master/stratergyPattern/stratergyPattern/stratergyPattern/Contents/stratergyPattern.png?raw=true)

- #### Object using strategy
It can technically be any kind of object that needs interchangeable behavior at the runtime.
In ios development, this can be a view controller.

 In the example, `ShowPriceFinder` is a viewController that needs to display the price of movie depending on the chosen streaming service.

- #### Protocol
defines methods that every strategy must implement.

  `SteamingService` is the protocol

- #### Concrete strategy:
are objects that conform to the strategy protocol.

  `AmazonPrime` and `Netflix` are the concrete object that conforms to `SteamingService` protocol.

 During the runtime, the view controller `ShowPriceFinder` is unaware of the different types of concrete object, it just has an object of type `SteamingService`, (concrete object conforms to). Based on the user preference the concrete object is chosen on the fly and the action `price` is calculated. So any object that conforms to a strategy can be used during the runtime.

 Hence stratergy patterns are used when the objects(having same behavior) are to be chosen on a fly during runtime.
