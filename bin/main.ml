let rec last list = 
    match list with 
    | [] -> None
    | [x] -> Some x
    | _ :: tl -> last tl

let () = 
    let a = last ["a"; "b"; "c"; "d"] in
    let final_a = Option.value a ~default:"None" in
    Printf.printf "Last in list: %s\n" final_a

