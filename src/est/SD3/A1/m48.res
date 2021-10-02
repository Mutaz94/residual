Fri Oct  1 17:23:17 CDT 2021
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
$DATA ../../../../data/SD3/A1/dat48.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2208.74295763092        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4579E+02  6.4348E+01  7.5689E+01  4.0474E+01  4.3224E+01  1.4259E+01 -3.6482E+00 -5.8389E+00  1.6122E+01 -2.7018E+01
            -4.6877E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2284.37293853861        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8971E-01  8.9419E-01  7.4769E-01  1.0722E+00  8.0952E-01  1.1168E+00  9.7331E-01  9.1834E-01  9.0582E-01  1.0139E+00
             1.4223E+00
 PARAMETER:  8.9652E-02 -1.1833E-02 -1.9077E-01  1.6970E-01 -1.1131E-01  2.1046E-01  7.2951E-02  1.4816E-02  1.0808E-03  1.1385E-01
             4.5230E-01
 GRADIENT:   1.8951E+02  4.1559E+01 -2.9983E+00  7.1549E+01  5.2867E+00  6.3572E+01  1.6600E+00  1.9071E+01 -6.9397E+00  1.1636E+01
             6.3818E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2288.03102360933        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      203
 NPARAMETR:  1.0084E+00  7.1061E-01  5.9738E-01  1.1503E+00  6.3761E-01  1.0153E+00  9.3747E-01  7.3436E-01  8.7024E-01  9.5270E-01
             1.3750E+00
 PARAMETER:  1.0841E-01 -2.4163E-01 -4.1521E-01  2.4005E-01 -3.5003E-01  1.1517E-01  3.5434E-02 -2.0876E-01 -3.8985E-02  5.1550E-02
             4.1845E-01
 GRADIENT:   7.3058E+00  1.3551E+01 -3.2040E+01  2.9881E+00 -1.3950E+00 -2.4659E+01 -2.1442E-01  1.9039E+01 -2.2749E+01  1.1126E+01
             4.0419E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2295.42776535939        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      380
 NPARAMETR:  1.0119E+00  7.0818E-01  6.1251E-01  1.1565E+00  6.4100E-01  1.0215E+00  9.8075E-01  4.5270E-01  9.1293E-01  9.4905E-01
             1.3486E+00
 PARAMETER:  1.1186E-01 -2.4506E-01 -3.9019E-01  2.4542E-01 -3.4472E-01  1.2122E-01  8.0565E-02 -6.9252E-01  8.9013E-03  4.7705E-02
             3.9906E-01
 GRADIENT:   1.5568E+01  1.3407E+01 -3.6462E+00  9.8935E+00 -1.0728E+01 -2.2165E+01  1.7330E+00  5.8241E+00 -4.5926E+00  5.6129E+00
             1.9990E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2298.74924178254        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      557
 NPARAMETR:  1.0016E+00  6.5438E-01  5.7009E-01  1.1658E+00  5.9634E-01  1.0867E+00  9.4505E-01  1.0470E-01  9.2659E-01  9.3394E-01
             1.3246E+00
 PARAMETER:  1.0156E-01 -3.2406E-01 -4.6197E-01  2.5337E-01 -4.1694E-01  1.8319E-01  4.3478E-02 -2.1566E+00  2.3751E-02  3.1660E-02
             3.8112E-01
 GRADIENT:  -4.8002E+00 -1.4890E+00  1.7161E+00 -4.3755E+00 -3.8846E+00  2.9549E+00 -2.1051E-01  2.3835E-01  4.5367E-01 -1.4795E-01
             2.4163E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2298.89703974414        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      733
 NPARAMETR:  1.0041E+00  6.6269E-01  5.7507E-01  1.1652E+00  6.0369E-01  1.0783E+00  9.4883E-01  2.2071E-02  9.2560E-01  9.4129E-01
             1.3230E+00
 PARAMETER:  1.0411E-01 -3.1145E-01 -4.5327E-01  2.5287E-01 -4.0469E-01  1.7535E-01  4.7470E-02 -3.7135E+00  2.2685E-02  3.9496E-02
             3.7988E-01
 GRADIENT:  -9.1402E-03  4.6173E-01  4.3768E-01  1.6041E-01 -1.0389E+00 -7.8701E-02  1.1810E-01  9.5526E-03 -8.9552E-02  4.2526E-01
             1.6233E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2298.90172839861        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      912             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0046E+00  6.6258E-01  5.7466E-01  1.1646E+00  6.0381E-01  1.0790E+00  9.4833E-01  1.0000E-02  9.2607E-01  9.4012E-01
             1.3229E+00
 PARAMETER:  1.0460E-01 -3.1161E-01 -4.5397E-01  2.5241E-01 -4.0450E-01  1.7600E-01  4.6944E-02 -4.5707E+00  2.3200E-02  3.8248E-02
             3.7979E-01
 GRADIENT:   2.5283E+02  5.0971E+01  2.7643E+01  1.5960E+02  9.2464E+01  4.4107E+01  1.3566E+00  0.0000E+00  6.2795E+00  1.9958E+00
             4.6334E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2298.90173458261        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  1.0045E+00  6.6266E-01  5.7474E-01  1.1649E+00  6.0380E-01  1.0788E+00  9.4738E-01  1.0000E-02  9.2603E-01  9.3990E-01
             1.3228E+00
 PARAMETER:  1.0448E-01 -3.1149E-01 -4.5383E-01  2.5260E-01 -4.0451E-01  1.7588E-01  4.5944E-02 -4.5707E+00  2.3152E-02  3.8014E-02
             3.7976E-01
 GRADIENT:   6.9183E-01  5.8702E-02 -1.4920E-01 -2.9072E-01 -5.2443E-02  1.2616E-01 -7.4635E-03  0.0000E+00  1.0276E-02  1.1725E-02
            -1.0192E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1002
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.8621E-04 -1.0860E-02 -2.5288E-04  5.4934E-04 -7.8586E-03
 SE:             2.9802E-02  1.7474E-02  2.1706E-04  2.8293E-02  2.6408E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8698E-01  5.3426E-01  2.4401E-01  9.8451E-01  7.6602E-01

 ETASHRINKSD(%)  1.5934E-01  4.1460E+01  9.9273E+01  5.2137E+00  1.1530E+01
 ETASHRINKVR(%)  3.1842E-01  6.5731E+01  9.9995E+01  1.0156E+01  2.1730E+01
 EBVSHRINKSD(%)  4.8503E-01  4.1086E+01  9.9242E+01  5.3779E+00  1.1943E+01
 EBVSHRINKVR(%)  9.6770E-01  6.5292E+01  9.9994E+01  1.0467E+01  2.2459E+01
 RELATIVEINF(%)  9.9023E+01  9.8298E+00  1.5326E-03  6.4135E+01  1.1426E+01
 EPSSHRINKSD(%)  2.8855E+01
 EPSSHRINKVR(%)  4.9383E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2298.9017345826096     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1196.1754947370025     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2298.902       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.63E-01  5.75E-01  1.16E+00  6.04E-01  1.08E+00  9.47E-01  1.00E-02  9.26E-01  9.40E-01  1.32E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.502
Stop Time:
Fri Oct  1 17:23:35 CDT 2021
