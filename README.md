# CircuiTikz: Thermistor

![image info](example-1.svg "SVG output of PTC")
![image info](example-2.svg "SVG output of NTC")
![image info](example-3.svg "SVG output of PTC with Part Number")

Example of a CircuiTikz subcircuit configurable as a PTC or NTC thermistor.

## Description

This tutorial demonstrates utilizing the CircuiTikz package of LaTeX to create
reusable circuits intended to be incorporated as part of a larger document 
(for example, a paper, poster, or system diagram) or as a standalone vector
graphics asset for use in other documentation formats.

Note that a multi-page output is produced since each example is its own figure
environment via the `standalone` `multi` package option.

## Prerequisites

For broad compatibility, all tools utilized are constrained to those included
in a standard TeX Live distribution. Therefore, `texlive` (linux), `MacTeX` (macOS), `MikTex` (Windows) or Container thereof is required.

Additionally, it's worth making sure that `dvisvgm` [successfully locates](
https://dvisvgm.de/FAQ/) the GhostScript dynamic library on your system via
`dvisvgm -V1`.

## Usage

The included Makefile contains all commands to render the graphics assets.
Use the `tex` target to generate the PDF output and the `svg` target to
generate the SVG output. Note that the later command is dependent on the
former. For convenience, the `all` target runs both sequential. Additionally,
the `clean` removes the TeX artifacts while `distclean` removes both artifacts
and outputs.

## Implementation

After considering various options, the most straightforward approach seemed
to be to use `latexmk` to delegate `latex` to generate `DVI->PDF` and `dvisvgm`
to convert `DVI->SVG` using a Makefile. As a more modern alternative, it's
also possible to use `xelatex` to generate `XDV->PDF` and `dvisvgm` to convert
`XDV->SVG`.

## Future Work

- [ ] Add GitHub Action for continuous integration
- [ ] Avoid specifying GhostScript dynamic library path via environmental variable
- [ ] Add alternative latexmk configuration for using `xelatex`
- [ ] Try `dvisvgm` TikZ package [option](https://tikz.dev/drivers#sec-10.2.4)