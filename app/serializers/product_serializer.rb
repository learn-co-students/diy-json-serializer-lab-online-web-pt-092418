class ProductSerializer
  def self.serialize(product)

    serialized_product = '{'
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": "' + product.price.to_s + '", '
    serialized_product += '"inventory": "' + product.inventory.to_s + '"'
    if product.description
      serialized_product += ', "description": "' + product.description + '"'
    end
    serialized_product += '}'
  end
end
#
# Tao's suggestion:
#
# serialized_product = '{'    serialized_product += '"id": ' + product.id.to_s + ', '    serialized_product += '"name": "' + product.name + '", '    serialized_product += '"description": "' + product.description + '", '    serialized_product += '"inventory": ' + product.inventory.to_s + ', '    serialized_product += '"price": "' + product.price.to_s + '"'    serialized_product += '}' 
# From Tao Liu to Everyone: (12:13 AM)
#
# <script type="text/javascript" charset="utf-8">$(function () {  $(".js-next").on("click", function() {    var nextId = parseInt($(".js-next").attr("data-id")) + 1;    $.get("/products/" + nextId + "/data", function(data) {      $(".productName").text(data["name"]);      $(".productPrice").text(data["price"]);      $(".productDescription").text(data["description"]);      $(".productInventory").text(data["inventory"]);      // re-set the id to current on the link      $(".js-next").attr("data-id", data["id"]);    });  });});</script>
