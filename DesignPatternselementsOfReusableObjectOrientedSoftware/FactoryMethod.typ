Intent:
- Define an interface for creating an object, but let subclasses decide which class to instantiate
- Method lets a class defer instantiation to subclasses

Usecase:
- Consider a framework for applications that can present multiple documents to
the user. Two key abstractions in this framework are the classes Application and
Document. Both classes are abstract, and clients have to subclass them to realize
their application-specific implementations. To create a drawing application, for
example, we define the classes DrawingApplication and DrawingDocument. The
Application class is responsible for managing Documents and will create them as
required—when the user selects Open or New from a menu, for example

Applicability:
Use the Factory Method pattern when
• a class can't anticipate the class of objects it must create.
• a class wants its subclasses to specify the objects it creates.
• classes delegate responsibility to one of several helper subclasses, and you
want to localize the knowledge of which helper subclass is the delegate.
#image("./assets/image-2.png")


"!Important!"
- This pattern seems to be outdated now. In the sense that we tend to use a different way to achieve the something, called dependency inversion: 
We can a parser object to the ConcreteClass which can call creeteObject, and that object can understan what to do based on context. This removes the need of inheriting from template classes.


- There is actually one specific use case when it might still make sense: when you dont have access to the base class ( some thirdparty lib/ application library) where the class calls methods and assumes that client class will override it. 

- This also makes sense for abstract classes. Say some object parser cant be instantiated in one type of class, and not in some other type of class? Then the derived ones would have this parserPointer, but the base class will need to do the inheritance forcefully.

-Also, is the case with In deep DI architectures, if a class needs to create objects down a long chain of events, you can end up with Constructor Bloat. You have to pass factories through multiple layers of constructors just so a class deep down can use it.
With the Factory Method, if a derived class needs a specific tool, it just overrides the method locally. The base class doesn't need to hold references to, or be initialized with, external factory objects that it doesn't personally care about.


Think of it this way:
Use Dependency Injection if you want the flexibility to change how objects are created at runtime (e.g., swapping a real database parser for a mock database parser during testing).
Use Factory Method if the creation logic is fixed at compile-time by the type of the class you are using, and you want to keep the API simple for whoever is extending your code.