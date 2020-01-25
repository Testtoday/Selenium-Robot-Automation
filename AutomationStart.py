# Whenever we are importing any module, that module executable code will run
import PyModule

# We are calling module functions by using module name
x=PyModule.sum(100,300)
print(x)

# need to create object of class written in any module
obj=PyModule.A()
obj.testing()
