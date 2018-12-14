using Documenter, FlexJuMP

makedocs(modules = [FlexJuMP],
         format = :html,
         sitename = "FlexJuMP.jl",
         pages = ["Home" => "index.md",
                  "Background" => "background.md",
                  "User Guide" => "guide.md",
                  "Examples" => "examples.md",
                  "Library" => "api.md"])

 deploydocs(
     repo   = "github.com/pulsipher/FlexJuMP.jl.git",
     target = "build",
     julia  = "0.6",
     deps   = nothing,
     make   = nothing
 )
