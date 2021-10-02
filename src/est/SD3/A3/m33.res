Fri Oct  1 18:12:54 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat33.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m33.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   319.640532089356        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3271E+02  1.5671E+02  2.3857E+02 -1.9829E+01  2.2831E+02  4.7518E+01 -1.1420E+02 -2.2371E+02 -1.2167E+02 -1.2763E+02
            -4.8539E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1542.50431211508        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0223E+00  9.7878E-01  9.0117E-01  1.1886E+00  8.7750E-01  7.8190E-01  1.0030E+00  9.7844E-01  1.0179E+00  9.1088E-01
             5.6875E+00
 PARAMETER:  1.2202E-01  7.8551E-02 -4.0565E-03  2.7274E-01 -3.0676E-02 -1.4602E-01  1.0304E-01  7.8203E-02  1.1772E-01  6.6507E-03
             1.8383E+00
 GRADIENT:   6.7005E+01  1.1373E+01 -1.4882E+01  4.5507E+01 -1.2620E+00 -1.7360E+01  9.7155E+00  7.6414E+00  1.7897E+01  2.3986E+01
             4.6420E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1616.08311924988        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.6196E-01  4.5383E-01  2.8341E-01  1.4340E+00  3.1131E-01  7.9934E-01  1.2382E+00  1.0962E-01  1.7582E+00  3.9693E-01
             4.3546E+00
 PARAMETER:  6.1221E-02 -6.9004E-01 -1.1609E+00  4.6044E-01 -1.0670E+00 -1.2397E-01  3.1363E-01 -2.1108E+00  6.6431E-01 -8.2400E-01
             1.5712E+00
 GRADIENT:  -1.9114E+01  1.0202E+02  6.5874E+01  1.3853E+02 -1.0026E+02 -2.1487E+01 -1.1245E+01  1.1547E-02  6.6592E+01 -5.8363E+00
             3.2470E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1696.99240684719        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      273
 NPARAMETR:  9.0730E-01  3.3407E-01  2.3247E-01  1.3623E+00  2.5874E-01  8.5292E-01  1.8677E+00  1.0000E-02  1.6415E+00  4.4819E-01
             3.1979E+00
 PARAMETER:  2.7135E-03 -9.9641E-01 -1.3590E+00  4.0915E-01 -1.2519E+00 -5.9086E-02  7.2469E-01 -6.2191E+00  5.9562E-01 -7.0253E-01
             1.2625E+00
 GRADIENT:  -1.3699E+02  5.1314E+01  2.7041E+01  1.3268E+02 -9.4478E+01 -1.7585E+01  2.3301E+01  0.0000E+00  3.2983E+01 -4.9458E+00
             9.6689E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1732.10123523565        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      451
 NPARAMETR:  9.4526E-01  2.9219E-01  2.1521E-01  1.1336E+00  2.4534E-01  8.6918E-01  1.1787E+00  1.0000E-02  1.3255E+00  6.9092E-01
             2.8421E+00
 PARAMETER:  4.3702E-02 -1.1304E+00 -1.4361E+00  2.2540E-01 -1.3051E+00 -4.0206E-02  2.6443E-01 -1.0383E+01  3.8179E-01 -2.6973E-01
             1.1445E+00
 GRADIENT:  -1.2519E+01  3.4099E+00 -4.4147E+00  1.9450E+01  1.8007E+01 -3.7351E+00 -6.6386E-02  0.0000E+00 -3.0555E+00  1.2590E+00
            -2.1607E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1734.90218715535        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      628
 NPARAMETR:  9.5109E-01  2.4246E-01  1.6488E-01  1.0281E+00  2.0172E-01  8.7824E-01  8.6690E-01  1.0000E-02  1.4544E+00  7.6145E-01
             2.8771E+00
 PARAMETER:  4.9853E-02 -1.3169E+00 -1.7025E+00  1.2766E-01 -1.5009E+00 -2.9841E-02 -4.2829E-02 -1.2457E+01  4.7457E-01 -1.7253E-01
             1.1568E+00
 GRADIENT:   5.2669E-01 -8.1864E-01 -1.3969E+00 -6.0974E-02  1.8623E+00  6.0653E-01  2.2833E-01  0.0000E+00 -1.0193E-01  4.0024E-02
            -2.0343E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1734.90819522167        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      804
 NPARAMETR:  9.5094E-01  2.4335E-01  1.6594E-01  1.0297E+00  2.0236E-01  8.7641E-01  8.3657E-01  1.0000E-02  1.4517E+00  7.6538E-01
             2.8799E+00
 PARAMETER:  4.9694E-02 -1.3133E+00 -1.6961E+00  1.2923E-01 -1.4977E+00 -3.1919E-02 -7.8450E-02 -1.2332E+01  4.7270E-01 -1.6738E-01
             1.1577E+00
 GRADIENT:  -8.0624E-02  2.3354E-02  6.0337E-02 -1.9752E-02 -8.2474E-02 -2.1386E-02 -7.0788E-03  0.0000E+00  3.4386E-03 -1.7706E-02
            -1.5446E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1734.90819522167        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  9.5094E-01  2.4335E-01  1.6594E-01  1.0297E+00  2.0236E-01  8.7641E-01  8.3657E-01  1.0000E-02  1.4517E+00  7.6538E-01
             2.8799E+00
 PARAMETER:  4.9694E-02 -1.3133E+00 -1.6961E+00  1.2923E-01 -1.4977E+00 -3.1919E-02 -7.8450E-02 -1.2332E+01  4.7270E-01 -1.6738E-01
             1.1577E+00
 GRADIENT:  -8.0624E-02  2.3354E-02  6.0337E-02 -1.9752E-02 -8.2474E-02 -2.1386E-02 -7.0788E-03  0.0000E+00  3.4386E-03 -1.7706E-02
            -1.5446E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      826
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3509E-03  7.8170E-03  1.6289E-04 -9.5498E-03  4.6117E-03
 SE:             2.8836E-02  1.3002E-02  1.8562E-04  2.6718E-02  2.6085E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6263E-01  5.4769E-01  3.8019E-01  7.2077E-01  8.5967E-01

 ETASHRINKSD(%)  3.3954E+00  5.6442E+01  9.9378E+01  1.0492E+01  1.2610E+01
 ETASHRINKVR(%)  6.6755E+00  8.1027E+01  9.9996E+01  1.9884E+01  2.3631E+01
 EBVSHRINKSD(%)  3.2642E+00  5.6740E+01  9.9339E+01  7.6851E+00  1.3311E+01
 EBVSHRINKVR(%)  6.4218E+00  8.1286E+01  9.9996E+01  1.4780E+01  2.4850E+01
 RELATIVEINF(%)  9.3418E+01  3.7615E+00  3.4900E-04  3.3959E+01  4.0579E+00
 EPSSHRINKSD(%)  2.4372E+01
 EPSSHRINKVR(%)  4.2804E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1734.9081952216691     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -632.18195537606198     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1734.908       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.51E-01  2.43E-01  1.66E-01  1.03E+00  2.02E-01  8.76E-01  8.37E-01  1.00E-02  1.45E+00  7.65E-01  2.88E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       15.001
Stop Time:
Fri Oct  1 18:13:11 CDT 2021
