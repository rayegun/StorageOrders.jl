module StorageOrders

export storageorder, ColMajor, RowMajor, NoOrder, RuntimeOrder
abstract type StorageOrder end
struct ColMajor <: StorageOrder end #colexicographic ordering
struct RowMajor <: StorageOrder end #lexicographic ordering
struct NoOrder <: StorageOrder end # something like a hash map sparse array.
struct RuntimeOrder <: StorageOrder end # Order is known only at runtime, needs function barrier or manual redispatch.

function storageorder(A::AbstractArray)
    order = comptime_storageorder(A)
    return order === RuntimeOrder ? runtime_storageorder(A) : order
end

comptime_storageorder(::AbstractArray) = ColMajor()
runtime_storageorder(::AbstractArray) = ColMajor()
end