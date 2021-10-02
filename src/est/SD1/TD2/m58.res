Fri Oct  1 05:46:38 CDT 2021
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
$DATA ../../../../data/SD1/TD2/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3311.92527478793        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2379E+02  3.3233E+01  1.3572E+02  1.5725E+02  7.9341E+01  5.6610E+01 -5.2138E+01 -9.4917E+01 -2.7994E+01 -4.9498E+01
            -7.5686E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3418.17706601225        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0627E+00  1.1043E+00  7.6720E-01  9.6117E-01  9.3266E-01  9.7754E-01  1.1863E+00  1.1143E+00  1.0360E+00  1.1338E+00
             1.2711E+00
 PARAMETER:  1.6084E-01  1.9924E-01 -1.6501E-01  6.0395E-02  3.0289E-02  7.7288E-02  2.7080E-01  2.0822E-01  1.3534E-01  2.2562E-01
             3.3992E-01
 GRADIENT:   6.6249E+02  1.7609E+02 -3.3622E+01  7.7820E+01 -5.3652E+00  4.0760E+00  1.5046E+01 -2.4129E+01  8.8895E-01 -2.7671E+00
            -6.8601E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3435.65715319370        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0311E+00  1.1610E+00  8.3351E-01  8.9066E-01  1.0227E+00  1.0443E+00  1.0062E+00  1.9671E+00  1.0695E+00  1.3952E+00
             1.2450E+00
 PARAMETER:  1.3059E-01  2.4932E-01 -8.2107E-02 -1.5795E-02  1.2249E-01  1.4336E-01  1.0614E-01  7.7654E-01  1.6715E-01  4.3307E-01
             3.1913E-01
 GRADIENT:   5.0810E+02  1.4724E+02 -5.6157E+00  2.7943E+01 -8.2622E+00  5.7648E+01 -9.6024E-02  2.3898E+01  2.0263E+01  1.5175E+01
            -4.4804E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3443.57465732852        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.4941E-01  1.0766E+00  8.7956E-01  9.1699E-01  1.0329E+00  9.5072E-01  1.1990E+00  1.7867E+00  8.7838E-01  1.3171E+00
             1.2435E+00
 PARAMETER:  4.8087E-02  1.7380E-01 -2.8337E-02  1.3346E-02  1.3235E-01  4.9469E-02  2.8149E-01  6.8038E-01 -2.9679E-02  3.7544E-01
             3.1796E-01
 GRADIENT:   2.6348E+02  5.0636E+01  8.0062E+00  1.5068E+01  3.7142E+01  2.9789E+01  2.3861E+01  1.9187E+00 -1.3882E+01  1.0539E+01
            -5.3764E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3453.00162738224        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      391
 NPARAMETR:  9.4639E-01  1.3797E+00  9.5903E-01  7.8192E-01  1.2734E+00  9.6580E-01  9.5920E-01  2.0391E+00  9.7405E-01  1.5835E+00
             1.3021E+00
 PARAMETER:  4.4905E-02  4.2186E-01  5.8163E-02 -1.4600E-01  3.4169E-01  6.5206E-02  5.8342E-02  8.1252E-01  7.3704E-02  5.5965E-01
             3.6395E-01
 GRADIENT:  -1.4235E+00 -1.3690E+00  3.9119E-01  1.6059E+01 -8.4607E+00  2.7126E+00 -7.5639E+00  1.0116E+01  4.0750E-01  4.7515E+00
            -1.1232E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3454.49400678624        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      573             RESET HESSIAN, TYPE I
 NPARAMETR:  9.4514E-01  1.4194E+00  9.6996E-01  7.5469E-01  1.3190E+00  9.5985E-01  9.6474E-01  2.0651E+00  9.6266E-01  1.5845E+00
             1.3071E+00
 PARAMETER:  4.3582E-02  4.5026E-01  6.9501E-02 -1.8145E-01  3.7686E-01  5.9019E-02  6.4106E-02  8.2516E-01  6.1942E-02  5.6024E-01
             3.6780E-01
 GRADIENT:   2.3044E+02  3.2306E+02  4.9796E+00  6.2155E+01  9.2915E+01  3.2770E+01  3.1556E-02  6.3382E+00  2.3711E+00  3.3554E+01
             5.1746E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3454.61117371174        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      733
 NPARAMETR:  9.4491E-01  1.4180E+00  9.6060E-01  7.5101E-01  1.3202E+00  9.5773E-01  9.8087E-01  2.0694E+00  9.6036E-01  1.5806E+00
             1.3079E+00
 PARAMETER:  4.3330E-02  4.4926E-01  5.9798E-02 -1.8633E-01  3.7781E-01  5.6808E-02  8.0687E-02  8.2724E-01  5.9548E-02  5.5779E-01
             3.6846E-01
 GRADIENT:  -5.3858E+00 -4.9435E+00  1.6310E+00  2.8904E+00 -9.9418E-01 -6.3002E-01 -2.9567E+00  9.7220E-01  1.2468E+00 -1.0152E+00
             9.3517E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -3454.61117371174        NO. OF FUNC. EVALS.:  27
 CUMULATIVE NO. OF FUNC. EVALS.:      760
 NPARAMETR:  9.4503E-01  1.4172E+00  9.6045E-01  7.5122E-01  1.3210E+00  9.5869E-01  9.8073E-01  2.0719E+00  9.6050E-01  1.5838E+00
             1.3072E+00
 PARAMETER:  4.3330E-02  4.4926E-01  5.9798E-02 -1.8633E-01  3.7781E-01  5.6808E-02  8.0687E-02  8.2724E-01  5.9548E-02  5.5779E-01
             3.6846E-01
 GRADIENT:  -3.6171E+04  8.0386E+03  1.9307E+04 -2.0720E+04 -1.0217E+04 -6.6697E-01  3.8591E+04 -4.7332E+03 -3.8598E+04 -9.0601E-01
             1.0473E+04
 NUMSIGDIG:         2.4         2.4         2.3         2.3         2.3         1.5         2.3         2.3         2.3         1.9
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      760
 NO. OF SIG. DIGITS IN FINAL EST.:  1.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.2865E-03 -2.9263E-02 -3.7127E-02  3.1762E-02 -3.0653E-02
 SE:             2.9895E-02  2.4084E-02  2.0131E-02  2.2552E-02  2.6395E-02
 N:                     100         100         100         100         100

 P VAL.:         9.1246E-01  2.2434E-01  6.5140E-02  1.5901E-01  2.4551E-01

 ETASHRINKSD(%)  1.0000E-10  1.9317E+01  3.2560E+01  2.4449E+01  1.1573E+01
 ETASHRINKVR(%)  1.0000E-10  3.4903E+01  5.4518E+01  4.2920E+01  2.1807E+01
 EBVSHRINKSD(%)  4.6474E-01  2.0535E+01  3.5154E+01  2.7934E+01  9.9802E+00
 EBVSHRINKVR(%)  9.2732E-01  3.6854E+01  5.7950E+01  4.8064E+01  1.8964E+01
 RELATIVEINF(%)  9.9069E+01  1.8837E+01  3.7294E+01  1.5154E+01  4.1506E+01
 EPSSHRINKSD(%)  2.1352E+01
 EPSSHRINKVR(%)  3.8145E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3454.6111737117430     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1800.5218139433323     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3454.611       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.45E-01  1.42E+00  9.61E-01  7.51E-01  1.32E+00  9.58E-01  9.81E-01  2.07E+00  9.60E-01  1.58E+00  1.31E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.523
Stop Time:
Fri Oct  1 05:47:00 CDT 2021
