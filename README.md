# Muramasa
Muramasa is a coding challenge in two assignments. The original repo that the challenge was initiated from can be found [here](https://github.com/berrynorth/muramasa). The assignments (copied from [assignments.txt](https://raw.githubusercontent.com/calaway/muramasa/d95ef17864bd3d97810a51d26af8ae01adb784f6/assignments.txt)) are:

1. Create a single script that will click each menu item on the O.C. Tanner site and validate that you land on the appropriate page.

2. Create a script that does a google search for Muramasa.  Finds the wikipedia result and clicks it. Then from the wikipedia page capture his birthdate into a variable and print Muramasa's birthday to the console.

The boilerplate setup for this was geared toward running code via rspec tests. I used this to my advantage by writing my scripts for the assignments as tests. The scripts can be run from your terminal with the following commands.

###### Setup:  
*(If you have problems getting this to run, please review the prerequisites section below.)*
```shell
$ git clone git@github.com:calaway/muramasa.git
$ cd muramasa
$ bundle install
```

###### Assignment 1:
```shell
$ rspec spec/features/oc_tanner/web_test/assignment_1_spec.rb
```

###### Assignment 2:
```shell
$ rspec spec/features/google/web_test/assignment_2_spec.rb
```

## Notes:
It is not possible to complete assignment 2 as the instructions are written, since the [Wikipedia page on Muramasa](https://en.wikipedia.org/wiki/Muramasa) does not have his birthday. In order to demonstrate my ability to complete the challenge I took the liberty of making up and solving a different, but equally difficult, problem, as stated here with changes in __bold__:
> "Create a script that does a google search for Muramasa.  Finds the wikipedia result __for the Nintendo game 'Muramasa: The Demon Blade'__ and clicks it. Then from the wikipedia page capture __it's release date__ into a variable and print __the game's release date__ to the console."

Regarding problem 1, I assume the challenge is asking for the script to navigate through the 6 menu options of the desktop version of the website (rather than mobile), so that's what I built it to do.

If you see any problem with this or anything else, please let me know and I will work to demonstrate my proficiency in any way I can.

## Prerequesites
Additional prerequisites to run this code and more information can be found in the [original README](https://github.com/calaway/muramasa/blob/b6dbc357a9f7d99c5bebc6a872ad1895a177d846/README.md). You only need to refer to this if you have trouble getting the above code to run.
