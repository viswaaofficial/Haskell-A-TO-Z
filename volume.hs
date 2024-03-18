volume :: [Int] -> String
volume []       = error "Measurements not mentioned"
volume [_]      = error "All measurements are not mentioned"
volume [_,_]    = error "All measurements are not mentioned"
volume [x,y,z]  = show (x * y * z) ++ "in^3"