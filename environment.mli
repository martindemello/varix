module type ENV = sig
  type dict

  type env = {
    dict : dict;
    mutable op : Types.uop
  }
end

module Make (Dict : sig type t end) : ENV with type dict = Dict.t