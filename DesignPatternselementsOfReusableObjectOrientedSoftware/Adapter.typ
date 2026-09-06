Basically wrapper.

You write a small wrapper around a class to make it work like another class.

Mainly useful so that you dont need to make changes to the original interface, while the adapter easily confirms to another interface.

Some things for implementations:
- In c++, Adapter class would inherit publicly from Target, and privately from Adaptee (not good)
- Or we can compose the objects inherit from Target, and have a pointer to Adaptee
- This is preferred over the inheritance thing, as then it allows to have different type of Adaptee classes implementations with one class 

- Similar to bridge pattern, but the intention in bride is to separate interface from implementations. 