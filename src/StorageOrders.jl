module StorageOrders

abstract type StorageOrder end
struct ColMajor <: StorageOrder end #colexicographic ordering
struct RowMajor <: StorageOrder end #lexicographic ordering
struct NoOrder <: StorageOrder end # something like a hash map sparse array.

storageorder(::AbstractArray) = ColMajor() # fallback to the the Julia default.

end
