codegrep
========

A grep-like tool tailored for code.

codegrep is like grep, but it is able to skip comments and strings in the code.

## Usage

```
   codegrep [-wWiIcCsS] <pattern> [files...]
```

Pattern is a Lua pattern, which is similar to regex but not the same,
except that '-' is taken literally.

Source files supported are: *.c *.h *.lua *.java *.grace *.js

If files are not given, it recursively searches for source files in the
current directory (-r is accepted for compatibility but ignored).
   
## Options

* -w -W - Enable or disable whole-word search (default is off)
* -i -I - Enable or disable case-insensitive search (default is on)
* -c -C - Enable or disable search in comments (default is off: skips comments)
* -s -S - Enable or disable search in strings (default is off: skips strings)
* -k -K - Enable or disable search in key-like strings, that is, strings containing only the search term (default is off: skips those strings)
   
## Example

```
   codegrep -wc foo
```
   
Looks for the word `foo` in all source files of the tree, including comments.

## License

GNU GPL v3
