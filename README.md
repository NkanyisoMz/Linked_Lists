# Linked List Implementation in Ruby

### Introduction
In computer science, one of the most basic and fundamental data structures is the **linked list**, which works similarly to an array. The main advantage of a linked list over a traditional array is that elements can easily be inserted or removed without reallocating other elements.

In some programming languages, the fixed size of an array can be a limitation. One way to overcome this limitation and allow dynamically allocated data is by using linked lists.

Luckily, in Ruby, arrays don’t have a fixed size, and operations like insertion and deletion can be performed trivially at any index using built-in methods. This eliminates the typical reasons for using linked lists, such as managing dynamic sizes or handling frequent insertions and deletions efficiently.

So, are linked lists necessary in Ruby? The short answer is **no**. However, they are the simplest of dynamic data structures, and understanding them lays the foundation for more complex structures like graphs and binary trees.

---

### Structure of a Linked List
A linked list is a linear collection of data elements called **nodes**. Each node holds:
1. A **value**, representing the data stored in the node.
2. A **pointer** (or link) to the next node in the list.

The first node in the list is called the **head**, and the last node is called the **tail**. The tail’s pointer is set to `nil`, signifying the end of the list.

Here’s a basic representation of a linked list:

---


---

### My Linked List Implementation
For this project, I created two classes:

1. **Node Class**: Represents individual elements in the list, each containing:
   - A `value` (the data stored in the node).
   - A `next_node` pointer that links to the next node in the list.
   - By default, both `value` and `next_node` are set to `nil`.

2. **LinkedList Class**: Represents the linked list itself, containing methods to manipulate and traverse the list.

---

### Methods I Built
Here are the methods I implemented in my `LinkedList` class:

1. **`append(value)`**: Adds a new node containing `value` to the end of the list.

2. **`prepend(value)`**: Adds a new node containing `value` to the beginning of the list.

3. **`size`**: Returns the total number of nodes in the list.

4. **`head`**: Returns the first node in the list.

5. **`tail`**: Returns the last node in the list.

6. **`at(index)`**: Returns the node at the given index.

7. **`pop`**: Removes the last element from the list and returns its value.

8. **`contains?(value)`**: Returns `true` if the list contains the specified value; otherwise, returns `false`.

9. **`find(value)`**: Returns the index of the node containing the specified value, or `nil` if not found.

10. **`to_s`**: Represents the linked list as a string in the format:
    ```
    ( value ) -> ( value ) -> ( value ) -> nil
    ```

---

### Why This Was Important
Even though Ruby doesn’t require linked lists for the same reasons as other languages, implementing this project helped me gain a deeper understanding of how dynamic data structures work. The process of creating and linking nodes, traversing the list, and handling edge cases (like empty lists or single-node lists) provided valuable insight into the mechanics of more advanced data structures.

---

### Additional Resources
If you want to learn more about linked lists, here are some great resources I found helpful:
- [Linked Lists in Plain English](https://dev.to/trekhleb/linked-lists-in-plain-english-60kg)
- [What’s a Linked List, Anyway?](https://medium.com/basecs/whats-a-linked-list-anyway-ceb88251aee3)
- [Linked Lists, Ruby’s Missing Data Structure](https://codeburst.io/linked-lists-rubys-missing-data-structure-1fa038e7cb04)

By completing this project, I now feel more confident in my ability to work with and understand data structures, which will make tackling more complex concepts like graphs and binary trees much easier!

