-------------------------------------------------------------------------------------------

local signal = require(script.Parent.signal)

-------------------------------------------------------------------------------------------

type signal = signal.signal
type restricted_signal = signal.restricted_signal

-------------------------------------------------------------------------------------------

export type get<T> = (current_value : T, ...any?) -> T
export type set<T> = (new_value : T, silent : boolean?, ...any?) -> ()

export type user_get<T> = (current_value : T, ...any?) -> T
export type user_set<T> = (new_value : T, ...any?) -> T

export type immutable_attribute<T> = {
    get : get<T>,
    changed : restricted_signal
}

export type mutable_attribute<T> = {
    get : get<T>,
    set : set<T>,
    changed : signal
}

export type object_base<T> = {
    __type : T
}

-------------------------------------------------------------------------------------------

return nil

-------------------------------------------------------------------------------------------