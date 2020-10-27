# download-sra-data
Download multiple datasets from the NCBI's [Sequence Read Archive](https://www.ncbi.nlm.nih.gov/sra)

Typcially, if you want to download multiple datasets from the SRA, then you would need to type out a `fastq-dump` command multiple times. To avoid this tedium, this script uses a while loop to sequentially load a list of datasets. This script can download either paired-end or single end data and automatically splits paired reads into seperate fastq files.

## USAGE

1. Download the `download_sra.bash` scripts to the folder you want to download the SRA data to. 
2. Run `chmod +x download_sra.bash` to make the bash script executable.
3. Type `./download_sra.bash -s example_sras.txt` or something similar. The `-s` option describes the text file containg a list of SRA ***run*** numbers

Note 1: There should only be one SRA accession on each line of the list specified by `-s` (see example_sras.txt for an example).
Note 2: I would recommend using a text editor like nano to build this input list because you can run into obscure errors regarding text format if you use Notepad on Windows. 
