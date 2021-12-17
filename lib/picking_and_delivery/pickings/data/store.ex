defmodule PickingAndDelivery.Pickings.Data.Store do
  alias PickingAndDelivery.Pickings.Data.Product
  defstruct ~w/description id lat lng name email products total_products/a

  def new(store, products) do
    %__MODULE__{
      id: store["id"],
      name: store["name"],
      description: store["descrtiption"],
      lat: store["lat"],
      lng: store["lng"],
      email: store["email"],
      total_products: Enum.count(products),
      products: Enum.map(products, &Product.new/1)
    }
  end
end
