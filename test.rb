def return_binding
  foo = 100
  binding
end
# Foo is available thanks to the binding,
# even though we are outside of the method
# where it was defined.
puts return_binding.class
puts return_binding.eval('foo')
# If you try to print foo directly you will get an error.
# The reason is that foo was never defined outside of the method.
puts foo
