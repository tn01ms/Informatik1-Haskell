--cos :: Double -> Double

cos x = cosHilf x 0

cosHilf x k
     | summe x k < 0.001 = 
	 | (summe x k) + cosHilf x (k+1)


summe x k = ((-1) ^ k) * ((x ^ (2*k)) / fakult 2k)

fakult 0 = 1 
fakult n = n * fakult (n-1)