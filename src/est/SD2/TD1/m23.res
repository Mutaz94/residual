Fri Oct  1 14:06:02 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat23.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2133.18534734502        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3169E+02  5.4551E+01  2.3762E+00  1.1997E+02  8.9186E+00  6.5616E+01  7.9929E+00 -4.5270E+00  2.4735E+01  3.6217E+00
            -8.1486E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2134.84228933268        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      197
 NPARAMETR:  1.0250E+00  1.0136E+00  9.7871E-01  9.6435E-01  1.0002E+00  9.6050E-01  9.7719E-01  1.0356E+00  9.1523E-01  9.7823E-01
             1.0092E+00
 PARAMETER:  1.2465E-01  1.1348E-01  7.8477E-02  6.3703E-02  1.0020E-01  5.9698E-02  7.6927E-02  1.3501E-01  1.1418E-02  7.7985E-02
             1.0917E-01
 GRADIENT:   2.1426E+01 -1.3180E+01  1.7174E+00 -1.6648E+01  3.7226E+00 -3.7033E+00 -1.3788E+00 -3.2034E+00 -2.6484E+00  1.1733E+00
            -1.9949E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2135.25637016033        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0242E+00  1.1854E+00  8.9847E-01  8.7220E-01  1.0326E+00  9.7748E-01  9.2793E-01  1.1586E+00  9.6941E-01  9.5371E-01
             1.0145E+00
 PARAMETER:  1.2388E-01  2.7011E-01 -7.0632E-03 -3.6742E-02  1.3208E-01  7.7225E-02  2.5201E-02  2.4718E-01  6.8937E-02  5.2608E-02
             1.1443E-01
 GRADIENT:   1.5044E+01  1.2678E+01  3.7749E+00  8.0275E+00 -5.4918E+00  2.4579E+00  1.3316E+00  1.9361E-01 -2.5290E+00 -1.3905E+00
             2.5001E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2135.50686896593        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      556
 NPARAMETR:  1.0157E+00  1.2331E+00  7.7494E-01  8.3088E-01  9.9978E-01  9.7089E-01  8.9314E-01  9.8457E-01  1.0178E+00  9.3623E-01
             1.0078E+00
 PARAMETER:  1.1562E-01  3.0953E-01 -1.5497E-01 -8.5268E-02  9.9784E-02  7.0459E-02 -1.3015E-02  8.4445E-02  1.1760E-01  3.4106E-02
             1.0779E-01
 GRADIENT:  -6.4094E+00  2.6918E+00  4.4544E-01  3.7331E+00 -2.3730E+00 -6.4339E-01  8.8334E-01 -1.9272E-01  9.1722E-01  6.4231E-01
            -1.3546E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2135.61139045240        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      735             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0203E+00  1.3673E+00  6.9121E-01  7.4171E-01  1.0351E+00  9.7395E-01  8.3197E-01  9.7110E-01  1.0968E+00  9.5123E-01
             1.0100E+00
 PARAMETER:  1.2013E-01  4.1284E-01 -2.6931E-01 -1.9880E-01  1.3450E-01  7.3602E-02 -8.3962E-02  7.0670E-02  1.9241E-01  4.9998E-02
             1.0998E-01
 GRADIENT:   5.5380E+02  3.1481E+02  3.1651E+00  1.0139E+02  1.0329E+01  5.1939E+01  4.9454E+00  2.7631E-01  9.9878E+00  1.1703E+00
             1.5086E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2135.61266478223        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      917             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0205E+00  1.3673E+00  6.9142E-01  7.4122E-01  1.0349E+00  9.7392E-01  8.3140E-01  9.7235E-01  1.0954E+00  9.4924E-01
             1.0097E+00
 PARAMETER:  1.2031E-01  4.1282E-01 -2.6901E-01 -1.9946E-01  1.3429E-01  7.3572E-02 -8.4649E-02  7.1959E-02  1.9114E-01  4.7904E-02
             1.0968E-01
 GRADIENT:   5.5539E+02  3.1466E+02  3.5741E+00  1.0076E+02  9.9311E+00  5.1932E+01  4.7830E+00  2.3338E-01  9.5883E+00  8.7098E-01
             1.2073E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2135.61312763520        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1102             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0205E+00  1.3675E+00  6.9142E-01  7.4148E-01  1.0348E+00  9.7392E-01  8.3084E-01  9.6992E-01  1.0951E+00  9.4857E-01
             1.0097E+00
 PARAMETER:  1.2031E-01  4.1298E-01 -2.6900E-01 -1.9910E-01  1.3425E-01  7.3569E-02 -8.5319E-02  6.9461E-02  1.9085E-01  4.7198E-02
             1.0963E-01
 GRADIENT:   5.5540E+02  3.1554E+02  3.6998E+00  1.0111E+02  9.9782E+00  5.1936E+01  4.6604E+00  1.4992E-01  9.4773E+00  7.1093E-01
             1.1040E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -2135.61314583859        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1236
 NPARAMETR:  1.0205E+00  1.3675E+00  6.9152E-01  7.4152E-01  1.0347E+00  9.7392E-01  8.3083E-01  9.6892E-01  1.0950E+00  9.4845E-01
             1.0097E+00
 PARAMETER:  1.2031E-01  4.1296E-01 -2.6886E-01 -1.9906E-01  1.3410E-01  7.3571E-02 -8.5333E-02  6.8424E-02  1.9073E-01  4.7072E-02
             1.0962E-01
 GRADIENT:   1.0046E-03  2.3263E-01  1.1487E-01 -1.2849E-01 -3.2089E-02  3.7722E-04 -1.4604E-02 -9.1152E-03 -1.0105E-02 -4.0889E-03
            -1.4306E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1236
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1979E-04 -2.3433E-02 -2.6055E-02  1.6305E-02 -3.4477E-02
 SE:             2.9892E-02  2.1448E-02  1.1766E-02  2.4138E-02  2.1829E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8880E-01  2.7459E-01  2.6802E-02  4.9937E-01  1.1424E-01

 ETASHRINKSD(%)  1.0000E-10  2.8147E+01  6.0581E+01  1.9135E+01  2.6869E+01
 ETASHRINKVR(%)  1.0000E-10  4.8372E+01  8.4461E+01  3.4609E+01  4.6519E+01
 EBVSHRINKSD(%)  3.4569E-01  2.7873E+01  6.3710E+01  2.0269E+01  2.4879E+01
 EBVSHRINKVR(%)  6.9018E-01  4.7977E+01  8.6831E+01  3.6430E+01  4.3569E+01
 RELATIVEINF(%)  9.9054E+01  2.8201E+00  1.6580E+00  3.7398E+00  1.0580E+01
 EPSSHRINKSD(%)  3.4385E+01
 EPSSHRINKVR(%)  5.6946E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2135.6131458385894     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1216.6746126339167     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2135.613       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.37E+00  6.92E-01  7.42E-01  1.03E+00  9.74E-01  8.31E-01  9.69E-01  1.09E+00  9.48E-01  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.830
Stop Time:
Fri Oct  1 14:06:23 CDT 2021
