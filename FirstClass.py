# First we have creating a closs
class A:
    def __init__(self,a,b):
        print("This is constructor")
        c=a+b
        print(c)
    # Function wit no argument and no return value
    def hello(self):
        print("Hello World")
    # Function, which will take 2 arguments, sum value and display
    def sum(self,a,b):
        c=a+b
        print ("Sum is  " + str(c))

    # Function, which will take argument and return value
    def mul(self,a,b):
        c=a*b
        return c




