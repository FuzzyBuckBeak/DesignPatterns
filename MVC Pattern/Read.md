# Model View Controller

![alt text](https://github.com/FuzzyBuckBeak/DesignPatterns/blob/master/MVC%20Pattern/MVC%20Pattern/Contents/MVC.png?raw=true)

- #### Model:
Models hold application data. They are usually structs or simple classes

- #### View:
Views display visual elements and controls on screen. They are usually subclasses of UIView.

- #### Controller:
coordinate between models and views. They are usually subclasses of UIViewController.

Controllers are allowed to have strong properties for their model and view so they can be accessed directly. 
Controllers may have more than one model and/or view. Instead, models communicate to their controller via property observing, which you’ll learn about in-depth in a later chapter,
and views communicate to their controller via IBActions.

Controllers are much harder to reuse since their logic is often very specific to whatever task they are doing. 
Consequently, MVC doesn’t try to reuse them

