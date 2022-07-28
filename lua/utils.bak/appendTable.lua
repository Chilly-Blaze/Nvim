return function(o, t)
    for k, v in pairs(t) do
        o[k] = v
    end
    return o
end
