# Cleanup CSV Lists for Sitecore Send

This is a simple powershell script to compare two .csv files by a column named **"Email"**, removes the duplicates and creates a new .csv with the result.

**The history behind is**: I had to compare several mailing lists from a customer who was using Sitecore Send. Sending Campaigns was failing due to the bounce rate so I need to cleanup those lists.

There are several tools outside there to check whether email lists are valid and clean them up as well. Find the one that fits for your needs.

In my case I used [EmailVerify](https://emailverify.com/) a tool which does several checks if Emails are available, Inbox checks, Redirection checks and so on... **But this is optional**!

It's also possible to export the suspression list from Sitecore Send into a .csv, so the steps are quite easy:

1. Export the suspression list from Sitecore Send
2. Ensure that your original list and the suspression list have the same column named **"Email"**
3. Run the script, enter the path to the original file and then the one which you want to filter, the result will be a file named **"output.csv"**
4. Use that file to import your contacts into Sitecore Send
5. *(Optional)* Rename the **"output.csv"** to e.g. **"OriginalWithoutSuspressions.csv"**
6. *(Optional)* Import this list in your favorite cleanup tool, in my case **"EmailVerify"**, check the list and export the list as a .csv
7. *(Optional)* Ensure that both files have the same column named **"Email"**
6. *(Optional)* Run the script again with the renamed file against the result from EmailVerify or your favorite cleanup tool

At the end you will have a clean list which is ready to import into Sitecore Send. The bounce rate will be definitely below 3%.
