module CSDP

# Try to load the binary dependency
if isfile(joinpath(dirname(@__FILE__),"..","deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("CSDP not properly installed. Please run Pkg.build(\"CSDP\")")
end

export Blockmatrix

include("blockmat_.jl")
include("blockmat.jl")

end # module
