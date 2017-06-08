# Mocking 1: Isolating Unit Tests (1h)

## Learning Objectives:

- Define a unit test as 'a test for code isolated from all other code'
- Explain that doubles can be used to stop objects-under-test from calling other objects in a program
- Refactor a bunch of unisolated unit tests into isolated ones using doubles

## Starter (10 minutes)

### Why mock?

Isolates unit tests so the object-under-test in one spec cannot break as a result of a different object failing.

### Board stuff

> I found example 1 in `./images` a bit hard to follow.  I created a different example 1 in `example_1/broken_bike.rb`.  It includes Bike tests to illustrate how fewer tests break if you isolate dependencies.  It can be livecoded, then collectively diagrammed.

Using the whiteboard and the images in ./images, demonstrate the principle of isolating unit tests using doubles:

1. Using a simple example with `DockingStation` and `Bike`
2. More generally using a large OO system with lots of dependency chains.

### Demonstration

Demonstrate creating a simple mock object, `FakeObject`, to mock a simple example below:

```ruby
class ObjectUnderTest
  def initialize(other_object)
    @other_object = other_object
  end

  def delegated_method
    @other_object.dangerous_operation
  end
end

describe ObjectUnderTest do
  subject(:object_under_test) { ObjectUnderTest.new(OtherObject.new) }

  describe '#delegated_method' do
    it 'returns some value' do
      expect(object_under_test.delegated_method).to eq :expected_value
    end
  end
end
```

Will become

```ruby
class ObjectUnderTest
  def initialize(other_object)
    @other_object = other_object
  end

  def delegated_method
    @other_object.dangerous_operation
  end
end

### DOUBLE OBJECT
class FakeOtherObject
  def delegated_method
    return :expected_value
  end
end
### END DOUBLE OBJECT

describe ObjectUnderTest do
  subject(:object_under_test) { ObjectUnderTest.new(FakeOtherObject.new) }

  describe '#delegated_method' do
    it 'returns some value' do
      expect(object_under_test.delegated_method).to eq 10
    end
  end
end
```

## Main (40 minutes)

Students should isolate the unit tests that are unisolated in `spec`. The tests should still pass.

## Plenary (10 minutes)

Choose two students' examples to share, and critique them.
