Fri Oct  1 17:55:09 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1521.07274567860        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1118E+02  8.9469E+01  1.3395E+02  1.6936E+02  1.6423E+02  3.1960E+01 -4.9196E+01 -1.9392E+02 -1.1779E+00 -5.5752E+01
            -1.5871E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2038.82466375400        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0056E+00  1.0332E+00  9.4507E-01  9.4463E-01  9.6391E-01  9.8919E-01  1.0417E+00  8.2143E-01  9.2850E-01  8.6519E-01
             2.0824E+00
 PARAMETER:  1.0558E-01  1.3261E-01  4.3501E-02  4.3033E-02  6.3238E-02  8.9134E-02  1.4081E-01 -9.6710E-02  2.5810E-02 -4.4808E-02
             8.3350E-01
 GRADIENT:   5.4659E+01  6.1755E+00  1.2370E+01 -2.8411E+00  2.0129E+01  1.7199E+00 -8.8996E+00  1.5927E+00 -8.9971E+00 -1.4783E+01
            -6.0914E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2043.08211931892        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      180
 NPARAMETR:  9.9463E-01  8.4898E-01  6.2049E-01  1.0274E+00  7.1279E-01  9.7019E-01  1.1546E+00  4.1167E-01  9.0169E-01  7.7485E-01
             2.1288E+00
 PARAMETER:  9.4613E-02 -6.3722E-02 -3.7725E-01  1.2705E-01 -2.3857E-01  6.9733E-02  2.4371E-01 -7.8754E-01 -3.4827E-03 -1.5509E-01
             8.5555E-01
 GRADIENT:  -9.2850E+01 -8.6470E+00 -1.9374E+01  1.4577E+00  2.5681E+01 -1.9683E+01 -8.2424E+00  3.0552E+00 -6.7126E+00  4.9325E-01
             2.9549E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2046.36413045822        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      357
 NPARAMETR:  1.0334E+00  8.0570E-01  6.2374E-01  1.0691E+00  6.8626E-01  1.0144E+00  1.2325E+00  3.6783E-01  9.2257E-01  7.6077E-01
             2.1098E+00
 PARAMETER:  1.3283E-01 -1.1604E-01 -3.7202E-01  1.6685E-01 -2.7649E-01  1.1431E-01  3.0903E-01 -9.0014E-01  1.9412E-02 -1.7342E-01
             8.4658E-01
 GRADIENT:  -4.3347E+00  3.7995E+00 -1.0138E+01  3.2367E+01  1.4610E+01  1.0287E+00 -3.8851E+00  2.4668E+00  2.1078E+00  1.2205E+00
             1.9783E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2048.55997744757        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  1.0345E+00  6.9803E-01  5.3187E-01  1.0857E+00  5.8642E-01  1.0135E+00  1.3893E+00  6.1942E-02  8.9947E-01  6.6144E-01
             2.0678E+00
 PARAMETER:  1.3394E-01 -2.5950E-01 -5.3136E-01  1.8223E-01 -4.3372E-01  1.1345E-01  4.2879E-01 -2.6816E+00 -5.9538E-03 -3.1333E-01
             8.2647E-01
 GRADIENT:  -3.8775E-01 -8.4380E-02  6.3331E-01 -8.0553E-01 -1.1668E+00  2.2289E-02  1.1940E-01  7.9945E-02  2.1203E-01 -3.4407E-02
             1.6656E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2048.59344195574        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      688
 NPARAMETR:  1.0350E+00  6.9570E-01  5.2820E-01  1.0874E+00  5.8340E-01  1.0132E+00  1.3888E+00  2.1149E-02  8.9891E-01  6.5821E-01
             2.0645E+00
 PARAMETER:  1.3440E-01 -2.6284E-01 -5.3829E-01  1.8377E-01 -4.3889E-01  1.1310E-01  4.2847E-01 -3.7562E+00 -6.5770E-03 -3.1823E-01
             8.2490E-01
 GRADIENT:   5.7023E-01  5.1711E-01 -1.4004E-01  1.9233E+00 -5.4823E-01 -1.7458E-01 -1.9126E-01  9.3788E-03  2.9018E-02 -2.9461E-01
            -2.4252E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2048.60035554614        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      863
 NPARAMETR:  1.0345E+00  6.9847E-01  5.3159E-01  1.0859E+00  5.8655E-01  1.0133E+00  1.3868E+00  1.0000E-02  8.9908E-01  6.6277E-01
             2.0648E+00
 PARAMETER:  1.3388E-01 -2.5886E-01 -5.3188E-01  1.8238E-01 -4.3349E-01  1.1319E-01  4.2701E-01 -5.2193E+00 -6.3812E-03 -3.1132E-01
             8.2504E-01
 GRADIENT:  -4.6516E-01  3.2450E-02  2.2883E-01  6.0585E-02 -6.4844E-01 -9.5805E-02 -6.1791E-02  0.0000E+00  7.5272E-03 -6.9257E-02
            -6.5603E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2048.60114666806        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1026
 NPARAMETR:  1.0346E+00  7.0391E-01  5.3611E-01  1.0843E+00  5.9149E-01  1.0133E+00  1.3823E+00  1.0000E-02  8.9975E-01  6.6724E-01
             2.0653E+00
 PARAMETER:  1.3402E-01 -2.5111E-01 -5.2342E-01  1.8091E-01 -4.2512E-01  1.1324E-01  4.2371E-01 -7.1957E+00 -5.6400E-03 -3.0460E-01
             8.2526E-01
 GRADIENT:  -1.3836E-01  8.2142E-02  6.0656E-02 -3.5161E-02 -1.4869E-01 -3.0041E-02 -2.6887E-02  0.0000E+00  9.4899E-03 -1.9969E-02
            -1.8159E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1026
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.0325E-04  4.9518E-03 -2.7288E-04 -6.4953E-03  9.5035E-04
 SE:             2.9558E-02  2.2699E-02  1.7484E-04  2.6305E-02  2.0029E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7562E-01  8.2731E-01  1.1857E-01  8.0496E-01  9.6215E-01

 ETASHRINKSD(%)  9.7711E-01  2.3956E+01  9.9414E+01  1.1876E+01  3.2901E+01
 ETASHRINKVR(%)  1.9447E+00  4.2173E+01  9.9997E+01  2.2342E+01  5.4977E+01
 EBVSHRINKSD(%)  1.2119E+00  2.3127E+01  9.9359E+01  1.1886E+01  3.3975E+01
 EBVSHRINKVR(%)  2.4090E+00  4.0905E+01  9.9996E+01  2.2359E+01  5.6407E+01
 RELATIVEINF(%)  9.7515E+01  1.0262E+01  6.4184E-04  3.6850E+01  2.9617E+00
 EPSSHRINKSD(%)  2.5768E+01
 EPSSHRINKVR(%)  4.4896E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2048.6011466680602     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -945.87490682245311     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2048.601       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  7.04E-01  5.36E-01  1.08E+00  5.91E-01  1.01E+00  1.38E+00  1.00E-02  9.00E-01  6.67E-01  2.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.034
Stop Time:
Fri Oct  1 17:55:28 CDT 2021