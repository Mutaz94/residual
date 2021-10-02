Fri Oct  1 00:23:26 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat8.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m8.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2837.88162160170        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8869E+02  9.6108E+01  1.7963E+02  1.5656E+02  2.0478E+02  3.6594E+01 -6.8992E+01 -6.9851E+01  7.6732E+00 -3.8134E+01
            -1.8317E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3271.76376862896        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0319E+00  8.1693E-01  6.9568E-01  1.1231E+00  6.9883E-01  1.0186E+00  1.0896E+00  8.8693E-01  9.6847E-01  8.4198E-01
             1.5403E+00
 PARAMETER:  1.3141E-01 -1.0220E-01 -2.6287E-01  2.1608E-01 -2.5834E-01  1.1847E-01  1.8584E-01 -1.9994E-02  6.7963E-02 -7.1999E-02
             5.3201E-01
 GRADIENT:   3.4309E+02  8.8802E+01  4.8081E+01  1.9539E+02  3.6592E+01  1.9773E+01 -9.0079E+00  1.8303E+01 -6.6623E-01  9.3648E+00
            -1.5032E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3275.31281814201        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      223
 NPARAMETR:  1.0295E+00  8.2420E-01  6.7941E-01  1.1318E+00  7.1068E-01  1.0928E+00  1.1675E+00  7.7545E-01  1.0042E+00  7.9127E-01
             1.5603E+00
 PARAMETER:  1.2905E-01 -9.3348E-02 -2.8653E-01  2.2381E-01 -2.4153E-01  1.8877E-01  2.5482E-01 -1.5431E-01  1.0415E-01 -1.3411E-01
             5.4486E-01
 GRADIENT:   8.5859E+01  5.6400E+01  9.0567E+00  1.1266E+02  1.1478E+01  2.7508E+01 -5.1470E+00  1.2378E+01  3.4545E+00  2.4405E+00
            -1.3128E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3290.87532561180        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      401
 NPARAMETR:  9.9973E-01  6.7964E-01  5.7142E-01  1.1953E+00  5.9322E-01  1.0065E+00  1.2287E+00  4.5238E-01  9.7958E-01  7.1412E-01
             1.5952E+00
 PARAMETER:  9.9725E-02 -2.8620E-01 -4.5963E-01  2.7839E-01 -4.2219E-01  1.0648E-01  3.0595E-01 -6.9323E-01  7.9373E-02 -2.3670E-01
             5.6701E-01
 GRADIENT:   3.6490E+01  2.8615E+01  1.4646E+01  1.4428E+02  1.8838E+01  1.4410E+00 -3.8332E+00  3.1769E+00 -8.5230E+00  4.9192E-01
            -5.8641E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3305.22729969656        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  9.8183E-01  4.6586E-01  3.8383E-01  1.1574E+00  4.0635E-01  9.9848E-01  1.2937E+00  1.4161E-01  1.0198E+00  6.5232E-01
             1.5903E+00
 PARAMETER:  8.1661E-02 -6.6388E-01 -8.5757E-01  2.4615E-01 -8.0053E-01  9.8478E-02  3.5751E-01 -1.8547E+00  1.1960E-01 -3.2722E-01
             5.6395E-01
 GRADIENT:  -1.1580E-01 -2.2762E+00  1.4853E+01  1.7598E+01 -1.4607E+01 -5.6173E-01 -3.2585E+00  9.4664E-03  2.3688E+00 -4.6860E+00
            -7.6192E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3305.46876311391        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      755            RESET HESSIAN, TYPE II
 NPARAMETR:  9.8233E-01  4.6862E-01  3.8311E-01  1.1463E+00  4.0728E-01  9.9990E-01  1.3105E+00  8.0742E-02  1.0137E+00  6.6834E-01
             1.5941E+00
 PARAMETER:  8.2176E-02 -6.5795E-01 -8.5942E-01  2.3652E-01 -7.9826E-01  9.9897E-02  3.7041E-01 -2.4165E+00  1.1365E-01 -3.0296E-01
             5.6632E-01
 GRADIENT:   1.6030E+02  1.1038E+02  6.9324E+01  1.1865E+02  2.9832E+02  1.5053E+01  9.5097E+00  1.2395E-01  6.7444E+00  3.5295E+00
             8.3978E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3305.48055809241        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      932
 NPARAMETR:  9.8181E-01  4.6776E-01  3.8311E-01  1.1470E+00  4.0789E-01  9.9955E-01  1.3057E+00  4.6125E-02  1.0128E+00  6.7552E-01
             1.5958E+00
 PARAMETER:  8.1640E-02 -6.5980E-01 -8.5944E-01  2.3717E-01 -7.9676E-01  9.9550E-02  3.6676E-01 -2.9764E+00  1.1270E-01 -2.9227E-01
             5.6737E-01
 GRADIENT:  -2.3486E-01 -4.3822E-01 -3.1745E-01  2.9806E-01  3.7066E-01 -2.9620E-02 -1.7357E-01  8.2827E-03 -7.3291E-02  3.8551E-01
             3.8849E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3305.48410925539        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1099
 NPARAMETR:  9.8213E-01  4.6859E-01  3.8349E-01  1.1466E+00  4.0789E-01  9.9970E-01  1.3071E+00  1.0000E-02  1.0129E+00  6.7474E-01
             1.5958E+00
 PARAMETER:  8.1973E-02 -6.5802E-01 -8.5844E-01  2.3678E-01 -7.9676E-01  9.9701E-02  3.6779E-01 -4.6618E+00  1.1283E-01 -2.9342E-01
             5.6737E-01
 GRADIENT:   5.1197E-01  1.0528E+00  1.7007E+00 -6.1451E-01 -3.1468E+00  3.4175E-02  8.0473E-02  0.0000E+00  3.3679E-02 -3.8105E-02
            -1.3180E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1099
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.8303E-04 -4.4145E-03 -1.5152E-04 -1.3338E-03 -6.0151E-03
 SE:             2.9730E-02  2.5142E-02  3.2345E-04  2.9078E-02  2.4878E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7899E-01  8.6062E-01  6.3945E-01  9.6341E-01  8.0895E-01

 ETASHRINKSD(%)  4.0178E-01  1.5771E+01  9.8916E+01  2.5844E+00  1.6655E+01
 ETASHRINKVR(%)  8.0194E-01  2.9054E+01  9.9988E+01  5.1021E+00  3.0537E+01
 EBVSHRINKSD(%)  6.6281E-01  1.4224E+01  9.8927E+01  2.5699E+00  1.7810E+01
 EBVSHRINKVR(%)  1.3212E+00  2.6425E+01  9.9988E+01  5.0737E+00  3.2448E+01
 RELATIVEINF(%)  9.8667E+01  2.2327E+01  1.3715E-03  9.4065E+01  7.1857E+00
 EPSSHRINKSD(%)  2.0195E+01
 EPSSHRINKVR(%)  3.6311E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3305.4841092553861     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1651.3947494869753     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.82
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3305.484       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  4.69E-01  3.83E-01  1.15E+00  4.08E-01  1.00E+00  1.31E+00  1.00E-02  1.01E+00  6.75E-01  1.60E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.876
Stop Time:
Fri Oct  1 00:23:56 CDT 2021
