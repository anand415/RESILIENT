		MODULE MAIN2
        IMPLICIT NONE
        INTEGER, PARAMETER ::  nobs=13  
       real  :: mse(2)
       
       DOUBLE PRECISION :: evd(nobs),errr(nobs)
       integer :: indx_evd(nobs),my_id,jhh
        CHARACTER*30 filname,bfilnam
        integer :: hh,kk,lng,ind,ii,itt
      LOGICAL :: exiist
      character*39 filnam,filnam1
      real :: sim_sel(nobs)


        
       
        DATA indx_evd /
     &   197,559,1037,900,890,980,784,1314,1559,1515,1235,1148,359/
            END MODULE MAIN2
