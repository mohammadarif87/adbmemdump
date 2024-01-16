# adbmemdump
Function to add to zshrc to grab current adb sessions memory and display it in MB - works with Android devices like phones, TV etc

# How it works
Add the contents from adb.zshrc to your .zshrc file

If you use another profiler like .profile, .zprofile or .bash add the following line at the top of your .zshrc file replacing .profile with the one you use:

```source ~/.profile```

Run the function `adbcurrentfocus` by typing this in Terminal. This will find the package name of the app currently running

Then run the function `adbmemdump` by typing this in Terminal whenever you want to grab the memory value. This will display the PSS memory value in MB


**TODO:**

- create a function to run it in a loop
- and update every x seconds
- save the output into a file
