# X

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

# Note:

- For the project to fully display on my screen, I removed the classes from the root.html.heex file.
  The original body is commented above.
  I also removed the original template in the app.html.heex file, commented it and replaced it with
  a plain div.
- Revert these changes if necessary

## To get Ash Dependency to Compile on Windows OS:

- Install Visual C++ Build Tools from: https://visualstudio.microsoft.com/downloads/
  goto:
  `Tools for Visual Studio` and select `Build Tools for Visual Studio 2022` for download
- open the run cmd, type and execute:
  cmd /K "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=x64
  OR run:
  C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\LaunchDevCmd.bat
- in the opened cmd terminal, cd to your project and type `mix deps.compile`
