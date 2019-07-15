# perceptual-hash

A DCT-based perceptual hash in J.

See [here](https://www.phash.org/docs/pubs/thesis_zauner.pdf) for background.

## Use

```j
load 'hash.ijs'
phash (read_image 'demo-data/frog.jpeg')
0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0
phash (read_image 'demo-data/frog.png')
0 0 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 1 0 1 0 0 0
phash (read_image 'demo-data/cat.png')
0 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 0 0 1
```
