# Ada Constraint_Error Example

This repository demonstrates a common runtime error in Ada: the `Constraint_Error` exception, which is raised when attempting to access an array element using an index that is outside the array's defined bounds.

The `bug.ada` file contains Ada code that attempts to access an array element with an invalid index, resulting in the `Constraint_Error` exception being raised.

The `solution.ada` file provides a solution for handling this exception using an `exception` handler.  This prevents the program from crashing and allows for graceful error handling.

## How to Run

1.  Ensure you have an Ada compiler installed (like GNAT).
2.  Compile the code using your Ada compiler (e.g., `gnatmake bug.ada`).
3.  Run the compiled executable.