Fri Oct  1 09:59:34 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1397.46747288864        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3184E+02  3.1712E+01  7.6937E+01 -3.2628E+01  1.3015E+02  6.6350E+01 -4.2570E+01 -1.4457E+01 -3.3670E+01 -1.1695E+02
            -1.1907E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1728.80924219997        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1211E+00  8.6804E-01  8.1826E-01  1.2173E+00  7.5012E-01  1.0737E+00  1.0786E+00  8.4055E-01  1.1664E+00  1.2949E+00
             2.2224E+00
 PARAMETER:  2.1433E-01 -4.1514E-02 -1.0058E-01  2.9664E-01 -1.8752E-01  1.7112E-01  1.7562E-01 -7.3696E-02  2.5391E-01  3.5843E-01
             8.9857E-01
 GRADIENT:   3.9571E+02  5.7689E+01  8.8196E+00  1.2617E+02 -3.6939E+01  4.2797E+01  2.7962E+00  1.1806E+01  2.8224E+01  3.4407E+01
             9.3683E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1742.86766851816        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      199
 NPARAMETR:  1.1067E+00  6.1908E-01  6.7557E-01  1.3946E+00  6.1620E-01  1.0575E+00  1.1163E+00  3.3174E-01  1.0350E+00  1.1184E+00
             2.1810E+00
 PARAMETER:  2.0137E-01 -3.7952E-01 -2.9219E-01  4.3262E-01 -3.8418E-01  1.5588E-01  2.1004E-01 -1.0034E+00  1.3440E-01  2.1193E-01
             8.7979E-01
 GRADIENT:   2.1087E+02  5.2128E+01 -2.4320E+01  1.7502E+02  7.2895E+00  3.3592E+01 -2.4170E+00  2.7661E+00 -2.2225E+00  2.9333E+01
             8.2604E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1788.28886523245        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  9.8100E-01  4.3710E-01  4.6541E-01  1.2881E+00  4.2971E-01  9.0861E-01  1.6348E+00  1.0105E-02  8.9172E-01  7.8836E-01
             1.8768E+00
 PARAMETER:  8.0819E-02 -7.2759E-01 -6.6483E-01  3.5315E-01 -7.4463E-01  4.1631E-03  5.9150E-01 -4.4947E+00 -1.4605E-02 -1.3780E-01
             7.2959E-01
 GRADIENT:  -1.9881E+01  2.1033E+01  1.4467E+01  9.1341E+00 -1.2936E+01  6.4863E+00  1.0843E+00  1.7865E-03 -2.6869E+01 -4.3451E+00
            -7.8303E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1794.62936657299        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      559
 NPARAMETR:  9.8440E-01  2.1337E-01  4.0692E-01  1.3311E+00  3.5171E-01  8.6999E-01  2.2434E+00  1.0000E-02  9.5805E-01  7.6322E-01
             1.8990E+00
 PARAMETER:  8.4274E-02 -1.4447E+00 -7.9915E-01  3.8598E-01 -9.4496E-01 -3.9271E-02  9.0797E-01 -8.9324E+00  5.7146E-02 -1.7021E-01
             7.4131E-01
 GRADIENT:   6.6836E+00  3.5551E+00  2.8782E+01 -1.3523E+01 -3.8843E+01 -7.7855E+00 -7.8332E-01  0.0000E+00  3.5189E+00 -4.4397E+00
             2.9939E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1795.32595533402        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      734
 NPARAMETR:  9.7975E-01  1.7635E-01  4.2425E-01  1.3634E+00  3.6440E-01  8.9048E-01  3.0559E+00  1.0000E-02  9.3404E-01  7.8861E-01
             1.8698E+00
 PARAMETER:  7.9543E-02 -1.6353E+00 -7.5744E-01  4.1001E-01 -9.0950E-01 -1.5997E-02  1.2171E+00 -9.0735E+00  3.1764E-02 -1.3749E-01
             7.2585E-01
 GRADIENT:   4.6026E-01  2.3487E-01  1.8722E+00  2.4892E-01 -2.4670E+00  1.1107E+00 -1.3316E-01  0.0000E+00 -4.8568E-01  2.3690E-01
            -9.4119E-01

0ITERATION NO.:   27    OBJECTIVE VALUE:  -1795.33220109524        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      791
 NPARAMETR:  9.7945E-01  1.7316E-01  4.2328E-01  1.3641E+00  3.6385E-01  8.8777E-01  3.0999E+00  1.0000E-02  9.3498E-01  7.8662E-01
             1.8704E+00
 PARAMETER:  7.9238E-02 -1.6535E+00 -7.5973E-01  4.1049E-01 -9.1103E-01 -1.9039E-02  1.2314E+00 -9.1767E+00  3.2775E-02 -1.4001E-01
             7.2613E-01
 GRADIENT:   4.2851E-02  3.1950E-02  1.9834E-02  4.1976E-01  7.5498E-02 -1.2135E-02 -6.2150E-02  0.0000E+00 -1.3896E-01 -2.8768E-02
            -5.7335E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      791
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2980E-03  2.3355E-02 -1.3825E-04 -1.3000E-02  3.4611E-03
 SE:             2.9494E-02  1.2670E-02  2.1997E-04  2.7929E-02  2.3492E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6490E-01  6.5276E-02  5.2970E-01  6.4161E-01  8.8287E-01

 ETASHRINKSD(%)  1.1917E+00  5.7555E+01  9.9263E+01  6.4344E+00  2.1298E+01
 ETASHRINKVR(%)  2.3692E+00  8.1984E+01  9.9995E+01  1.2455E+01  3.8060E+01
 EBVSHRINKSD(%)  1.4013E+00  6.7175E+01  9.9179E+01  5.7185E+00  1.7496E+01
 EBVSHRINKVR(%)  2.7831E+00  8.9225E+01  9.9993E+01  1.1110E+01  3.1931E+01
 RELATIVEINF(%)  9.5089E+01  4.0492E+00  4.8493E-04  3.7164E+01  4.7632E+00
 EPSSHRINKSD(%)  3.0427E+01
 EPSSHRINKVR(%)  5.1595E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1795.3322010952402     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -876.39366789056749     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.39
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1795.332       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.73E-01  4.23E-01  1.36E+00  3.64E-01  8.88E-01  3.10E+00  1.00E-02  9.35E-01  7.87E-01  1.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.433
Stop Time:
Fri Oct  1 09:59:46 CDT 2021
