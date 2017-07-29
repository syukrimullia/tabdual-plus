# Advanced Development of Tabling in Contextual Abduction with Answer Subsumption

## Prerequisites
This implementation needs XSB Prolog to be installed in your machine. For convenience, you might want to put the path to directory where the XSB command is found in your `$PATH` environment variable. Otherwise, you have to include the path to directory where you have this implementation into XSB default search paths using predicate `library_directory/1`.

## How This Works
This implementation consists of two stages:
1. **Program transformation.** In this stage, your input program will be transformed into its corresponding output program that supports contextual abduction. The output program will be used in the next stage. Before you transform your input program, you can choose what mode of transformation you want to use. There are two available modes of transformation: with or without *answer subsumption*.
2. **Abduction.** In this stage, you may perform the abduction itself output program that is produced in the previous stage. Practically, this stage consists of two phases. First, you have to load the output program, only then you can perform abduction by asking queries to the loaded program.
 
## Specifying Your Knowledge Base
You can define an input program, i.e. a logic program, as your own knowledge base inside `in` folder in a file called `{filename}.ab`. Your input program has to satisfy following properties:
* *Abducibles* is specified by predicate `abds/1` whose argument is a list of abducibles along with its arity. For example `abds([a/1, b/2, c/3])`.
* To define a rule, please use `<-` instead of `:-` to denote *if* operator. For example, please use `H <- X, Y.` instead of using `H :- X, Y.`.
* Predicates comprising just fact are written separately between the `beginProlog.` and `endProlog.` identifiers. See `in/4.ab` for an example.
* Regular Prolog programs (those that will not be transformed) are also written separately between the `beginProlog.` and `endProlog.` identifiers. Please use `H :- X, Y.` instead of using `H <- X, Y.` when defining regular Prolog programs because these programs will not be transformed but will be rewritten as it is.

With regard to properties mentioned above, your input program must be written in following parts, ordered from top to bottom:
1. `beginProlog.` and `endProlog.` identifiers, and also facts and programs that need to be placed between them. This part is unnecessary when no such program in it.
2. Abducibles.
3. Rules.

## How to Use
1. Open a terminal in the directory where you have this implementation.
2. Invoke XSB by the command:
```
$ xsb
```
Notice that this command may vary depends on how XSB is configured in your machine. Make sure you have entered XSB prompt level (indentified by `| ?-` prompt) before you proceed to the next step.
3. Type `[main].` and then hit *Enter* to load the main program.
4. Type `switch_mode(Mode).` to switch between modes. There are two available options of `Mode`: `normal` (without answer subsumption) and `subsumed` (with answer subsumption).
5. Type `transform({filename}).` and then hit *Enter* to transform your input program `{filename}.ab`.  The output program `{filename}.P` will be created in `out` folder. For example, if you want to transform an input program `1.ab`, you have to type `transform(1)`, and consequently a file `1.P` will be created in `out` folder. Remember that your input program `1.ab` must be placed inside `in` folder. To avoid errors in the next steps, please always perform this step even though the corresponding output program has been created. 
6. Type `load({filename}).` and then hit *Enter* to load your output program.  For example, you have to type `load(1)`  to load the output program created in step number `4`. Make sure you have transformed the corresponding input program that you want to load, otherwise errors may occur.
7. Now you may ask a query using predicate `ask/1` whose first argument is the query you want to ask. Please do not forget to use parentheses if you are asking multiple goals in the query. If you want to supply abductive contexts, use predicate `ask/2` instead, whose second argument is a list of abductive contexts you want to supply.

## Examples
Below are some examples of how you can interact with the program in XSB command prompt. These examples will use `in/1.ab` as its input program.

    ?- [main].                          % compile and load the main program
    
    ?- transform(1).                    % transform the input program in/1.ab
    
    ?- load(1).                         % load the resulting output program out/1.P
    
    ?- ask(q(1)).                       % using ask/1
    Found 1 abductive solution(s): 
    (1) [not a(1)]
    yes
    
    ?- ask((q(1), q(2), q(3))).         % using ask/1 with multiple goals
    no
    
    ?- ask(q(1), [not a(1)]).           % using ask/2 (with non-conflicting abductive context)
    Found 1 abductive solution(s): 
    (1) [not a(1)]
    yes
    
    ?- ask(q(1), [a(1)]).               % using ask/2 (with conflicting abductive context)
    no
    
