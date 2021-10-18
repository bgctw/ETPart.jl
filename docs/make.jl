using ETPart
using Documenter

DocMeta.setdocmeta!(ETPart, :DocTestSetup, :(using ETPart); recursive=true)

makedocs(;
    modules=[ETPart],
    authors="Thomas Wutzler <progtw@arcor.de> and contributors",
    repo="https://github.com/bgctw/ETPart.jl/blob/{commit}{path}#{line}",
    sitename="ETPart.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bgctw.github.io/ETPart.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bgctw/ETPart.jl",
    devbranch="main",
)
