Fri Oct  1 01:30:56 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat82.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1399.06225403648        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3217E+02  2.1146E+02  1.5956E+02  1.5769E+02  4.0207E+02  7.6489E+01 -1.6211E+02 -9.2141E+01 -2.1569E+01 -2.4209E+02
            -4.4117E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2884.81463411544        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0390E+00  8.3337E-01  8.5778E-01  1.0311E+00  7.2812E-01  7.9396E-01  1.0576E+00  9.1125E-01  9.7490E-01  1.3024E+00
             2.4283E+00
 PARAMETER:  1.3822E-01 -8.2283E-02 -5.3409E-02  1.3058E-01 -2.1729E-01 -1.3073E-01  1.5596E-01  7.0673E-03  7.4580E-02  3.6420E-01
             9.8720E-01
 GRADIENT:   2.0593E+02 -1.7240E+00  3.4366E+01 -5.5385E+01 -5.0982E+00 -3.2415E+01  1.7115E+00  1.6538E+01 -2.5418E-01  2.6832E+01
             1.0927E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2904.35239485405        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:      184
 NPARAMETR:  1.0201E+00  4.3299E-01  2.9499E-01  1.1191E+00  2.7501E-01  7.8703E-01  1.2067E+00  6.0267E-01  1.0084E+00  1.1877E+00
             2.1420E+00
 PARAMETER:  1.1995E-01 -7.3704E-01 -1.1208E+00  2.1252E-01 -1.1909E+00 -1.3949E-01  2.8790E-01 -4.0638E-01  1.0835E-01  2.7200E-01
             8.6176E-01
 GRADIENT:   4.8666E+01  1.5520E+02  5.9375E+01  5.9199E+01 -2.1109E+02 -4.9218E+01 -3.8084E+01  1.1989E+01 -2.5500E+01  3.9200E+01
            -3.1488E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2918.74110155897        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      362
 NPARAMETR:  1.0309E+00  5.1642E-01  4.2971E-01  1.1312E+00  4.0233E-01  7.2835E-01  1.2145E+00  1.6871E-01  1.0470E+00  1.1309E+00
             2.2463E+00
 PARAMETER:  1.3044E-01 -5.6083E-01 -7.4464E-01  2.2329E-01 -8.1047E-01 -2.1697E-01  2.9430E-01 -1.6796E+00  1.4595E-01  2.2300E-01
             9.0927E-01
 GRADIENT:   1.0098E+02  4.3601E+01  5.5910E+01  2.3066E+00 -7.0119E+01 -8.4078E+01 -1.3000E+01  1.0717E+00  1.0049E+01  3.3948E+01
             3.9291E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2968.19633588162        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      538
 NPARAMETR:  9.9288E-01  2.8161E-01  1.8476E-01  1.0226E+00  2.2290E-01  9.3464E-01  1.5375E+00  1.6965E-01  1.2329E+00  7.7940E-01
             2.0263E+00
 PARAMETER:  9.2855E-02 -1.1672E+00 -1.5887E+00  1.2234E-01 -1.4010E+00  3.2409E-02  5.3015E-01 -1.6740E+00  3.0937E-01 -1.4923E-01
             8.0620E-01
 GRADIENT:  -3.0049E+01  8.9302E+00  2.2620E+01  5.9920E+01 -4.8721E+01  1.7201E+01 -5.5657E+00 -6.2166E-01 -3.6929E+00 -1.0447E+01
            -2.4124E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2979.28638322253        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      714
 NPARAMETR:  1.0129E+00  2.2770E-01  1.3615E-01  8.9850E-01  1.8263E-01  8.6691E-01  1.5754E+00  1.2285E+00  1.3849E+00  7.5805E-01
             2.0118E+00
 PARAMETER:  1.1285E-01 -1.3797E+00 -1.8940E+00 -7.0283E-03 -1.6003E+00 -4.2819E-02  5.5451E-01  3.0580E-01  4.2566E-01 -1.7700E-01
             7.9905E-01
 GRADIENT:   1.8317E+01 -1.9799E+00  4.2345E+01  1.1916E+01 -4.0403E+01 -1.3978E+01 -7.4807E-02  4.7216E+00  4.1376E-01  2.0083E+01
             7.9757E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2986.67961394381        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  1.0045E+00  2.0736E-01  1.0972E-01  8.3569E-01  1.6740E-01  8.9525E-01  1.6020E+00  1.3814E+00  1.5285E+00  6.5143E-01
             1.9050E+00
 PARAMETER:  1.0453E-01 -1.4733E+00 -2.1099E+00 -7.9497E-02 -1.6873E+00 -1.0649E-02  5.7127E-01  4.2309E-01  5.2426E-01 -3.2859E-01
             7.4450E-01
 GRADIENT:   5.8958E-01 -7.0165E-01 -1.3201E-01  1.6093E+00  4.7393E-01 -6.0370E-01 -1.6552E-01  3.3272E-01 -4.0037E-01  3.9558E-01
            -2.2099E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2986.68686073129        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      947
 NPARAMETR:  1.0045E+00  2.0740E-01  1.0952E-01  8.3413E-01  1.6719E-01  8.9624E-01  1.6030E+00  1.3797E+00  1.5320E+00  6.4985E-01
             1.9068E+00
 PARAMETER:  1.0451E-01 -1.4731E+00 -2.1116E+00 -8.1365E-02 -1.6886E+00 -9.5429E-03  5.7186E-01  4.2184E-01  5.2659E-01 -3.3101E-01
             7.4544E-01
 GRADIENT:   5.0165E-01  2.0875E-01  3.1600E-02  6.7374E-01 -6.0679E-01 -1.6792E-01  2.1202E-02  3.0049E-02 -2.3622E-02  2.7925E-02
            -2.9856E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      947
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9105E-04  1.7395E-02  2.2343E-02  3.3132E-03  3.0172E-02
 SE:             2.9609E-02  2.6549E-02  2.2025E-02  2.7020E-02  2.0984E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7599E-01  5.1234E-01  3.1038E-01  9.0241E-01  1.5047E-01

 ETASHRINKSD(%)  8.0755E-01  1.1057E+01  2.6212E+01  9.4810E+00  2.9702E+01
 ETASHRINKVR(%)  1.6086E+00  2.0891E+01  4.5554E+01  1.8063E+01  5.0581E+01
 EBVSHRINKSD(%)  1.1657E+00  1.0031E+01  2.4117E+01  7.9829E+00  3.1025E+01
 EBVSHRINKVR(%)  2.3177E+00  1.9056E+01  4.2417E+01  1.5329E+01  5.2425E+01
 RELATIVEINF(%)  9.7656E+01  3.1680E+01  1.1255E+01  3.9016E+01  7.7018E+00
 EPSSHRINKSD(%)  2.2212E+01
 EPSSHRINKVR(%)  3.9491E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2986.6868607312949     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1332.5975009628842     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.31
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2986.687       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.07E-01  1.10E-01  8.34E-01  1.67E-01  8.96E-01  1.60E+00  1.38E+00  1.53E+00  6.50E-01  1.91E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.367
Stop Time:
Fri Oct  1 01:31:23 CDT 2021
