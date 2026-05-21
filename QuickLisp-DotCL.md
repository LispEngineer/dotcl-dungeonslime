# DotCL and QuickLisp

`curl -O https://beta.quicklisp.org/quicklisp.lisp`

```
dfields@AdmiralIX:~/src/cl/ql-.cl$ dotcl
dotcl REPL. Ctrl+D to exit.
CL-USER> (load "quicklisp.lisp")

  ==== quicklisp quickstart 2015-01-28 loaded ====

    To continue with installation, evaluate: (quicklisp-quickstart:install)

    For installation options, evaluate: (quicklisp-quickstart:help)

T
CL-USER> (quicklisp-quickstart:install)
; #<PROGRAM-ERROR: Unable to cast object of type 'DotCL.LispInstance' to type 'DotCL.LispFunction'.>
```