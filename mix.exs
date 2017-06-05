defmodule AddressBook.Mixfile do
  use Mix.Project

  def project do
    [app: :address_book,
     version: "0.1.1",
     elixir: "~> 1.4",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
  
  defp description() do
    """
    Simple package for managing address book.
    """
  end

  defp package() do
    [
      name: :addressBook,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Maksymilian Wojczuk"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/maxiwoj/AddressBook"}
    ]
  end
end
