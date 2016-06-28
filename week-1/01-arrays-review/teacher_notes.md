I. Before class 
  A. Quiz
    - http://www.proprofs.com/quiz-school/story.php?title=mtuzmtgznglbyv
II. Lecture 
A. Review Non-Iterator Arrays
 - compact
 - size
 - first, last
 - accessing by bracket notation
B. Review Iterators 
  - Sandwich code - what is it, why bad
     - less intention revealing, more verbose
  1. select - reduces the number of elements that i started with 
  2. each - does not reduce the number of elements, does not modify the elements
  3. map/collect - same number of elements, but modifies each one to be the return value of the block
  4. find/detect - will return either one matching element, or nil
C. Ask students to organize into flowchart
  If I want to do an operation
    --> each 
  If I want to change the array
    --> map
  If I want to reduce the number of elements
    -To only one element
     --> find/detect
    - To multiple elements
     --> select
    - to remove nil values
      --> compact
    - to have only uniq values
      - uniq
  If I want to coerce 
    - From a string 
        --> split
    - From an array to a string 
      --> join
    - compact
      - remove nil values
D. Introduce Procedure
   - rephrase the problems
   - think about how we would solve this without code
   - make our code reflect our thought process
   - break the problem up into a smaller problem, and try a test case in the console