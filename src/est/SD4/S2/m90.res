Sat Oct  2 04:10:50 CDT 2021
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
$DATA ../../../../data/SD4/S2/dat90.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1627.19444633873        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6164E+02 -4.2476E+00 -2.0216E+01  3.9867E+01  5.7833E+01  3.0508E+01  6.9548E-01  1.4431E+00  5.7224E-01 -3.5513E+00
            -2.7717E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1629.96182076347        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.8048E-01  1.0171E+00  1.0087E+00  1.0129E+00  9.7559E-01  1.0113E+00  1.0032E+00  9.9867E-01  1.0169E+00  9.9947E-01
             1.0597E+00
 PARAMETER:  8.0291E-02  1.1694E-01  1.0870E-01  1.1281E-01  7.5291E-02  1.1124E-01  1.0322E-01  9.8668E-02  1.1679E-01  9.9470E-02
             1.5802E-01
 GRADIENT:  -1.1166E+00 -4.2624E+00 -3.8551E+00 -4.0517E-01  6.7943E+00 -7.0123E-01 -1.4448E-01  8.7320E-01 -2.1404E+00  1.0771E+00
            -2.2465E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1630.07629713431        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  9.8281E-01  1.1613E+00  8.7150E-01  9.2522E-01  9.6139E-01  9.9953E-01  9.3382E-01  9.2743E-01  1.0989E+00  9.4412E-01
             1.0602E+00
 PARAMETER:  8.2662E-02  2.4956E-01 -3.7541E-02  2.2279E-02  6.0630E-02  9.9528E-02  3.1530E-02  2.4659E-02  1.9431E-01  4.2494E-02
             1.5849E-01
 GRADIENT:   8.8354E-01  1.0928E+01  2.7021E+00  1.1568E+01 -9.1663E+00 -6.0143E+00 -5.6781E-01  7.9482E-01  1.3482E+00 -1.4221E+00
            -2.3968E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1630.34298921530        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.8307E-01  1.2628E+00  7.8843E-01  8.5505E-01  9.7304E-01  1.0280E+00  9.1361E-01  8.1436E-01  1.1374E+00  9.5331E-01
             1.0675E+00
 PARAMETER:  8.2925E-02  3.3334E-01 -1.3771E-01 -5.6600E-02  7.2670E-02  1.2766E-01  9.6488E-03 -1.0535E-01  2.2877E-01  5.2190E-02
             1.6536E-01
 GRADIENT:  -8.6288E-05  1.1314E+01  3.7879E+00  6.7206E+00 -9.3354E+00  4.8908E+00  9.7428E-01 -3.7397E-02 -9.3313E-01  2.7448E-01
             7.7576E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1630.84221887057        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.8436E-01  1.5780E+00  5.5704E-01  6.4475E-01  1.0258E+00  1.0092E+00  7.9837E-01  5.7980E-01  1.3657E+00  9.5166E-01
             1.0644E+00
 PARAMETER:  8.4236E-02  5.5616E-01 -4.8512E-01 -3.3889E-01  1.2544E-01  1.0912E-01 -1.2518E-01 -4.4508E-01  4.1170E-01  5.0448E-02
             1.6243E-01
 GRADIENT:   5.4466E-01  1.6343E+01  2.8146E+00  7.3289E+00 -9.5293E+00 -2.8068E+00 -3.7502E-01  2.4312E-01 -1.6147E-01 -2.3078E-02
            -7.4854E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1631.02074384022        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.8407E-01  1.7789E+00  4.2051E-01  5.0899E-01  1.0793E+00  1.0148E+00  7.4557E-01  3.7825E-01  1.5668E+00  9.6286E-01
             1.0647E+00
 PARAMETER:  8.3943E-02  6.7601E-01 -7.6629E-01 -5.7533E-01  1.7628E-01  1.1468E-01 -1.9360E-01 -8.7220E-01  5.4902E-01  6.2152E-02
             1.6267E-01
 GRADIENT:  -1.4701E-01  1.3411E+01  4.9667E-01  6.7721E+00 -3.5685E+00 -5.6299E-01 -7.9817E-01  2.7359E-01 -3.5624E-01 -4.9297E-01
            -6.4711E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1631.20484815650        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  9.8416E-01  1.8147E+00  3.9356E-01  4.7410E-01  1.0958E+00  1.0162E+00  7.3922E-01  1.2111E-01  1.6277E+00  9.7463E-01
             1.0658E+00
 PARAMETER:  8.4038E-02  6.9590E-01 -8.3253E-01 -6.4634E-01  1.9149E-01  1.1604E-01 -2.0216E-01 -2.0110E+00  5.8716E-01  7.4303E-02
             1.6375E-01
 GRADIENT:   3.9208E-01 -6.3752E+00  6.7582E-01 -1.3087E+00 -1.3798E+00  6.0792E-02  2.1459E-01  3.0871E-02 -4.5638E-01  1.3379E-01
             2.2102E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1631.22358371218        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1249             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8466E-01  1.8135E+00  3.9219E-01  4.7403E-01  1.0959E+00  1.0163E+00  7.3836E-01  1.6629E-02  1.6323E+00  9.7399E-01
             1.0652E+00
 PARAMETER:  8.4539E-02  6.9528E-01 -8.3602E-01 -6.4647E-01  1.9154E-01  1.1620E-01 -2.0333E-01 -3.9966E+00  5.9001E-01  7.3642E-02
             1.6314E-01
 GRADIENT:   3.7641E+02  6.9219E+02  4.8298E+00  9.4086E+01  1.2440E+01  4.1248E+01  1.3354E+01  1.1646E-03  2.2441E+01  7.5836E-01
             1.3650E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1631.22472659762        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.8466E-01  1.8112E+00  3.9275E-01  4.7491E-01  1.0934E+00  1.0164E+00  7.3870E-01  1.0000E-02  1.6280E+00  9.7289E-01
             1.0652E+00
 PARAMETER:  8.4543E-02  6.9401E-01 -8.3459E-01 -6.4463E-01  1.8932E-01  1.1624E-01 -2.0286E-01 -4.9434E+00  5.8736E-01  7.2520E-02
             1.6313E-01
 GRADIENT:   1.5237E+00 -9.0177E+00  5.2729E-01 -1.8901E+00 -1.2377E+00  1.3886E-01  3.1001E-02  0.0000E+00 -9.6726E-02  2.4372E-01
             8.0383E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1631.22566671917        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1617
 NPARAMETR:  9.8491E-01  1.8108E+00  3.9107E-01  4.7593E-01  1.0941E+00  1.0163E+00  7.3896E-01  1.0000E-02  1.6294E+00  9.7153E-01
             1.0651E+00
 PARAMETER:  8.4790E-02  6.9377E-01 -8.3886E-01 -6.4248E-01  1.8989E-01  1.1621E-01 -2.0252E-01 -4.9434E+00  5.8820E-01  7.1112E-02
             1.6310E-01
 GRADIENT:   2.0212E+00 -1.0174E+01 -7.0203E-01 -4.3276E-02  2.0119E+00  1.1539E-01  1.1889E-01  0.0000E+00  4.5389E-01  1.1592E-01
             1.5189E-01

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1631.22566671917        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1645
 NPARAMETR:  9.8468E-01  1.8114E+00  3.9278E-01  4.7575E-01  1.0920E+00  1.0163E+00  7.3872E-01  1.0000E-02  1.6265E+00  9.7064E-01
             1.0648E+00
 PARAMETER:  8.4790E-02  6.9377E-01 -8.3886E-01 -6.4248E-01  1.8989E-01  1.1621E-01 -2.0252E-01 -4.9434E+00  5.8820E-01  7.1112E-02
             1.6310E-01
 GRADIENT:   5.6460E-01 -1.0060E+00 -3.7315E-01  2.2131E-01  1.4181E+00  2.8911E-03  7.0512E-02  0.0000E+00  3.5504E-01  7.7431E-02
             1.5311E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1645
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.3148E-05 -3.5544E-02 -2.4282E-04  3.1760E-02 -4.2051E-02
 SE:             2.9840E-02  2.3965E-02  8.7159E-05  2.3178E-02  2.1823E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9965E-01  1.3803E-01  5.3364E-03  1.7061E-01  5.3993E-02

 ETASHRINKSD(%)  3.3337E-02  1.9715E+01  9.9708E+01  2.2349E+01  2.6889E+01
 ETASHRINKVR(%)  6.6662E-02  3.5543E+01  9.9999E+01  3.9704E+01  4.6547E+01
 EBVSHRINKSD(%)  4.7042E-01  1.9371E+01  9.9740E+01  2.3577E+01  2.5336E+01
 EBVSHRINKVR(%)  9.3863E-01  3.4990E+01  9.9999E+01  4.1595E+01  4.4253E+01
 RELATIVEINF(%)  9.9017E+01  5.3706E+00  7.3336E-05  4.6986E+00  1.2415E+01
 EPSSHRINKSD(%)  4.4836E+01
 EPSSHRINKVR(%)  6.9570E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1631.2256667191673     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -896.07484015542911     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1631.226       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.85E-01  1.81E+00  3.91E-01  4.76E-01  1.09E+00  1.02E+00  7.39E-01  1.00E-02  1.63E+00  9.72E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.722
Stop Time:
Sat Oct  2 04:11:13 CDT 2021
