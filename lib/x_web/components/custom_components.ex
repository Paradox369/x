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

  attr :type, :string, default: "button"
  attr :class, :string
  slot :inner_block, required: true
  def button(assigns) do
    ~H"""
    <button type={@type} class={@class}>
      <%= render_slot(@inner_block) %>
    </button>
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

  def gallery(assigns) do
    ~H"""
    <ul role="list" class="grid grid-cols-2 gap-x-4 gap-y-8 sm:grid-cols-3 sm:gap-x-6 md:grid-cols-4 lg:grid-cols-3 xl:grid-cols-4 xl:gap-x-8">
      <li class="relative">
        <!-- Current: "ring-2 ring-indigo-500 ring-offset-2", Default: "focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 focus-within:ring-offset-gray-100" -->
        <div class="ring-2 ring-indigo-500 ring-offset-2 aspect-w-10 aspect-h-7 group block w-full overflow-hidden rounded-lg bg-gray-100">
          <!-- Current: "", Default: "group-hover:opacity-75" -->
          <img src="https://images.unsplash.com/photo-1582053433976-25c00369fc93?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=512&q=80" alt="" class="pointer-events-none object-cover">
          <__MODULE__.button type="button" class="absolute inset-0 focus:outline-none">
            <span class="sr-only">View details for IMG_4985.HEIC</span>
          </__MODULE__.button>
        </div>
        <p class="pointer-events-none mt-2 block truncate text-sm font-medium text-gray-900">IMG_4985.HEIC</p>
        <p class="pointer-events-none block text-sm font-medium text-gray-500">3.9 MB</p>
      </li>

      <!-- More files... -->
    </ul>
    """
  end
end
