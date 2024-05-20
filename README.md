isnum

![](https://github.com/rizitis/isnum/blob/main/isnum_2.gif)



# Compile Install
`gfortran -o isnum isnum.f90` 

`mv isnum /usr/loca/bin/`

## Install precompiled
[isnum](https://github.com/rizitis/isnum/releases)


## Explanation:

    Module Definition:
        Utilities module contains the is_numeric function to encapsulate reusable code.
        The is_numeric function checks if the input string is a valid number.

    Function Logic:
        is_numeric reads the input string and attempts to convert it to a real number.
        If the conversion is successful (ios == 0), the function returns .true..
        If the conversion fails, the function returns .false..

    Main Program:
        The main program CheckIfNumeric uses the Utilities module.
        It prompts the user for input and reads the input string.
        It trims the input string and calls is_numeric to check if it is a number.
        Based on the result, it prints an appropriate message.
