json.array!(@entradas) do |entrada|
  json.extract! entrada, :id, :fecha, :remision, :articulo, :cantidad, :recibe, :proveedor, :autoriza, :solicita
  json.url entrada_url(entrada, format: :json)
end
