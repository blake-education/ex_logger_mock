defmodule ExLoggerMock.MixProject do
  use Mix.Project

  @source_url "https://github.com/blake-education/ex_logger_mock"
  @version "1.2.0"

  def project do
    [
      app: :ex_logger_mock,
      name: "ExLoggerMock",
      version: @version,
      elixir: "~> 1.10",
      package: package(),
      deps: deps(),
      docs: docs(),
      preferred_cli_env: preferred_cli_env(),
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.2", only: :test, runtime: false},
      {:dialyxir, "~> 0.5.1", only: :test, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.12.2", only: :test, runtime: false},
      {:mix_test_watch, "~> 1.0", only: :test, runtime: false}
    ]
  end

  defp docs do
    [
      extras: [
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      homepage_url: @source_url,
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      name: "ex_logger_mock",
      description: "A mock logging backend for Elixir unit tests",
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end

  defp preferred_cli_env do
    [
      coveralls: :test,
      "coveralls.detail": :test,
      "coveralls.post": :test,
      "coveralls.html": :test,
      credo: :test,
      dialyzer: :test,
      "test.watch": :test
    ]
  end
end
