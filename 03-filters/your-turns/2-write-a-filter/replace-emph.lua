Emph = function (el)
    return pandoc.Underline(el.content)
end

Strong = function(el)
    return pandoc.Emph(el.content)
end
