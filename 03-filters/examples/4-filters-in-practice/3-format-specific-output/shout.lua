Div = function(el)
  if not el.classes:includes("shout") then
    return nil
  end

  if quarto.format.is_latex_output() then
    local result = pandoc.Blocks({})
    result:insert(pandoc.RawBlock("latex", "\\begin{shout}"))
    result:extend(el.content)
    result:insert(pandoc.RawBlock("latex", "\\end{shout}"))
    return result
  end
  
end