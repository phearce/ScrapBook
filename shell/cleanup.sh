#!/bin/bash

# Does some quick house-keeping via apt-get to free-up space.
echo "Finding space on drive..."
df
echo
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
echo
df
echo
echo "That's all that can be done here. Go to System/Administration/Remove Orphaned in the GUI to finish cleaning up."
echo 

