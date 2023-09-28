defmodule XWeb.Components.CustomComponents do
  use Phoenix.Component

  @doc """
  Renders a Logo.

  ## Example

      <.CustomComponents.logo />
  """
  attr :class, :string, default: nil
  def logo(assigns) do
    ~H"""
    <div class={["flex flex-shrink-0 items-center", @class]}>
      <img class="h-8 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=white" alt="Your Company">
    </div>
    """
  end

  attr :items, :list, required: true
  def description_list(assigns) do
    ~H"""
      <dl class="mt-2 divide-y divide-gray-200 border-b border-t border-gray-200">
        <div :for={item <- @items} class="flex justify-between py-3 text-sm font-medium">
          <dt class="text-gray-500"><%= item.title %></dt>
          <dd class="whitespace-nowrap text-gray-900"><%= item.description || "-" %></dd>
        </div>
      </dl>
    """
  end
end
