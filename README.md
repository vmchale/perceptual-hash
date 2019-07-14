# perceptual-hash

A DCT-based perceptual hash in J.

See [here](https://www.phash.org/docs/pubs/thesis_zauner.pdf) for background.

## Use

```j
load 'hash.ijs'
img =: read_image 'demo-data/frog.jpeg'
img_png =: read_image 'demo-data/frog.png'
cat =: read_image 'demo-data/cat.png'
hash img
0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0
hash img_png
0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0
hash cat
0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1
```
