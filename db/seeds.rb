puts
print "Creating languages..."

ruby = Language.create(name: 'Ruby')
java = Language.create(name: 'Java')
c = Language.create(name: 'C')
c_plus_plus = Language.create(name: 'C++')
c_sharp = Language.create(name: 'C#')
lisp = Language.create(name: 'Lisp')
python = Language.create(name: 'Python')
shell = Language.create(name: 'Shell')

puts ' Done!'


print "Creating 'Hello, world' idiom..."

# "Hello, World" examples taken from http://en.wikipedia.org/wiki/List_of_Hello_world_program_examples

idiom = Idiom.create(
  name: 'Hello, world.',
  description: "Print the text 'Hello, world.'"
)
idiom.implementations.create(
  language: ruby,
  explanation: 'The method `puts` accepts a `String` argument. This string is then sent to standard output.',
  code: <<-RUBY
puts 'Hello, world.'
RUBY
)
idiom.implementations.create(
  language: java,
  explanation: 'The System class contains a static member named `out`. This variable has the method `println` defined for it and accepts a `String` argument. That `String` is sent to standard output.',
  code: <<-JAVA
public class HelloWorld
    public static void main(String... args) {
        System.out.println("Hello, world.");
    }
}
JAVA
)
idiom.implementations.create(
  language: c,
  code: <<-C
#include <stdio.h>

int main(void)
{
    puts("Hello, world.");
}
C
)
idiom.implementations.create(
  language: c_plus_plus,
  code: <<-C_PLUS_PLUS
#include <iostream>

int main()
{
    std::cout << "Hello, world.\n";
}
C_PLUS_PLUS
)
idiom.implementations.create(
  language: c_sharp,
  code: <<-C_SHARP
using System;

class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Hello, world.");
    }
}
C_SHARP
)
idiom.implementations.create(
  language: lisp,
  code: <<-LISP
(princ "Hello, world.")
LISP
)
idiom.implementations.create(
  language: python,
  code: <<-PYTHON
print("Hello, world.")
PYTHON
)
idiom.implementations.create(
  language: shell,
  code: <<-SHELL
echo Hello, world.
SHELL
)

puts ' Done!'
