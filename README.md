# tic-tac-toe
Tic-Tac-Toe game wirtten in Ruby.

## How to play:
- Clone the repo to your local machine.
- Navigate to the repo's root directory using the console.
- Run the tic_tac_toe.rb file using the following command:
  ruby tic_tac_toe.rb

## Win Detection:
Win detection is done by the board when calling Board#winner. The board is stored as a 2-D array. First, my algorithm checks each row on the board and sends it to the private method #check_line, which does the following:

Board#check_line
- Removes any elements in the array that are equal to a single space (" ").
- If the length of that array is still equal to the number of elements needed to win (3) and the array contains only one type of character, then that character identifies the winning player and it is returned.
- If it fails the previous condition, nil is returned.

If it can't find any wins horizontally, it does the same check vertically by first transposing the board. If there are no vertical wins, then it checks for diagonal wins moving from top to bottom (e.g. \).

Diagonal wins car checked for by iterating through the board and mapping the first element in the first row, then the second element in the second row, then the third element in the third row. This returns an array that that represents a diagonal line, which is then sent to Board#check_line (see above).

Diagonal wins moving from bottom to top (e.g. /) are done in the same manner. The board is simply reversed before doing the same checks.
