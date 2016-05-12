TOSVG - A simple batch / bash script to convert simple images to SVG
============================================================

Usage
------------

``tosvg fileExtension``

fileExtension defaults to png

What this does is go through the current directory and searches for every image of the file extension you specified and converts each to png and outputs the batch into a folder named output

Installation
-------------

1. You have to have ImageMagick installed.
	* (This converts many image formats into bmp)
2. You must to have Potrace installed.
	* (This converts the image from bmp to svg)
3. You should probably add this to your path to use it without having to copy it to every folder you want to use it on.
	* Just run addToPath.bat file to add it to your path.
4. Just use it.