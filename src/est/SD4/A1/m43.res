Sat Oct  2 00:02:15 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD4/A1/dat43.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m43.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1497.08070056323        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4826E+02  1.6398E+01 -1.0634E+00  5.1207E+01  5.4725E+01  3.9158E+01  9.9022E+00  4.7806E+00  3.5359E+01 -1.7306E+01
            -3.0512E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1551.97748835529        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.5643E-01  1.0053E+00  9.7947E-01  9.9983E-01  9.8241E-01  9.7455E-01  9.1882E-01  9.3679E-01  7.8283E-01  9.6971E-01
             1.8845E+00
 PARAMETER:  5.5449E-02  1.0531E-01  7.9255E-02  9.9832E-02  8.2252E-02  7.4223E-02  1.5340E-02  3.4708E-02 -1.4484E-01  6.9237E-02
             7.3364E-01
 GRADIENT:   4.1342E+01 -2.0965E+01 -1.7678E+01 -1.0870E+01  2.3236E+01  6.2677E+00 -5.8519E-01  6.5438E+00  4.2358E+00  8.9585E+00
             8.0066E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1558.62982011209        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.5729E-01  8.0914E-01  5.6778E-01  1.1182E+00  6.4250E-01  9.5954E-01  1.4069E+00  3.5301E-01  5.8342E-01  6.4652E-01
             1.7594E+00
 PARAMETER:  5.6355E-02 -1.1178E-01 -4.6602E-01  2.1172E-01 -3.4239E-01  5.8703E-02  4.4141E-01 -9.4127E-01 -4.3886E-01 -3.3616E-01
             6.6499E-01
 GRADIENT:   3.6066E+01  4.3081E+01 -4.7095E+01  1.5239E+02  7.3720E+01 -4.7335E+00  1.8917E+01  2.2542E+00 -1.0775E+01  9.4069E+00
             5.9377E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1570.49367078983        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      338
 NPARAMETR:  9.8956E-01  6.3931E-01  5.4346E-01  1.2184E+00  5.6482E-01  9.8233E-01  1.5182E+00  1.1772E-01  6.9250E-01  6.2166E-01
             1.4983E+00
 PARAMETER:  8.9504E-02 -3.4737E-01 -5.0981E-01  2.9757E-01 -4.7124E-01  8.2170E-02  5.1751E-01 -2.0395E+00 -2.6745E-01 -3.7536E-01
             5.0435E-01
 GRADIENT:  -1.2701E+00  3.1200E+01 -5.6975E+01  1.4037E+02  6.7857E+01 -8.8478E+00  3.6725E+00  2.9522E-01  4.6181E+00  1.7982E+00
            -1.3979E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1581.33295150444        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  9.9324E-01  3.8614E-01  4.2419E-01  1.2575E+00  4.1042E-01  1.0102E+00  1.9323E+00  1.0000E-02  6.5042E-01  5.4175E-01
             1.4629E+00
 PARAMETER:  9.3216E-02 -8.5156E-01 -7.5757E-01  3.2911E-01 -7.9056E-01  1.1016E-01  7.5874E-01 -4.8026E+00 -3.3014E-01 -5.1295E-01
             4.8041E-01
 GRADIENT:   8.3688E+00  1.1500E+01  1.5942E+00  4.3320E+01 -7.3222E+00  1.5868E+00 -1.9043E+00  0.0000E+00  2.9323E+00 -2.6792E+00
             1.0176E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1583.12087598010        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      691
 NPARAMETR:  9.8727E-01  2.5829E-01  4.0811E-01  1.2907E+00  3.7264E-01  1.0107E+00  2.3547E+00  1.0000E-02  6.6165E-01  5.9816E-01
             1.4346E+00
 PARAMETER:  8.7191E-02 -1.2537E+00 -7.9622E-01  3.5520E-01 -8.8714E-01  1.1067E-01  9.5642E-01 -7.1555E+00 -3.1302E-01 -4.1390E-01
             4.6088E-01
 GRADIENT:   1.8148E+00  6.6691E+00  2.4606E+01  1.7091E+00 -3.8593E+01  2.6537E+00 -2.9589E+00  0.0000E+00  7.9001E+00  6.8591E-01
            -3.5501E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1585.48054691825        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      868
 NPARAMETR:  9.7911E-01  1.1456E-01  4.4839E-01  1.3701E+00  3.8405E-01  1.0003E+00  3.9332E+00  1.0000E-02  6.2433E-01  6.1907E-01
             1.4508E+00
 PARAMETER:  7.8889E-02 -2.0667E+00 -7.0209E-01  4.1487E-01 -8.5699E-01  1.0026E-01  1.4695E+00 -1.1294E+01 -3.7108E-01 -3.7953E-01
             4.7214E-01
 GRADIENT:   1.5055E-01  3.7300E-01 -1.6165E+00  5.5017E+00  2.1631E-01  1.6383E-02  8.8350E-01  0.0000E+00  1.2038E+00 -3.2842E+00
            -2.0959E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1585.50368042738        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      960
 NPARAMETR:  9.7913E-01  1.1854E-01  4.5789E-01  1.3717E+00  3.9058E-01  1.0001E+00  3.8879E+00  1.0000E-02  6.2084E-01  6.3164E-01
             1.4551E+00
 PARAMETER:  7.8911E-02 -2.0325E+00 -6.8112E-01  4.1604E-01 -8.4013E-01  1.0012E-01  1.4579E+00 -1.1064E+01 -3.7667E-01 -3.5943E-01
             4.7510E-01
 GRADIENT:   2.1165E-01  3.4712E-01 -1.0153E-01 -1.7125E+00  5.2014E-01  5.6824E-02  6.5929E-01  0.0000E+00 -2.4407E-01 -2.3863E-01
            -1.0903E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      960
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5502E-03  4.3960E-02 -2.9922E-04 -2.5931E-02  1.4291E-02
 SE:             2.9676E-02  1.6118E-02  2.7120E-04  2.6245E-02  2.2356E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5834E-01  6.3855E-03  2.6989E-01  3.2313E-01  5.2266E-01

 ETASHRINKSD(%)  5.8214E-01  4.6002E+01  9.9091E+01  1.2077E+01  2.5105E+01
 ETASHRINKVR(%)  1.1609E+00  7.0842E+01  9.9992E+01  2.2696E+01  4.3908E+01
 EBVSHRINKSD(%)  8.3399E-01  5.9524E+01  9.9009E+01  1.0021E+01  1.9560E+01
 EBVSHRINKVR(%)  1.6610E+00  8.3617E+01  9.9990E+01  1.9038E+01  3.5293E+01
 RELATIVEINF(%)  9.7433E+01  6.9698E+00  3.7316E-04  2.3974E+01  2.5922E+00
 EPSSHRINKSD(%)  4.0412E+01
 EPSSHRINKVR(%)  6.4493E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1585.5036804273770     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -850.35285386363887     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1585.504       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.19E-01  4.58E-01  1.37E+00  3.91E-01  1.00E+00  3.89E+00  1.00E-02  6.21E-01  6.32E-01  1.46E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       11.413
Stop Time:
Sat Oct  2 00:02:28 CDT 2021
