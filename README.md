# chankillo

Solar observatory at Chankillo, Peru

# Methods

## Digitizing Site Map

The site map in Figure 2 of Ghezzi and Ruggles (2007) was viewed in
MacOS Preview, captured with the MacOS snapshot app, and then the
observatory coordinates were digitized using the imageDigitizer R
function (Kelley 2020).

To determine scales, it had to be assumed that this diagram was prepared
using natural scaling, because otherwise it would not be possible to
infer a scale for the northing coordinate.

Although the position of the eastern observation location seemed clear
on the diagram, it was not clear exactly where the western one was
located. I elected to digitize a point on the main diagram that was in
the middle of its inset.

The towers that had been built-up on the ridge are indicated with
squares in the original diagram, and rather than try to digitize their
corners, I simply digitized one point at the centre of each.

## Solstice Indicators

Ghezzi and Ruggles (2007) indicate that declinations that, in this
location and at the time 300 BCE, the solar declinations at Summer and
Winter solstice were 23.75 and -23.75, respectively. These lines are
indicated in the diagram, but the results differ substantially from
those in Figures 4 and 5 of Ghezzi and Ruggles (2007), likely indicating
an error of the present analysis. Examination of the sun traces
indicated on their diagrams suggests that the mislocation is not the
result of the fact that the present analysis ignores tower elevation
(related to ridge shape). The cause of the mismatch is not yet known.

![Figure 1 site map, with solstice siting lines. The Western and Eastern
observation locations are indicated with labelled circle and triangle,
respectively, and the crosses indicate the centres of the ridge towers.
The red lines indicate sunrise and set locations at the June solstice
and the blue lines indicate the same, for the December
solstice.](README_files/figure-markdown_strict/unnamed-chunk-1-1.png)

# References

Ghezzi, Ivan, and Clive Ruggles. 2007. “Chankillo: A 2300-Year-Old Solar
Observatory in Coastal Peru.” *Science* 315 (5816): 1239–43.
<https://doi.org/10.1126/science.1136415>.

Kelley, Dan. 2020. “Dankelley/<span
class="nocase">imageDigitizer</span>.”
<https://github.com/dankelley/imageDigitizer>.
