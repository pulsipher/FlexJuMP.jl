using Documenter, FlexJuMP

makedocs(format = :html,
         sitename = "FlexJuMP.jl",
         pages = ["Home" => "home.md",
                  "Background" => "background.md",
                  "User Guide" => "guide.md",
                  "Examples" => "examples.md",
                  "Library" => "api.md"])

 deploydocs(
     repo   = "github.com/pulsipher/FlexJuMP.jl.git",
     target = "build",
     deps   = nothing,
     make   = nothing
 )
