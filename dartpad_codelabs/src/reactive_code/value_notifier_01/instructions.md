# Reactive Programming with ValueNotifier

We have `ChangeNotifiers`, that is available in the core SDK, which provides change notification to its listeners. On the other hand, 
`ValueNotifiers`, also available in the core SDK, is basically like a ChangeNotifier but
holds only a single value whereas ChangeNotifiers can encapsulate more complex state as well. This is another alternative you can use for writing reactive code. 

## ChangeNotifiers vs ValueNotifiers
In a ChangeNotifier, you have to explicitly trigger `notifyListeners()`
after making a data change so the listeners can update itself. But ValueNotifiers will automatically
notify its listeners when the `new value is != old value`.

## TODO: Create a ValueNotifier<T> object with initial value as 0
Let's create a ValueNotifier object with an initial value of 0 and the type should be strictly
an `int`. 

So `ValueNotifier<T>` becomes `ValueNotifier<int>`

```dart

final ValueNotifier<int> valueNotifier = ValueNotifier(0);
```


## TODO: Increment/Decrement the notifier here
This ValueNotifier object exposes a ``value`` property that is the current snapshot of the data
stored in this notifier. To update the count value, we need to access this `value` property. This is how we would increment the count value in the notifier:

```dart
void increment() {
  valueNotifier.value++;
}
```

Try the same for the decrement method.

On running this code, the UI will still not update because we have not registered any listeners for
this ValueNotifier. Let's add that in the next step. 
