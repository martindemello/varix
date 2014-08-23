open Types

module type ENGINE = sig
  type dict 

  val pattern : dict -> tile list -> Wordset.t

  val anagram : dict -> tile list -> multi:bool -> all:bool -> Wordset.t

  val exists : dict -> string -> bool
end
