step = 0;
ready = true;

tutorial_text = [
"Welcome to Gridlock, the mathematical row-reduction puzzle game!",
"Before we dive into how to win, let's show you how to play first.",
"Drag one of the rows onto another to add it to that row.",
"Now, double-tap and drag like you just did to swap the rows.",
"Tap the text on the scalar block (the one with the X on it) to edit it.",
"Then, drag the scalar block onto a row to multiply all values in the row by that scalar.",
"Double-tap the scalar block to switch between multiplying and dividing.",
"Now, let's learn the basics of row-reduction. Here are the rules we need to follow to solve the puzzle:",
"Each row must have a 1 as its first non-zero digit (or be all zeroes).",
"Each leading 1 must be to the right of those above it.",
"Any rows consisting of all zeroes must be below rows with values in them.",
"Each leading 1 must be the only non-zero value in their column.",
"This is called Row-Reduced Echelon Form (or RREF) [That isn't critical to remember, don't worry].",
"We have a number of tricks for getting to this simplified form that will make this game a lot less intimidating.",
"First: Try to produce as many zeroes as you can. We especially like having lots of zeroes in the same row or column.",
"We often do this by getting a 1. You can turn a value into a 1 by dividing it by itself. Let's make our 3 in the corner a 1.",
"With that, we can zero out any value we want in that column. Multiply the 1 by a -4 and we can zero out the 4 below it.",
"Once we do that, we can divide by the same thing we just multiplied by to get our 1 back. Do this until we only have one non-zero in column 1.",
"Now that we have a column with only one value, we generally want to try to keep the zeroes we have. We can easily do this by not adding our column with a 1 to the others.",
"Before we move to the next column, let's get rid of the fractions that can get confusing. Multiply everything with a fraction by that number on the bottom.",
"Even though we have a 1, we want to use something else, so we don't overwrite the zeroes. The 2 can be divided by 2 and used as a 1 to zero our other values. Complete the second column.",
"Now that we're done with 2 columns, you'll notice we have our bottom row starting with zeroes. Because 0 divided by anything is still 0, we can divide by the value in our last spot and be left with 0, 0, 1.",
"With that 1, you should be able to deduce what we do next. Zero out the other values with their opposites and simplify us down to one value in each row.",
"Our final step is to divide all the remaining values by themselves to get only 1s.",
"Congratulations, you've solved a Gridlock puzzle! Luckily, our rows were already in order, but if they weren't, we can always rearrange them.",
"You'll learn many more tricks, but if you ever forget the rules, just revisit this tutorial! Enjoy Gridlock!"
];