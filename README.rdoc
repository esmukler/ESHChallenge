
# EducationSuperhighway Coding Challenge
--------------------------------------

Using the technology stack of your choice, produce a web application which displays
a bar chart of the average cost per megabit for each organization in the sample set.

## Requirements:

- The X axis should show BEN, which is the Billed Entity Number of the organization, a unique number
- The Y axis should show average (mean) cost per megabit. In other words, taking bandwidth and purchase price,
first convert the bandwidth value into megabits and then use the formula
cost_per_megabit = purchase_price / bandwidth_in_mb
 Average these values over the sample set to find the average cost per megabit.
- Some of the data is in MongoDB. Some of the data is in postgresql. The data is
not in the same format in each database,
but the bar chart should show data from both data sources.
- To start, install mongodb and postgresql and use seed.js and seed.sql,
respectively, to populate the databases
- Additionally, write at least one test case, testing either the model, controller, view, or all three.
Choose the test that is most valuable, depending on how you've chosen to write the code.

## Data Formats:

MongoDB. Take a look at the structure of the data in the seed file. The only trick part here is that
bandwidth values are given as either 10, 100, or 1000, but the measure is indicated by a separate field (measure).
Conversions work as so:
"k" => kilobits. 1000 kilobits = 1 megabit
"m" => megabits. 1000 megabits = 1 gigabit
"g" => gigabits. 1000 gigabits = 1 terabit
"t" => terabits
Cost is the cost in dollars.

Postgresql. The data format here is similar. You will have to create the tables before running the seed file.

## How to run this app:
* Download this repo.
* Navigate inside the repo.
* Make sure you are running Postgresql.
* run the command `rails server`.
* Go to "localhost:3000" in your browser.


## Notes:

This application uses Postgresql only.
I couldn't get Mongoid (the MongoDB Ruby gem) running alongside Postgresql in time.
As a workaround, I [seeded my database twice]("db/seeds.rb") to the same School and SchoolPurchase models.
First, I ran the SQL commands.
Then, I quickly converted the MongoDB file into a Ruby Hash
and ran a ruby script to input the data into the same models.
