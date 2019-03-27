# Delegation Pattern

![alt text](https://github.com/FuzzyBuckBeak/DesignPatterns/blob/master/Delegation%20Pattern/Delegation%20Pattern/Contents/Delegation.png?raw=true)

- #### Object requiring delegation(glassView in our example):
Usually has a delegate(weak)

- #### Protocol(weak deleagate):
The method which delegate must implement

- #### Object acting as delegate:
Object which implements the protocol

GlassView is the view which requies delegation, has a weak property of type GlassViewDelegate (protocol)

GlassView has set of protocol (eg: GlassViewDelegate) method (eg: tapped).

ViewController conforms to protocol (GlassViewDelegate) 

