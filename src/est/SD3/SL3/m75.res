Fri Oct  1 20:10:36 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat75.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      697
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

 TOT. NO. OF OBS RECS:      597
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
 RAW OUTPUT FILE (FILE): m75.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1536.83917425730        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2112E+02 -9.8193E+01  1.6074E+01  2.4427E+01  1.3039E+02  3.9155E+01 -6.6005E+01 -5.5614E+01 -6.3905E+01  1.1786E+01
            -1.6911E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2041.31532478930        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.9387E-01  1.1980E+00  9.8076E-01  9.5975E-01  1.0204E+00  1.0165E+00  1.1592E+00  9.6398E-01  1.0989E+00  8.6277E-01
             1.9344E+00
 PARAMETER:  9.3852E-02  2.8068E-01  8.0572E-02  5.8915E-02  1.2016E-01  1.1639E-01  2.4773E-01  6.3316E-02  1.9432E-01 -4.7611E-02
             7.5980E-01
 GRADIENT:   8.4379E+01  3.3250E+01  1.7019E+00  1.7841E+01  1.4212E+01  1.5065E+01  3.6055E+00  1.5511E+00 -1.9100E-01 -2.9752E+00
            -6.3620E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2042.83752201241        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      265
 NPARAMETR:  1.0096E+00  1.3514E+00  9.3040E-01  8.6478E-01  1.1120E+00  9.8179E-01  9.2241E-01  7.3457E-01  1.2052E+00  1.0673E+00
             1.9704E+00
 PARAMETER:  1.0954E-01  4.0118E-01  2.7860E-02 -4.5278E-02  2.0616E-01  8.1621E-02  1.9239E-02 -2.0846E-01  2.8661E-01  1.6511E-01
             7.7823E-01
 GRADIENT:   3.7019E+00 -3.2832E+01 -3.9993E+00  8.4536E-01  1.4589E+01 -1.3979E+01 -1.3345E+01  4.4119E-01 -3.9839E+00  7.3908E+00
            -5.0583E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2046.32549748451        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      440
 NPARAMETR:  1.0101E+00  1.5261E+00  8.3761E-01  7.7446E-01  1.1666E+00  1.0238E+00  9.9408E-01  3.7962E-01  1.2837E+00  1.0355E+00
             2.0638E+00
 PARAMETER:  1.1008E-01  5.2272E-01 -7.7202E-02 -1.5559E-01  2.5409E-01  1.2351E-01  9.4067E-02 -8.6858E-01  3.4974E-01  1.3493E-01
             8.2456E-01
 GRADIENT:   1.4332E+00  1.0761E+01  1.0782E+00  9.1238E+00 -1.0422E+00  2.2153E+00  1.9967E+00  3.1793E-02  4.9551E-01 -1.9921E+00
             7.1037E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2046.68582047410        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      615
 NPARAMETR:  1.0092E+00  1.7215E+00  7.6215E-01  6.4112E-01  1.2853E+00  1.0178E+00  9.0452E-01  3.5258E-01  1.4348E+00  1.1504E+00
             2.0457E+00
 PARAMETER:  1.0917E-01  6.4321E-01 -1.7161E-01 -3.4454E-01  3.5100E-01  1.1767E-01 -3.5424E-04 -9.4248E-01  4.6099E-01  2.4015E-01
             8.1572E-01
 GRADIENT:  -1.2905E-01  1.9028E+00  2.7632E-01  1.0227E+00 -5.5692E-01 -1.1432E-02 -1.8453E-01  3.8653E-02 -1.9461E-01  7.0486E-02
            -2.4492E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2046.70263170576        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      794
 NPARAMETR:  1.0091E+00  1.7218E+00  7.5143E-01  6.3940E-01  1.2828E+00  1.0178E+00  9.0596E-01  1.5085E-01  1.4369E+00  1.1510E+00
             2.0467E+00
 PARAMETER:  1.0901E-01  6.4336E-01 -1.8578E-01 -3.4722E-01  3.4903E-01  1.1761E-01  1.2375E-03 -1.7915E+00  4.6248E-01  2.4063E-01
             8.1621E-01
 GRADIENT:  -4.5457E-01  1.0779E-01 -1.2073E-01  4.6421E-01 -1.6036E-01 -4.3785E-02  3.7114E-02  6.0073E-03 -8.1108E-02  1.9951E-01
             2.0273E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2046.70487109174        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      973             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0095E+00  1.7242E+00  7.4799E-01  6.3659E-01  1.2840E+00  1.0180E+00  9.0442E-01  2.8500E-02  1.4429E+00  1.1505E+00
             2.0463E+00
 PARAMETER:  1.0944E-01  6.4478E-01 -1.9036E-01 -3.5163E-01  3.5000E-01  1.1786E-01 -4.6253E-04 -3.4579E+00  4.6666E-01  2.4022E-01
             8.1602E-01
 GRADIENT:   1.1200E+02  1.8834E+02  5.6421E-01  2.3724E+01  1.5504E+01  1.4396E+01  2.0588E+00  1.0395E-03  5.4238E+00  1.3980E+00
             9.7176E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2046.70519328613        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1156             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0095E+00  1.7240E+00  7.4931E-01  6.3717E-01  1.2840E+00  1.0180E+00  9.0472E-01  1.0000E-02  1.4420E+00  1.1509E+00
             2.0462E+00
 PARAMETER:  1.0943E-01  6.4467E-01 -1.8860E-01 -3.5072E-01  3.4994E-01  1.1785E-01 -1.2657E-04 -4.9106E+00  4.6601E-01  2.4053E-01
             8.1600E-01
 GRADIENT:   1.1197E+02  1.8886E+02  7.1752E-01  2.3895E+01  1.5266E+01  1.4387E+01  2.0593E+00  0.0000E+00  5.3895E+00  1.4268E+00
             9.6530E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2046.70519328613        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1213
 NPARAMETR:  1.0095E+00  1.7240E+00  7.4931E-01  6.3717E-01  1.2840E+00  1.0180E+00  9.0472E-01  1.0000E-02  1.4420E+00  1.1509E+00
             2.0462E+00
 PARAMETER:  1.0943E-01  6.4467E-01 -1.8860E-01 -3.5072E-01  3.4994E-01  1.1785E-01 -1.2657E-04 -4.9106E+00  4.6601E-01  2.4053E-01
             8.1600E-01
 GRADIENT:   4.5641E-01 -5.8675E-01  3.0428E-02 -4.9123E-02 -1.8730E-01  4.7864E-02 -2.2307E-02  0.0000E+00  3.0106E-02 -5.0788E-03
            -9.0589E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1213
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7477E-04 -2.4031E-02 -1.3507E-04  1.7141E-02 -2.5487E-02
 SE:             2.9539E-02  2.3216E-02  8.2269E-05  2.2057E-02  2.3173E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8178E-01  3.0062E-01  1.0063E-01  4.3708E-01  2.7138E-01

 ETASHRINKSD(%)  1.0395E+00  2.2224E+01  9.9724E+01  2.6106E+01  2.2368E+01
 ETASHRINKVR(%)  2.0681E+00  3.9509E+01  9.9999E+01  4.5396E+01  3.9733E+01
 EBVSHRINKSD(%)  1.2294E+00  2.1993E+01  9.9750E+01  2.8037E+01  2.1192E+01
 EBVSHRINKVR(%)  2.4436E+00  3.9150E+01  9.9999E+01  4.8213E+01  3.7893E+01
 RELATIVEINF(%)  9.7477E+01  6.2818E+00  2.1885E-04  5.7141E+00  1.2975E+01
 EPSSHRINKSD(%)  2.5541E+01
 EPSSHRINKVR(%)  4.4558E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          597
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1097.2126086463791     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2046.7051932861277     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -949.49258463974866     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2046.705       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.72E+00  7.49E-01  6.37E-01  1.28E+00  1.02E+00  9.05E-01  1.00E-02  1.44E+00  1.15E+00  2.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.985
Stop Time:
Fri Oct  1 20:10:59 CDT 2021
