!*********************************************************************
! Program: CheckIfNumeric
! Author: Anagnostakis Ioannis
! Date: 21/05/2024
! Description:
!   This program checks if a given input string is a valid number.
!   It reads a string from the user, and uses a function from a module
!   to determine if the string can be interpreted as a numeric value.
!   If the string is numeric, the program prints a confirmation message.
!   Otherwise, it indicates that the string is not a valid number.
!   Use it for satisfy any app depent isnum ...
!*********************************************************************

module Utilities
    implicit none
contains
    logical function is_numeric(str)
        character(len=*), intent(in) :: str
        integer :: ios
        real :: test_num

        ! Try reading the string as a real number
        read(str, '(F20.10)', iostat=ios) test_num
        is_numeric = (ios == 0)
    end function is_numeric
end module Utilities

program CheckIfNumeric
    use Utilities
    implicit none
    character(len=100) :: input_str
    logical :: result

    ! Print instructions to the user
    print *, "Welcome to the number checker!"
    print *, "Enter a string to check if it's a number:"

    ! Read input from the user
    read(*, '(A)') input_str

    ! Call the is_numeric function
    result = is_numeric(trim(input_str))

    ! Print the result
    if (result) then
        print *, "The input is a valid number."
    else
        print *, "The input is not a valid number."
    end if
end program CheckIfNumeric
