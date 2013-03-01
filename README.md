Ruby gem and command line tool to verify that a binding can satisfy ERB templates.

```bash
mmb@mmb ~/src/erbgood git:master ?1 $ erbgood spec/support/binding/binding1.rb spec/support/erb/*
Binding: /Users/mmb/src/erbgood/spec/support/binding/binding1.rb

spec/support/erb/a.erb: ok
spec/support/erb/b.erb: ok
spec/support/erb/bad.erb:
  undefined local variable or method `foo' for #<Module:0x007fb3008301e8>
```
