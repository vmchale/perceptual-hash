load 'media/imagekit'
load 'stats/base'
load '~addons/media/imagekit/color_space.ijs'
load '~addons/media/imagekit/filter.ijs'

atIndex =: 4 : 0
    N =. 32
    cos =. 2 & o.
    (%: (2 % N)) * cos (((2 * x + 1) * y * 1p1) % (2 * N))
)

NB. coefficients of the 32x32 DCT matrix
coeffs =: (i.32) atIndex " 0 / (i.32)

matmul =: +/ .*
dct =: (coeffs & matmul) @: (matmul & (|: coeffs))

NB. resize to 32x32
resize_32 =: 3 : 0
    sz =. 2 {. $y
    ind =. (<"0 sz%(32 32)) <.@*&.> <@i."0 (32 32)
    (<ind) { y
)

crop_8 =: (< (i.8);(i.8)) { ]

grayscale =: ((0 & {) " 1) @: RGB_to_YUV

NB. median filter might be why it's slower
phash =: (median > ]) @: , @: crop_8 @: dct @: resize_32 @: (7 medianf) @: grayscale
