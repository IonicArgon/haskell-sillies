data LinkedList a = List a (LinkedList a) | Empty
instance Show a => Show (LinkedList a) where
    show Empty = ""
    show (List x xs) = show x <> " " <> show xs

x -\ xs = List x xs

mapList f Empty = Empty
mapList f (List x xs) = f x -\ mapList f xs

hListToLinkedList xs = foldr (-\) Empty xs

foldListR f z Empty = z
foldListR f z (List x xs) = f x (foldListR f z xs)

foldListL f z Empty = z
foldListL f z (List x xs) = foldListL f (f z x) xs
