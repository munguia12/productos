json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :provedor, :contacto
  json.url proveedor_url(proveedor, format: :json)
end
