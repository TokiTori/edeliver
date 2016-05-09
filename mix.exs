defmodule Edeliver.Mixfile do
  use Mix.Project

  def project do
    [
      app: :edeliver,
      version: "1.2.5",
      description:  "Build and Deploy Elixir Applications and perform Hot-Code Upgrades and Schema Migrations",
      package: [
        licenses: ["MIT"],
        files:  [
          "bin",
          "CHANGELOG.md",
          "lib",
          "libexec",
          "mix.exs",
          "src",
          "strategies",
          "README.md",
        ],
        links: %{"GitHub" => "https://github.com/boldpoker/edeliver"},
      ],
      deps: deps,
    ]
  end

  defp deps, do: [
    {:exrm, ">= 0.16.0"},
    {:meck, "~> 0.8.4", only: :test},
    {:earmark, "~> 0.1", only: :dev},
    {:ex_doc, "~> 0.11.5", only: :dev},
  ]

end
