Fri Oct  1 12:40:24 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat98.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m98.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2086.75539189813        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6752E+02 -1.9251E+01 -4.3061E+01  6.7835E+01  9.3164E+01  5.5824E+01 -6.0332E+00 -2.2390E+00  8.9293E+00  9.4983E+00
            -8.9480E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2092.04127754567        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8279E-01  1.0882E+00  1.0283E+00  9.7766E-01  9.8342E-01  9.2857E-01  1.0631E+00  1.0394E+00  9.8825E-01  8.8150E-01
             1.0326E+00
 PARAMETER:  8.2637E-02  1.8449E-01  1.2787E-01  7.7410E-02  8.3285E-02  2.5894E-02  1.6115E-01  1.3865E-01  8.8183E-02 -2.6130E-02
             1.3208E-01
 GRADIENT:   1.8376E+01  8.9328E+00  1.9075E+00  2.3063E+01  1.4757E+01 -1.6376E+01 -3.9939E+00 -6.5149E+00  3.6177E-01 -2.8394E+00
             1.2799E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2093.25121612268        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7540E-01  1.1591E+00  9.2189E-01  9.3607E-01  9.4404E-01  9.6440E-01  1.1492E+00  1.2556E+00  9.6502E-01  7.4290E-01
             9.8335E-01
 PARAMETER:  7.5088E-02  2.4761E-01  1.8673E-02  3.3934E-02  4.2409E-02  6.3748E-02  2.3904E-01  3.2762E-01  6.4398E-02 -1.9720E-01
             8.3205E-02
 GRADIENT:  -2.3773E+00  2.7932E+01  7.6240E+00  2.5904E+01  2.9153E-01 -1.4354E+00  5.8240E+00 -3.4905E+00 -1.9047E+00 -1.1170E+01
            -1.4357E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2094.92402281002        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7883E-01  1.2982E+00  8.6660E-01  8.3585E-01  9.8964E-01  9.6740E-01  9.8053E-01  1.3036E+00  1.0606E+00  8.5843E-01
             9.9866E-01
 PARAMETER:  7.8603E-02  3.6095E-01 -4.3177E-02 -7.9303E-02  8.9588E-02  6.6853E-02  8.0339E-02  3.6513E-01  1.5879E-01 -5.2655E-02
             9.8663E-02
 GRADIENT:   3.9829E+00  1.3885E+01  7.0189E+00  8.7098E+00 -1.5580E+01 -3.7502E-01 -1.7058E+00 -9.6941E-01 -1.1016E+00  1.2654E+00
             1.0662E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2095.97267555825        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.7859E-01  1.6821E+00  6.2138E-01  5.8754E-01  1.1081E+00  9.6943E-01  8.4877E-01  1.3783E+00  1.3224E+00  9.2148E-01
             9.9563E-01
 PARAMETER:  7.8362E-02  6.2003E-01 -3.7581E-01 -4.3182E-01  2.0266E-01  6.8955E-02 -6.3970E-02  4.2086E-01  3.7941E-01  1.8222E-02
             9.5624E-02
 GRADIENT:  -3.2218E-01  1.2364E+01 -1.2234E+00  1.1025E+01  4.2216E+00 -2.4258E-01 -2.7861E-02 -4.6690E-01 -1.1488E+00 -1.5600E+00
            -1.2035E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2096.05421808200        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.7905E-01  1.8398E+00  5.3413E-01  4.8487E-01  1.1707E+00  9.6937E-01  8.0588E-01  1.4587E+00  1.4950E+00  9.7683E-01
             9.9640E-01
 PARAMETER:  7.8825E-02  7.0964E-01 -5.2711E-01 -6.2387E-01  2.5760E-01  6.8892E-02 -1.1582E-01  4.7756E-01  5.0212E-01  7.6554E-02
             9.6390E-02
 GRADIENT:   9.1615E-02  1.2112E+01 -1.4219E+00  9.2408E+00  2.0869E+00 -3.7110E-01 -7.9945E-01  2.1858E-02 -8.1271E-01 -5.6082E-01
            -8.0541E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2096.16893563918        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1064             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7944E-01  1.8552E+00  5.2517E-01  4.6207E-01  1.1823E+00  9.7045E-01  8.0185E-01  1.4719E+00  1.5405E+00  9.8900E-01
             9.9718E-01
 PARAMETER:  7.9222E-02  7.1802E-01 -5.4404E-01 -6.7205E-01  2.6746E-01  7.0009E-02 -1.2083E-01  4.8658E-01  5.3213E-01  8.8941E-02
             9.7179E-02
 GRADIENT:   4.2172E+02  8.6562E+02  3.0495E+00  1.1628E+02  1.5549E+01  4.8923E+01  8.6344E+00  4.4810E-01  1.7829E+01  7.1387E-01
             1.0058E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2096.16893563918        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1123
 NPARAMETR:  9.7944E-01  1.8552E+00  5.2517E-01  4.6207E-01  1.1823E+00  9.7045E-01  8.0185E-01  1.4719E+00  1.5405E+00  9.8900E-01
             9.9718E-01
 PARAMETER:  7.9222E-02  7.1802E-01 -5.4404E-01 -6.7205E-01  2.6746E-01  7.0009E-02 -1.2083E-01  4.8658E-01  5.3213E-01  8.8941E-02
             9.7179E-02
 GRADIENT:   1.1648E+00 -8.8537E+00  2.4716E-01 -1.0556E+00 -1.4529E+00  1.0510E-01  9.6385E-02 -9.1986E-02 -2.9087E-01 -2.6479E-02
             5.8329E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1123
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7973E-04 -3.1510E-02 -2.7991E-02  3.4714E-02 -4.5115E-02
 SE:             2.9900E-02  2.4529E-02  1.1003E-02  2.1919E-02  2.1480E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8186E-01  1.9893E-01  1.0962E-02  1.1325E-01  3.5702E-02

 ETASHRINKSD(%)  1.0000E-10  1.7824E+01  6.3138E+01  2.6570E+01  2.8039E+01
 ETASHRINKVR(%)  1.0000E-10  3.2471E+01  8.6412E+01  4.6080E+01  4.8216E+01
 EBVSHRINKSD(%)  3.4262E-01  1.7145E+01  6.6373E+01  2.9901E+01  2.4421E+01
 EBVSHRINKVR(%)  6.8406E-01  3.1351E+01  8.8693E+01  5.0861E+01  4.2878E+01
 RELATIVEINF(%)  9.9276E+01  8.0163E+00  2.6157E+00  5.1017E+00  1.7253E+01
 EPSSHRINKSD(%)  3.4882E+01
 EPSSHRINKVR(%)  5.7597E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2096.1689356391817     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1177.2304024345090     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.52
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2096.169       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.86E+00  5.25E-01  4.62E-01  1.18E+00  9.70E-01  8.02E-01  1.47E+00  1.54E+00  9.89E-01  9.97E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.574
Stop Time:
Fri Oct  1 12:40:43 CDT 2021
