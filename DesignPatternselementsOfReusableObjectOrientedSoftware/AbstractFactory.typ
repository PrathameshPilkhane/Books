Applicability:

- A system should be independent of how its products are created
- A system needs to be configured with multiple families of products.
- A family of products objects is designed to be used together, and you need to enforce this constraint.


- Its good for uses where you the client needn't care about how the internal system is created. But helps the internal elements make strong assumption so that casting cant cause run time errors. This guarantee is otherwise a privilege.

