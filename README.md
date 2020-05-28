# ObjectCentricExperiments
Tasks to experiment the Pharo object-centric debugger:

```Smalltalk
Metacello new
  baseline: 'ObjectCentricExperiments';
  repository: 'github://StevenCostiou/ObjectCentricExperiments';
  load.
```
## Task 1

The package `ObjectCentricExperiments` contains 1 test class named `Task1`.
This test class contains one test method, named `testCollectionContents`.

This method tests the Pharo reflective API.
This API uses objects named metalink to install reflective operations on the source code.
In this task, we install a reflective operation on all accesses to the instance variable `#instVar` of the `ReflectivityExamples2` class.
In effect, this installs a metalink object on all AST nodes refering to that instance variable.

In this test, we assert that when a metalink is installed on an instance variable, all AST nodes refering to that variables are added to the set of nodes contained in the metalink object.
If new nodes are created, for example, when a new method refering to that instance variable is created, then the metalink should update its set of nodes accordingly.

### Task scenario

Your task is to find the following information:
- What is the object adding the nodes in the metalink nodes collection? 
