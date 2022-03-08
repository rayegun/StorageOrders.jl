using StorageOrders
using Documenter

DocMeta.setdocmeta!(StorageOrders, :DocTestSetup, :(using StorageOrders); recursive=true)

makedocs(;
    modules=[StorageOrders],
    authors="Wimmerer <kimmerer@mit.edu> and contributors",
    repo="https://github.com/Wimmerer/StorageOrders.jl/blob/{commit}{path}#{line}",
    sitename="StorageOrders.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Wimmerer.github.io/StorageOrders.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Wimmerer/StorageOrders.jl",
    devbranch="main",
)
