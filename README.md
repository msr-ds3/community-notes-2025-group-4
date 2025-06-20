# Replication of "Community-Based Fact-Checking on Twitter’s Birdwatch Platform" Sofia Cora and Ye Htut Maung

This project covers replications and extensions of [this article](https://arxiv.org/pdf/2104.07175) on Community Notes on X (formerly known as Birdwatch on Twitter) for crowdsourced annotations of social media content. 

We focused on replicating figures 2, 3, 4, 5c, 7, 8, & 9

## Set Up
The needed .tsv tables are already in the /data folder, if you would like to download the original data we used run the following scripts
from /data_scripts folder in a powershell terminal...

1. `> ./01_download_notes_data.Sh `
2. ` >./02_filter_notes.Sh `
3. ` >./03_download_ratings_data.Sh `
4. ` >./04_filter_ratings.Sh `

The final_replication.Rmd file contains all of our final replication figures with our conclusions and possible extensions to the paper/how we would approach this problem differently. 

## Disclaimers
* Our data was ~10% less than the original, the original paper's dataset consisted of 11,802 Birdwatch Notes and 52981 Ratings, our data was 9,377 Birdwatch notes and 45,885 ratings.

* For the regression plot, we did not have time to run the NLP necesarry to get the 'Sentiment' and 'Text Complexity' features for the model.

