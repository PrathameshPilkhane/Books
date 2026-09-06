Intent:
- When you want to write a library code which doesnt care about client code, but assumes that some class does exist for this type of client...


A classic example is like the following: 
- Say we are building the Unity software / any component at client code side.
- Now this component cannot have been part of the library (ofc)
- But we would want that this gets stored somehow. That we can call factory.createMyCoolObject() to get our object.
- Now ofc, the Factory method is possible, but Factory method would result in code bloat.
- A different alternative which is possible is that we define a clone function.
- and a registry map
- The library side of the code calls createObject(OurParamter) -> goes to the registry -> finds our object. 

This actually is the greatest and simplest way for dll (Dynamically linked libraries) to work. Application cares for a contract, without worrying how the internals happen. And application needs a way to copy these type of classes, which is why we have the clone function (just simply memory move / copy contrcutor cant exist- Library doesnt know these functions!!)
