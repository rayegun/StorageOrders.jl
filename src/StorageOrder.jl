module StorageOrder

abstract type StorageOrder end
struct ColMajor <: StorageOrder end #colexicographic ordering
struct RowMajor <: StorageOrder end #lexicographic ordering
struct NoOrder <: StorageOrder end

storageorder(::AbstractArray) = ColMajor() # fallback to the the Julia default.
end
