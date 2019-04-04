using Documenter, FlexJuMP

makedocs(modules = [FlexJuMP],
         doctest=true,html_prettyurls = get(ENV, "CI", nothing) == "true"
         sitename = "FlexJuMP.jl - A Framework for Flexibility Analysis",
         authors = "Joshua Pulsipher",
         pages = ["Home" => "index.md",
                  "Background" => "background.md",
                  "User Guide" => "guide.md",
                  "Examples" => "examples.md",
                  "Library" => "api.md"])

 deploydocs(
     repo   = "github.com/pulsipher/FlexJuMP.jl.git"
 )
