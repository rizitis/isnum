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

