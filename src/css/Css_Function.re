/** {{: https://www.w3.org/TR/css3-values/#functional-notations} Functional Notations} */;

module Infix = {
  module Calc = {
    /** {{: https://www.w3.org/TR/css3-values/#calc-notation} Calc Notation} */;

    let (|+|) = (a, b) => `add((a, b));
    let (|-|) = (a, b) => `subtract((a, b));
    let (|*|) = (a, b) => `multiply((a, b));
    let (|/|) = (a, b) => `divide((a, b));
  };
};

/* TODO: add attr() */
