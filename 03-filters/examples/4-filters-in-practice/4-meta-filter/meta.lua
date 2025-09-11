Meta = function(meta)
  quarto.log.output(meta)
  for key, value in pairs(meta) do
    quarto.log.output(key)
  end
end
