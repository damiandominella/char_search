#include <stdio.h>
#include <string.h>

/* Function declaration */

/* Search a char in a string, and return its position (-1 if not found) */
int search(char string[], char ch);

/* Main function */
int main() {

    char string[] = "Uniurb";
    char ch = 'r';

    int position = search(string, ch);

    if (position == -1) {
        printf("Char: %c not found in string %s\n", ch, string);
    } else {
        printf("Char: %c found in position %d of string: %s\n", ch, position + 1, string);
    }

    return 0;
}

/* Function implementation */
int search(char string[], char ch) {
    int i = 0;

    for (i=0; i < strlen(string); i++) {
        if (ch == string[i]) {
            return i;
        }
    }

    return -1;
}