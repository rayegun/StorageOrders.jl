using StorageOrder
using Documenter

DocMeta.setdocmeta!(StorageOrder, :DocTestSetup, :(using StorageOrder); recursive=true)

makedocs(;
    modules=[StorageOrder],
    authors="Wimmerer <kimmerer@mit.edu> and contributors",
    repo="https://github.com/Wimmerer/StorageOrder.jl/blob/{commit}{path}#{line}",
    sitename="StorageOrder.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Wimmerer.github.io/StorageOrder.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Wimmerer/StorageOrder.jl",
    devbranch="main",
)
