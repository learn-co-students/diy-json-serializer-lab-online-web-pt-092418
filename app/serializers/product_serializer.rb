class ProductSerializer

  def self.serialize(product)
    serialized_post = '{'

    serialized_post += '"id": ' + product.id.to_s + ', '
    serialized_post += '"name": "' + product.name + '", '
    serialized_post += '"description": "' + self.serializeDescription(product) + '", '
    serialized_post += '"inventory": ' + product.inventory.to_s
    # the author association can also be represented in JSON
    # and end with the close brace
    serialized_post += '}'
  end

  def self.serializeInventory(product)
    product.inventory && product.inventory >= 1 ? true.to_s : false.to_s
  end

  def self.serializeDescription(product)
    product.description.to_s
  end

end
