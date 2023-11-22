/**
 * @description Find functions that are longer than 10 lines
 * @kind problem
 * @id javascript/functions-longer-than-10-lines
 * @problem.severity recommendation
 */
import javascript

predicate longerThan10(Function f) {
    f.getNumLines() > 10
}

from Function func
where longerThan10(func)
select func, "Function longer than 10 lines"