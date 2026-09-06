Interesting concept.. didnt get a useful thing out of it.

Its what the name says, just a wrapper around object to provide more functionalities. 

Use Decorator
• to add responsibilities to individual objects dynamically and transparently,
that is, without affecting other objects.
• for responsibilities that can be withdrawn.
• when extension by subclassing is impractical. Sometimes a large number
of independent extensions are possible and would produce an explosion of
subclasses to support every combination. Or a class definition maybe hidden
or otherwise unavailable for subclassing.

Like say we want to add a feature to every object that implements an interface. One single wrapper which implements that functionality, composed with a pointer to these class. 

This does have usecases.. but yeah, seems a bit obvious trick