{- 
Haskell is a Functional Programming Language that has been specially designed to handle symbolic
computation and list processing applications. Functional programming is based on mathematical 
functions. Besides Haskell, some of the other popular languages that follow Functional Programming 
paradigm include: Lisp, Python, Erlang, Racket, F#, Clojure, etc.
In conventional programing, instructions are taken as a set of declarations in a specific syntax 
or format, but in the case of functional programing, all the computation is considered as a 
combination of separate mathematical functions.

Going Functional with Haskell

Haskell is a widely used purely functional language. Here, we have listed down a few points that 
make this language so special over other conventional programing languages such as Java, C, C++, PHP, etc.

	•	Functional Language − In conventional programing language, we instruct the compiler a series of tasks 
        which is nothing but telling your computer "what to do" and "how to do?" But in Haskell we will tell our computer "what it is?"
	•	Laziness − Haskell is a lazy language. By lazy, we mean that Haskell won't evaluate any expression
        without any reason. When the evaluation engine finds that an expression needs to be evaluated, then it creates a
        thunk data structure to collect all the required information for that specific evaluation and a pointer to that thunk
        data structure. The evaluation engine will start working only when it is required to evaluate that specific expression.
	•	Modularity − A Haskell application is nothing but a series of functions. We can say that a Haskell application is a collection 
        of numerous small Haskell applications.
	•	Statically Typed − In conventional programing language, we need to define a series of variables along with their type.
        In contrast, Haskell is a type interference language. By the term, type interference language, we mean the Haskell compiler 
        is intelligent enough to figure out the type of the variable declared, hence we need not explicitly mention the type of the variable used.
	•	Maintainability − Haskell applications are modular and hence, it is very easy and cost-effective to maintain them.

Functional programs are more concurrent and they follow parallelism in execution to provide more accurate and better performance.
Haskell is no exception; it has been developed in a way to handle multithreading effectively.

-}

main = putStrLn "Hello World"