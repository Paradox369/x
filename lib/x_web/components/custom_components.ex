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
end
