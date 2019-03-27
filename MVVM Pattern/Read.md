# Model View View-Model

![alt text](https://github.com/FuzzyBuckBeak/DesignPatterns/blob/master/MVVM%20Pattern/MVVM%20Pattern/Contents/MVVM.png?raw=true)

- #### Model:
Models hold application data. They are usually structs or simple classes

- #### View:
Views display visual elements and controls on screen. They are usually subclasses of UIView.

- #### View Model:
Applies series of transformation on the model data to generate the presentational data for view

- #### Controller:
Manages the life cycle of view, IB Actions, View Model notifications

Controllers are allowed to have strong properties for their viewModel and view so they can be accessed directly. 
Models communicate to viewmodel via property observing, views communicate to their controller via IBActions and View model communicate with viewController through delegates/callbacks 

