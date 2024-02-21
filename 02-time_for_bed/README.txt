We have a bed file named start.bed.

Our goals are to sort the bed file in ascending order.

What is a bedfile anyway? Maybe open up start.bed and find out!

I would like you to do this using two methods:

1. Existing software from online
The UCSC has binary files available online found here:
http://hgdownload.soe.ucsc.edu/admin/exe/

- You might find something you need here, so take some time to look around at some point. For now, we are looking for a file called bedSort. The 
above link has directories for linux (linux.x86_64) or OSX (macOSX.arm64 or macOSX.x86_64). Go into the relevant folder and find bedSort.
- Right click bedSort and "Copy Link".
- Download the file using wget
- Run bedSort on start.bed and name the output end_bedSort.bed
- Double check it's sorted.

2. Using built-in commands
- Use the sort command to sort the bedfile into end_sort.bed

