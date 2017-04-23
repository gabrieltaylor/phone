defmodule Phone.Mixfile do
  use Mix.Project

  def project do
    [app: :phone,
     version: "0.4.0",
     elixir: ">= 1.1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     source_url: "https://github.com/fcevado/phone",
     test_coverage: coverage(),
     deps: deps()]
  end

  defp package do
    [
      files: files(),
      maintainers: ["Flávio Moreira Vieira"],
      licenses: ["Apache 2.0"],
      links: links()
    ]
  end

  defp description do
    """
    Get useful info from telephone numbers.
    """
  end

  def application do
    [applications: []]
  end

  defp coverage do
    [
      tool: Coverex.Task,
      ignore_modules: [Helper.Area, Helper.Country, Helper.Parser],
      coveralls: true
    ]
  end

  defp files do
    [
      "mix.exs",
      "lib"
    ]
  end

  defp links do
    %{
      "Github" => "https://github.com/fcevado/phone"
    }
  end

  defp deps do
    [
      {:coverex, "1.4.12", only: :test},
      {:credo, "0.7.2", only: :dev},
      {:earmark, "1.2.0", only: :dev},
      {:ex_doc, "0.15.0", only: :dev},
      {:benchfella, "0.3.4", only: :dev},
      {:inch_ex, "0.5.6", only: :docs}
    ]
  end
end
