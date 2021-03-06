defmodule PickingAndDeliveryWeb.StoreLive do
 use PickingAndDeliveryWeb, :live_view
 alias PickingAndDelivery.Pickings

 def mount(_assigns, _session, socket) do
  socket = assign(socket, stores: Pickings.all_stores_with_pickings())
   {:ok, socket}
 end

 def products_component do
   PickingAndDeliveryWeb.ProductsComponent
 end
end
