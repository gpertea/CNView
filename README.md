# CNView

Wrapper for a modified version of the CNView program by Ryan Collions
(https://github.com/RCollins13/CNView)

The main function called `CNViewMod()` was changed to allow a pre-loaded
dataframe with the coverage matrix data to be passed instead of a file name, 
which makes that function suitable for repeated calls on multiple regions.

The reading of the coverage matrix file was also streamlined to work the
same way on Windows and Linux/MacOS platforms (using `data.table::fread`
to load large files in a reasonable amount of time on either platform).







