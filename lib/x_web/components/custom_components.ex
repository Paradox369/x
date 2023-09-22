defmodule XWeb.Components.CustomComponents do
  use Phoenix.Component

  @doc """
  Renders a navigation link with text and inline svg as inputs.

  ## Example

      <CustomComponents.header_link href="#">
        Home
        <:svg_img>
          <svg class="text-indigo-300 group-hover:text-white h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25" />
          </svg>
        </:svg_img>
      </CustomComponents.header_link>
  """
  attr :href, :string, required: true
  slot :svg_img, required: false
  def header_link(assigns) do
    ~H"""
      <a href={@href} class="text-indigo-100 hover:bg-indigo-800 hover:text-white group flex w-full flex-col items-center rounded-md p-3 text-xs font-medium">
        <!-- Current: "text-white", Default: "text-indigo-300 group-hover:text-white" -->
        <%= render_slot(@svg_img)  %>
        <span class="mt-2"><%= render_slot(@inner_block) %></span>
      </a>
    """
  end
end
