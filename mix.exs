defmodule Uinta.MixProject do
  use Mix.Project

  @project_url "https://github.com/podium/uinta"
  @version "0.11.0"

  def project do
    [
      app: :uinta,
      name: "Uinta",
      description: "Simpler structured logs and lower log volume for Elixir apps",
      version: @version,
      elixir: "~> 1.11",
      source_url: @project_url,
      homepage_url: @project_url,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      test_coverage: [summary: [threshold: 80]]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test]},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:jason, "~> 1.1"},
      {:plug, ">= 0.0.0", optional: true}
    ]
  end

  defp docs do
    [
      main: "Uinta",
      extras: [
        "CHANGELOG.md",
        {:"README.md", title: "Readme"}
      ],
      source_url: @project_url,
      source_ref: "v#{@version}",
      homepage_url: @project_url
    ]
  end

  defp package do
    [
      maintainers: ["Podium"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @project_url,
        "Changelog" => "#{@project_url}/blob/master/CHANGELOG.md"
      }
    ]
  end
end
