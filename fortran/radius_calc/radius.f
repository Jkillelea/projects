      program radius
C     Calculate the areas of the radii given in file 'inputs'
C     Format of inputs is: ncases [integer], newline, (radius_i [double], newline)*
          implicit none
C         Need to declare the functions like a variable
          real*8             :: area, r
          integer            :: numcases, i
          integer, parameter :: fd = 3

C         Open the file 'radius' and bind it to file descriptor 3
          open(fd, file='inputs', form='formatted')

C         Read number of cases 
          read(fd, '(i8)') numcases

C         Each case
          do i = 1, numcases
            read (fd, 10) r
            write (*, 20) r, area(r)
          enddo

C           Read a single float
10          format(f10.10)
C           Output format
20          format('Radius = ', f5.3, ', Area = ', f8.3)
          stop
      end program radius

C     Function types are weird.
      real*8 function area(r)
          real*8 pi, r
          parameter (pi = 3.14159)

          area = pi*r*r

          return
      end function area
