      program blas_dcopy
C     Simple BLAS Copy example
C     Compile with gfortran blas_dcopy.f  -lblas

          integer i, n
          parameter (n = 4)
          real*8 x(n), y(n)

          do i = 1,n
            x(i) = 10*rand()
          enddo

          call DCOPY(n, x, 1, y, 1)

          write (*, *) x
          write (*, *) y
          
          stop
      end program blas_dcopy
