json.array!(@salidas) do |salida|
  json.extract! salida, :id, :fecha, :numero, :articulo, :piezas, :solicita, :autoriza
  json.url salida_url(salida, format: :json)
end
