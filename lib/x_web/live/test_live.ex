defmodule XWeb.Live.TestLive do
  use XWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <!--
        This example requires some changes to your config:


        // tailwind.config.js
        module.exports = {
          // ...
          plugins: [
            // ...
            require('@tailwindcss/forms'),
            require('@tailwindcss/aspect-ratio'),
          ],
        }
      -->
      <!--
        This example requires updating your template:


        <html class="h-full bg-gray-50">
        <body class="h-full overflow-hidden">

      -->
      <div class="flex h-full">
        <!-- Narrow sidebar -->
        <.live_component module={XWeb.Live.NarrowSidebar} id={:sidebar} />

        <!--
          Mobile menu

          Off-canvas menu for mobile, show/hide based on off-canvas menu state.
        -->
        <.live_component module={XWeb.Live.MobileMenu} id={:mobile_menu}/>

        <!-- Content area -->
        <.live_component module={XWeb.Live.ContentArea}id={:content_area} />
      </div>
    """
  end
end
