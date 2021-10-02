Sat Oct  2 04:23:29 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat32.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m32.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1707.65269980214        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5264E+02 -2.0586E+01 -7.2660E-01 -4.2210E-01  4.4412E+01  8.4016E+01  9.4276E+00 -1.9073E+00  2.0102E+01  4.9567E+00
            -4.0611E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1715.69506072663        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0464E+00  1.0092E+00  9.1917E-01  1.0553E+00  9.3434E-01  8.7594E-01  9.3501E-01  1.0226E+00  8.9265E-01  9.2338E-01
             1.0177E+00
 PARAMETER:  1.4535E-01  1.0917E-01  1.5713E-02  1.5379E-01  3.2082E-02 -3.2462E-02  3.2802E-02  1.2236E-01 -1.3565E-02  2.0290E-02
             1.1751E-01
 GRADIENT:   2.2653E+01  8.7524E+00 -9.2523E+00  2.5887E+01  2.0128E+01 -7.9101E+00 -1.3643E+00  1.8918E+00 -5.1003E+00  4.0626E+00
             9.9123E-03

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1717.03887996543        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0478E+00  1.0214E+00  7.0627E-01  1.0202E+00  8.0439E-01  8.8611E-01  1.1305E+00  7.5077E-01  8.4876E-01  7.3944E-01
             9.9121E-01
 PARAMETER:  1.4666E-01  1.2120E-01 -2.4776E-01  1.1998E-01 -1.1767E-01 -2.0917E-02  2.2263E-01 -1.8665E-01 -6.3975E-02 -2.0186E-01
             9.1173E-02
 GRADIENT:   2.1556E+01  1.8183E+01  2.4646E+00  5.8931E+00 -1.9430E+00 -4.2086E+00  8.9846E+00  2.2085E+00 -5.1456E+00  2.9611E-01
            -1.0260E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1719.01435177726        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  1.0388E+00  9.0957E-01  5.7247E-01  1.0524E+00  6.7825E-01  8.9728E-01  1.1421E+00  3.7263E-01  8.3232E-01  6.4435E-01
             1.0150E+00
 PARAMETER:  1.3805E-01  5.2122E-03 -4.5780E-01  1.5108E-01 -2.8824E-01 -8.3859E-03  2.3286E-01 -8.8717E-01 -8.3537E-02 -3.3951E-01
             1.1492E-01
 GRADIENT:  -6.2985E+00 -9.2912E-01  9.0422E-01 -2.6203E+00 -1.2042E+00  5.4934E-01 -1.6195E+00  5.2937E-01  7.5833E-02 -2.9100E-01
             1.1458E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1719.14176031079        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      721
 NPARAMETR:  1.0412E+00  8.4116E-01  5.6299E-01  1.0874E+00  6.4646E-01  8.9583E-01  1.2366E+00  2.7872E-01  8.0733E-01  6.3776E-01
             1.0129E+00
 PARAMETER:  1.4033E-01 -7.2975E-02 -4.7450E-01  1.8378E-01 -3.3625E-01 -1.0004E-02  3.1234E-01 -1.1775E+00 -1.1402E-01 -3.4979E-01
             1.1285E-01
 GRADIENT:   6.5363E-02 -1.6739E+00 -1.0879E+00 -1.5600E+00  1.0317E+00  3.8837E-02  1.8813E-01  1.5006E-01  3.7682E-01  5.4277E-01
             3.9972E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1719.20781435874        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  1.0415E+00  9.1099E-01  5.2464E-01  1.0414E+00  6.4913E-01  8.9635E-01  1.1536E+00  1.3681E-01  8.3193E-01  6.2118E-01
             1.0123E+00
 PARAMETER:  1.4064E-01  6.7753E-03 -5.4505E-01  1.4054E-01 -3.3212E-01 -9.4229E-03  2.4287E-01 -1.8892E+00 -8.4002E-02 -3.7614E-01
             1.1227E-01
 GRADIENT:   9.7611E-02 -4.3552E-01 -1.2537E+00  2.0118E-01  7.8782E-01 -5.3573E-02  1.4086E-01  4.4693E-02  3.1294E-01  2.9653E-01
             4.3031E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1719.21897095304        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1073
 NPARAMETR:  1.0415E+00  9.1491E-01  5.2205E-01  1.0388E+00  6.4902E-01  8.9646E-01  1.1492E+00  5.1524E-02  8.3303E-01  6.2203E-01
             1.0126E+00
 PARAMETER:  1.4062E-01  1.1069E-02 -5.5000E-01  1.3803E-01 -3.3230E-01 -9.3052E-03  2.3903E-01 -2.8657E+00 -8.2683E-02 -3.7477E-01
             1.1254E-01
 GRADIENT:  -2.5392E-03  1.7513E-01  7.5582E-02  1.4856E-01 -2.2730E-01 -1.9982E-02  2.4082E-03  2.8991E-03  3.6068E-02 -7.5870E-03
            -1.5160E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1719.22168082913        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1250
 NPARAMETR:  1.0428E+00  9.1819E-01  5.2104E-01  1.0365E+00  6.4974E-01  8.9678E-01  1.1456E+00  1.0000E-02  8.3422E-01  6.2226E-01
             1.0126E+00
 PARAMETER:  1.4194E-01  1.4654E-02 -5.5193E-01  1.3587E-01 -3.3118E-01 -8.9397E-03  2.3590E-01 -5.4018E+00 -8.1262E-02 -3.7439E-01
             1.1255E-01
 GRADIENT:   3.6592E+00  2.9003E-02  2.6760E-01 -4.3311E-01 -3.5422E-01  1.1722E-01  6.2381E-03  0.0000E+00 -4.2246E-03 -4.2307E-03
            -3.6354E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1719.22168082913        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1272
 NPARAMETR:  1.0428E+00  9.1819E-01  5.2104E-01  1.0365E+00  6.4974E-01  8.9678E-01  1.1456E+00  1.0000E-02  8.3422E-01  6.2226E-01
             1.0126E+00
 PARAMETER:  1.4194E-01  1.4654E-02 -5.5193E-01  1.3587E-01 -3.3118E-01 -8.9397E-03  2.3590E-01 -5.4018E+00 -8.1262E-02 -3.7439E-01
             1.1255E-01
 GRADIENT:   3.6592E+00  2.9003E-02  2.6760E-01 -4.3311E-01 -3.5422E-01  1.1722E-01  6.2381E-03  0.0000E+00 -4.2246E-03 -4.2307E-03
            -3.6354E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1272
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.8364E-04  2.4844E-03 -4.9260E-04 -3.3368E-03 -3.8754E-03
 SE:             2.9826E-02  2.2633E-02  2.2742E-04  2.5901E-02  2.0701E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9509E-01  9.1259E-01  3.0308E-02  8.9749E-01  8.5150E-01

 ETASHRINKSD(%)  7.7543E-02  2.4178E+01  9.9238E+01  1.3229E+01  3.0647E+01
 ETASHRINKVR(%)  1.5503E-01  4.2510E+01  9.9994E+01  2.4708E+01  5.1902E+01
 EBVSHRINKSD(%)  5.1892E-01  2.3614E+01  9.9310E+01  1.3326E+01  3.1238E+01
 EBVSHRINKVR(%)  1.0351E+00  4.1652E+01  9.9995E+01  2.4877E+01  5.2717E+01
 RELATIVEINF(%)  9.8915E+01  4.3233E+00  3.9242E-04  8.3151E+00  2.4381E+00
 EPSSHRINKSD(%)  4.4372E+01
 EPSSHRINKVR(%)  6.9056E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1719.2216808291287     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -984.07085426539049     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1719.222       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  9.18E-01  5.21E-01  1.04E+00  6.50E-01  8.97E-01  1.15E+00  1.00E-02  8.34E-01  6.22E-01  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.017
Stop Time:
Sat Oct  2 04:23:46 CDT 2021