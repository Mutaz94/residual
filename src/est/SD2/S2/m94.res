Fri Oct  1 13:55:03 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat94.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2115.08166768890        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3121E+02 -3.3259E+01 -4.8471E+01  1.8898E+00  7.2694E+01  3.5591E+01  1.1156E-01  1.2658E+01 -2.3774E+01  2.8977E+01
             1.3459E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2125.22264539470        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0039E+00  9.9543E-01  1.1107E+00  1.0741E+00  9.9923E-01  1.0622E+00  9.9062E-01  9.3373E-01  1.1720E+00  8.1510E-01
             1.0050E+00
 PARAMETER:  1.0388E-01  9.5415E-02  2.0501E-01  1.7151E-01  9.9228E-02  1.6035E-01  9.0578E-02  3.1427E-02  2.5870E-01 -1.0445E-01
             1.0502E-01
 GRADIENT:   9.8722E+00 -5.4776E-01 -1.1111E+01  1.9829E+01  4.9444E+01  1.0523E+01  6.1390E+00  1.2462E+00  1.1161E+01 -5.1478E-01
            -1.8911E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2126.22137513395        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  1.0007E+00  9.2133E-01  9.3535E-01  1.1201E+00  8.6511E-01  9.9247E-01  9.0403E-01  8.4872E-01  1.1702E+00  6.3788E-01
             1.0160E+00
 PARAMETER:  1.0072E-01  1.8066E-02  3.3164E-02  2.1339E-01 -4.4904E-02  9.2439E-02 -8.9057E-04 -6.4025E-02  2.5714E-01 -3.4960E-01
             1.1583E-01
 GRADIENT:   2.3167E+00  4.8382E+00 -1.6399E+01  3.6766E+01  2.1373E+01 -1.7008E+01 -1.8741E+00  8.9091E-01  1.6403E+01 -7.0890E+00
             3.8201E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2128.39647196614        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.9966E-01  8.1636E-01  1.0249E+00  1.1723E+00  8.5934E-01  1.0349E+00  1.0422E+00  8.0243E-01  1.0421E+00  7.1741E-01
             1.0068E+00
 PARAMETER:  9.9655E-02 -1.0290E-01  1.2464E-01  2.5895E-01 -5.1588E-02  1.3434E-01  1.4133E-01 -1.2011E-01  1.4125E-01 -2.3211E-01
             1.0673E-01
 GRADIENT:   3.3514E+00  1.0051E+01  6.8385E+00  9.3474E+00 -1.2220E+01  1.0010E+00  3.2532E-01 -3.7917E-01 -1.3643E-01  3.2239E-01
            -1.0871E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2128.56661655152        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.9561E-01  6.8001E-01  1.1114E+00  1.2576E+00  8.5305E-01  1.0286E+00  1.0235E+00  8.7397E-01  1.0035E+00  7.3382E-01
             1.0084E+00
 PARAMETER:  9.5602E-02 -2.8565E-01  2.0566E-01  3.2918E-01 -5.8940E-02  1.2818E-01  1.2321E-01 -3.4709E-02  1.0345E-01 -2.0949E-01
             1.0834E-01
 GRADIENT:  -1.1340E+00  4.4739E+00  2.2453E+00  6.8262E+00 -4.6099E+00 -6.6415E-01  7.6052E-01  3.3014E-03  6.9376E-01  6.5390E-01
             3.2678E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2128.64388490269        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  9.9376E-01  5.5421E-01  1.1874E+00  1.3357E+00  8.4630E-01  1.0266E+00  9.1842E-01  9.3633E-01  9.7078E-01  7.4404E-01
             1.0084E+00
 PARAMETER:  9.3743E-02 -4.9021E-01  2.7177E-01  3.8943E-01 -6.6884E-02  1.2626E-01  1.4903E-02  3.4217E-02  7.0340E-02 -1.9566E-01
             1.0835E-01
 GRADIENT:  -9.6250E-01  1.8995E+00  1.1121E+00  4.2502E+00 -2.0076E+00 -7.1741E-01  6.9677E-01  7.3910E-02  1.4420E+00  5.5493E-01
             1.9682E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2128.70922266987        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1065
 NPARAMETR:  9.9406E-01  5.2849E-01  1.1983E+00  1.3477E+00  8.4429E-01  1.0278E+00  7.9037E-01  9.4500E-01  9.6116E-01  7.4267E-01
             1.0084E+00
 PARAMETER:  9.4039E-02 -5.3774E-01  2.8093E-01  3.9843E-01 -6.9263E-02  1.2746E-01 -1.3525E-01  4.3428E-02  6.0381E-02 -1.9750E-01
             1.0835E-01
 GRADIENT:   4.8590E-01  3.3839E-01 -2.8168E-01 -1.1962E+00  9.7231E-01 -8.5059E-02  2.5960E-01 -2.5639E-01 -1.2449E+00 -4.2395E-01
            -1.2357E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2128.76020167310        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1243             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9448E-01  5.1923E-01  1.2036E+00  1.3494E+00  8.4407E-01  1.0287E+00  5.4377E-01  9.5115E-01  9.7413E-01  7.5480E-01
             1.0082E+00
 PARAMETER:  9.4467E-02 -5.5541E-01  2.8529E-01  3.9967E-01 -6.9525E-02  1.2827E-01 -5.0923E-01  4.9915E-02  7.3786E-02 -1.8131E-01
             1.0814E-01
 GRADIENT:   4.1889E+02  6.2701E+01  6.9805E+00  5.1580E+02  7.1266E+00  5.9878E+01  1.4860E+00  4.1974E-01  1.2647E+01  1.0997E+00
             1.2940E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2128.76532660632        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1427             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9456E-01  5.2108E-01  1.2053E+00  1.3492E+00  8.4528E-01  1.0286E+00  5.1876E-01  9.5212E-01  9.7446E-01  7.5493E-01
             1.0081E+00
 PARAMETER:  9.4543E-02 -5.5185E-01  2.8670E-01  3.9953E-01 -6.8091E-02  1.2820E-01 -5.5631E-01  5.0937E-02  7.4130E-02 -1.8113E-01
             1.0802E-01
 GRADIENT:   4.1915E+02  6.3377E+01  7.1806E+00  5.1604E+02  7.1326E+00  5.9837E+01  1.4622E+00  3.0030E-01  1.2152E+01  8.7817E-01
             1.1402E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2128.76754995731        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1614             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9443E-01  5.2235E-01  1.2066E+00  1.3484E+00  8.4619E-01  1.0285E+00  5.1287E-01  9.5345E-01  9.7495E-01  7.5558E-01
             1.0080E+00
 PARAMETER:  9.4411E-02 -5.4942E-01  2.8781E-01  3.9892E-01 -6.7011E-02  1.2814E-01 -5.6773E-01  5.2329E-02  7.4627E-02 -1.8028E-01
             1.0799E-01
 GRADIENT:   4.1892E+02  6.3436E+01  7.2999E+00  5.1441E+02  7.1706E+00  5.9825E+01  1.4640E+00  3.0977E-01  1.2052E+01  8.7055E-01
             1.1469E+00

0ITERATION NO.:   48    OBJECTIVE VALUE:  -2128.76758304947        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     1708
 NPARAMETR:  9.9431E-01  5.2238E-01  1.2066E+00  1.3486E+00  8.4622E-01  1.0284E+00  5.0911E-01  9.5325E-01  9.7493E-01  7.5546E-01
             1.0080E+00
 PARAMETER:  9.4290E-02 -5.4936E-01  2.8785E-01  3.9905E-01 -6.6971E-02  1.2804E-01 -5.7509E-01  5.2118E-02  7.4609E-02 -1.8043E-01
             1.0798E-01
 GRADIENT:  -3.1202E-01 -1.9657E-01 -2.9456E-01  5.7319E-01 -8.3164E-01 -4.1052E-02  7.2239E-04  1.9756E-02 -8.7273E-02  3.7005E-02
             4.3345E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1708
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0531E-04 -9.9926E-03 -2.3655E-02 -1.2927E-03 -2.5133E-02
 SE:             2.9876E-02  4.9842E-03  1.7355E-02  2.9295E-02  2.1111E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8384E-01  4.4978E-02  1.7288E-01  9.6480E-01  2.3384E-01

 ETASHRINKSD(%)  1.0000E-10  8.3302E+01  4.1859E+01  1.8575E+00  2.9276E+01
 ETASHRINKVR(%)  1.0000E-10  9.7212E+01  6.6197E+01  3.6805E+00  4.9981E+01
 EBVSHRINKSD(%)  3.3604E-01  8.4485E+01  4.3982E+01  2.1002E+00  2.8064E+01
 EBVSHRINKVR(%)  6.7096E-01  9.7593E+01  6.8620E+01  4.1563E+00  4.8253E+01
 RELATIVEINF(%)  9.8298E+01  1.8213E-01  6.6863E+00  1.0530E+01  7.8411E+00
 EPSSHRINKSD(%)  3.3671E+01
 EPSSHRINKVR(%)  5.6005E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2128.7675830494677     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1209.8290498447950     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2128.768       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  5.22E-01  1.21E+00  1.35E+00  8.46E-01  1.03E+00  5.09E-01  9.53E-01  9.75E-01  7.55E-01  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.536
Stop Time:
Fri Oct  1 13:55:32 CDT 2021
