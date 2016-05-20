defmodule Docker.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :docker,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,

     # Hex
     description: description,
     package: package]
  end

  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [
      {:poison, "~> 2.0"},
      {:httpoison, "~> 0.8"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7", only: :dev},
    ]
  end

  defp description do
    """
    Elixir client for the Docker Remote API using HTTPoison.
    """
  end

  defp package do
    [contributors: ["William Huba", "Alex Bird"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/alexebird/docker-elixir"},
     files: ~w(mix.exs README.md LICENSE VERSION config lib)]
  end
end
