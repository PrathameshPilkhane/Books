

Intent: Decouple abstraction from implementations

When an abstraction can have one of several possible implementations, the usual way to accommodate them is to use inheritance. An abstract class defines the interface to the abstraction, and concrete subclasses implement it in different ways.
But this approach isn't always flexible enough. Inheritance binds an implementation to the abstraction permanently, which makes it difficult to modify, extend, and reuse abstractions and implementations independently.

- This seems very similar to the Pimpl Idiom. but they solve fundamentally different issues. 

Pimpl is for solving the dependence of header in multiple classes include, while Bridge is for decoupling the architectural dependance. 

In some sense, Pimpl is a 1 to 1 bridge as opposed to 1 to many bridge.

Use the Bridge pattern when
• you want to avoid a permanent binding between an abstraction and its im-
plementation. This might be the case, for example, when the implementation
must be selected or switched at run-time.
• both the abstractions and their implementations should be extensible by
subclassing. In this case, the Bridge pattern lets you combine the different
abstractions and implementations and extend them independently.
• changes in the implementation of an abstraction should have no impact on
clients; that is, their code should not have to be recompiled.
• (C++) you want to hide the implementation of an abstraction completely from
clients. In C++ the representation of a class is visible in the class interface.
• you have a proliferation of classes as shown earlier in the first Motivation
diagram. Such a class hierarchy indicates the need for splitting an object into
two parts. Rumbaugh uses the term "nested generalizations" [RBP+91] to
refer to such class hierarchies.
• you want to share an implementation among multiple objects (perhaps using
reference counting), and this fact should be hidden from the client. A simple
example is Coplien's String class [Cop92], in which multiple objects can share
the same string representation (StringRep).