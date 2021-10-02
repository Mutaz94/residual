Fri Oct  1 01:24:59 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat68.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1693.26800569025        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2529E+02  3.0374E+02  1.8188E+02  1.5319E+02  2.4509E+02  6.5979E+01 -1.5172E+02 -1.1613E+02  2.7373E+01 -1.4139E+02
            -3.8735E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2956.53871929324        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0952E+00  8.5611E-01  8.7815E-01  1.0894E+00  8.2450E-01  8.6289E-01  8.9324E-01  9.2539E-01  7.5729E-01  9.8693E-01
             2.2263E+00
 PARAMETER:  1.9096E-01 -5.5360E-02 -2.9934E-02  1.8562E-01 -9.2980E-02 -4.7468E-02 -1.2905E-02  2.2464E-02 -1.7801E-01  8.6849E-02
             9.0033E-01
 GRADIENT:   3.7434E+02  8.1781E+01  2.0772E+01  1.2427E+02 -1.5238E+01 -2.9340E+01  1.2078E-01  1.4501E+01 -8.5863E+00  5.4426E+00
            -2.0361E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2962.88699986748        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      198
 NPARAMETR:  1.1047E+00  7.1366E-01  7.2073E-01  1.1507E+00  6.9497E-01  1.0561E+00  7.6938E-01  5.8602E-01  7.3738E-01  8.7001E-01
             2.1992E+00
 PARAMETER:  1.9962E-01 -2.3735E-01 -2.2749E-01  2.4041E-01 -2.6389E-01  1.5463E-01 -1.6217E-01 -4.3440E-01 -2.0465E-01 -3.9249E-02
             8.8808E-01
 GRADIENT:   1.5538E+02  4.0007E+01  1.7341E+01  1.1746E+02  1.2280E+00  3.5786E+01 -1.6121E+01  8.1251E+00 -2.7415E+01 -1.4256E+01
            -4.9056E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2979.30118000406        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      375
 NPARAMETR:  1.0560E+00  6.6149E-01  5.5891E-01  1.1389E+00  5.8575E-01  1.0465E+00  1.0132E+00  1.8697E-01  7.2087E-01  8.2567E-01
             2.1796E+00
 PARAMETER:  1.5447E-01 -3.1326E-01 -4.8177E-01  2.3007E-01 -4.3486E-01  1.4545E-01  1.1316E-01 -1.5768E+00 -2.2730E-01 -9.1558E-02
             8.7914E-01
 GRADIENT:   6.8799E+01  9.8837E+01 -3.5520E+01  6.5483E+01 -6.4384E+00  4.1971E+01 -9.5480E+00  1.5549E+00 -4.1239E+01 -3.1063E-01
            -2.6072E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3015.18397850470        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      554
 NPARAMETR:  9.9539E-01  2.9858E-01  2.4077E-01  1.1218E+00  2.7957E-01  9.7149E-01  1.6077E+00  2.8248E-02  9.6240E-01  5.1344E-01
             2.0737E+00
 PARAMETER:  9.5375E-02 -1.1087E+00 -1.3239E+00  2.1490E-01 -1.1745E+00  7.1080E-02  5.7479E-01 -3.4667E+00  6.1675E-02 -5.6663E-01
             8.2933E-01
 GRADIENT:  -5.4378E+01 -5.6680E+00  1.5834E+01  1.1697E+02 -4.6944E+01  1.4826E+01  3.0597E+01  1.0023E-02 -5.9173E+00 -3.2567E+00
            -4.0458E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3021.98387181248        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0192E+00  3.0666E-01  2.4108E-01  1.0651E+00  2.8269E-01  9.2681E-01  1.3831E+00  2.5641E-02  9.5866E-01  5.3779E-01
             2.0757E+00
 PARAMETER:  1.1897E-01 -1.0820E+00 -1.3226E+00  1.6305E-01 -1.1634E+00  2.3993E-02  4.2432E-01 -3.5635E+00  5.7783E-02 -5.2029E-01
             8.3031E-01
 GRADIENT:   1.1953E+00  1.8375E+00 -1.2566E+00  9.7621E-01  1.3975E+00 -2.7936E-01  5.8613E-01  1.6125E-02 -2.0584E-01 -6.5440E-01
            -1.0440E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3022.03158012745        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      868
 NPARAMETR:  1.0185E+00  3.0217E-01  2.3628E-01  1.0598E+00  2.7822E-01  9.2755E-01  1.3815E+00  1.0000E-02  9.6540E-01  5.3839E-01
             2.0746E+00
 PARAMETER:  1.1830E-01 -1.0968E+00 -1.3427E+00  1.5810E-01 -1.1793E+00  2.4786E-02  4.2319E-01 -4.5763E+00  6.4782E-02 -5.1918E-01
             8.2978E-01
 GRADIENT:  -5.1471E-01  1.8588E+00  1.3157E+00 -1.1460E-01 -4.7678E+00 -2.5003E-02  1.5106E-01  0.0000E+00  1.5256E-01 -2.1886E-01
            -5.6422E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -3022.03183272003        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:      927
 NPARAMETR:  1.0185E+00  3.0213E-01  2.3636E-01  1.0599E+00  2.7834E-01  9.2754E-01  1.3812E+00  1.0000E-02  9.6516E-01  5.3858E-01
             2.0747E+00
 PARAMETER:  1.1831E-01 -1.0969E+00 -1.3424E+00  1.5818E-01 -1.1789E+00  2.4783E-02  4.2297E-01 -4.5305E+00  6.4539E-02 -5.1882E-01
             8.2983E-01
 GRADIENT:  -7.9682E-01  4.4123E-01  4.5456E-01  6.6111E-03 -1.4202E-02 -3.5614E-02  7.2244E-02  2.4927E-04  1.0481E-01 -1.8544E-01
            -3.8773E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      927
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0116E-03  5.3925E-03 -4.3428E-05 -4.0149E-03  4.3326E-03
 SE:             2.9579E-02  2.5297E-02  3.0481E-04  2.8377E-02  2.3616E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7272E-01  8.3120E-01  8.8670E-01  8.8749E-01  8.5444E-01

 ETASHRINKSD(%)  9.0693E-01  1.5251E+01  9.8979E+01  4.9341E+00  2.0884E+01
 ETASHRINKVR(%)  1.8056E+00  2.8176E+01  9.9990E+01  9.6248E+00  3.7407E+01
 EBVSHRINKSD(%)  1.1464E+00  1.3806E+01  9.8935E+01  4.4325E+00  2.1631E+01
 EBVSHRINKVR(%)  2.2797E+00  2.5707E+01  9.9989E+01  8.6685E+00  3.8583E+01
 RELATIVEINF(%)  9.7695E+01  1.7757E+01  6.8170E-04  5.2180E+01  3.2952E+00
 EPSSHRINKSD(%)  1.9231E+01
 EPSSHRINKVR(%)  3.4764E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3022.0318327200312     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1367.9424729516204     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3022.032       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  3.02E-01  2.36E-01  1.06E+00  2.78E-01  9.28E-01  1.38E+00  1.00E-02  9.65E-01  5.39E-01  2.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.557
Stop Time:
Fri Oct  1 01:25:23 CDT 2021