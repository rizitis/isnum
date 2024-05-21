isnum

![](https://github.com/rizitis/isnum/blob/main/isnum_double_size.gif)



# Compile Install
`gfortran -o isnum CheckIfNumeric.f90` 

`mv isnum /usr/loca/bin/`

`chmod +x /usr/local/isnum`

## Install precompiled
[isnum](https://github.com/rizitis/isnum/releases)

`chmod +x /usr/local/isnum`

## Explanation:

    Check Number of Arguments:
        The program checks if exactly one argument is provided. If not, it prints the usage message and stops.

    Retrieve the Command-Line Argument:
        The program uses get_command_argument(1, input_str) to get the first command-line argument (the string to check).

    Use the Retrieved Argument:
        The retrieved argument is then passed to the is_numeric function to check if it is a valid number.

### USE
Use it for satisfy any action depents isnum...
