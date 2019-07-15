load 'media/imagekit'
load 'stats/base'
load '~addons/media/imagekit/color_space.ijs'
load '~addons/media/imagekit/filter.ijs'

NB. coefficients of the 32x32 DCT matrix
cos =: 2 & o.

atIndex =: 4 : 0
N =. 32
(%: (2 % N)) * cos (((2 * x + 1) * y * 1p1) % (2 * N))
)

coeffs =: (i.32) atIndex " 0 / (i.32)

matmul =: +/ .*
dct =: (coeffs & matmul) @: (matmul & (|: coeffs))

NB. resize to 32x32
resize_32 =: 3 : 0
szi =: 2 {. $y
ind=.(<"0 szi%(32 32)) <.@*&.> <@i."0 (32 32)
(<ind){y
)

crop_8 =: (< (i.8);(i.8)) { ]

gtMed =: median > ]

grayscale =: [: <. +/ .*"1&0.2126 0.7152 0.0722

phash =: gtMed @: , @: crop_8 @: dct @: resize_32 @: (7 medianf) @: grayscale
