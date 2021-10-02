Sat Oct  2 00:08:02 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat61.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 NO. OF DATA RECS IN DATA SET:      500
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

 TOT. NO. OF OBS RECS:      400
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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1400.78454862941        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9385E+02  7.7197E+00  1.5714E+01  1.2622E+01  6.3478E+01  6.5151E+01 -2.6547E+01 -3.7755E+00 -1.1600E+01 -2.5317E+01
            -4.8328E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1471.81220384133        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1029E+00  9.9549E-01  1.0463E+00  1.0925E+00  9.4565E-01  1.0627E+00  1.2694E+00  7.8322E-01  8.5197E-01  7.2036E-01
             3.0640E+00
 PARAMETER:  1.9794E-01  9.5479E-02  1.4524E-01  1.8846E-01  4.4117E-02  1.6083E-01  3.3858E-01 -1.4434E-01 -6.0208E-02 -2.2801E-01
             1.2197E+00
 GRADIENT:   1.9700E+02  2.2470E+01  8.0418E+00  1.4821E+01 -3.4694E+01  4.2227E+01  1.7282E+01  3.8736E+00  8.9007E+00  1.2521E+01
             1.7328E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1494.20738806669        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      178
 NPARAMETR:  1.0454E+00  6.0759E-01  3.9832E-01  1.3125E+00  4.5185E-01  1.0238E+00  1.7558E+00  2.0479E-01  9.9926E-01  4.3556E-01
             2.3776E+00
 PARAMETER:  1.4444E-01 -3.9826E-01 -8.2051E-01  3.7191E-01 -6.9441E-01  1.2356E-01  6.6292E-01 -1.4858E+00  9.9258E-02 -7.3112E-01
             9.6607E-01
 GRADIENT:   4.1398E+00  2.9900E+01 -1.0258E+02  2.0313E+02  8.8621E+01  2.2115E+01  2.2942E+01  6.0378E-01  2.5431E+01  2.4274E+00
             1.1977E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1533.22310571029        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  1.0068E+00  5.4798E-01  7.8178E-01  1.3206E+00  6.8005E-01  9.2911E-01  1.7098E+00  2.1113E-01  8.6956E-01  8.4269E-01
             1.7336E+00
 PARAMETER:  1.0677E-01 -5.0152E-01 -1.4618E-01  3.7811E-01 -2.8559E-01  2.6469E-02  6.3637E-01 -1.4553E+00 -3.9768E-02 -7.1151E-02
             6.5022E-01
 GRADIENT:  -4.8146E+01  1.1656E+01 -1.4855E+01  4.7924E+01  2.2013E+01 -1.0689E+01 -4.0346E+00  4.3573E-01 -1.4618E+00 -4.2615E-01
            -8.6186E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1538.29912099090        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  1.0277E+00  3.6425E-01  4.8984E-01  1.3109E+00  4.4469E-01  9.5712E-01  2.2626E+00  2.6887E-02  8.2540E-01  6.3003E-01
             1.7056E+00
 PARAMETER:  1.2730E-01 -9.0992E-01 -6.1368E-01  3.7071E-01 -7.1039E-01  5.6178E-02  9.1651E-01 -3.5161E+00 -9.1881E-02 -3.6198E-01
             6.3390E-01
 GRADIENT:  -1.9881E+00  6.2954E+00  1.3622E+01  5.1632E+00 -2.2847E+01  8.7312E-02  8.3407E-01  2.3949E-03 -7.6594E-01 -2.2887E+00
            -1.9099E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1538.63026169423        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  1.0255E+00  2.9962E-01  5.6271E-01  1.3648E+00  4.8203E-01  9.5362E-01  2.5832E+00  1.9389E-02  8.2691E-01  6.9932E-01
             1.7177E+00
 PARAMETER:  1.2522E-01 -1.1052E+00 -4.7499E-01  4.1101E-01 -6.2975E-01  5.2515E-02  1.0490E+00 -3.8430E+00 -9.0058E-02 -2.5764E-01
             6.4098E-01
 GRADIENT:   1.4996E+00 -1.5794E-01 -6.6194E-01  3.4455E-01  1.4338E+00  2.0491E-01 -7.3599E-01  4.2561E-03  1.2271E+00  1.0081E+00
             5.8158E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1538.66661860178        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0250E+00  2.8909E-01  5.5013E-01  1.3637E+00  4.7204E-01  9.5330E-01  2.6609E+00  1.0008E-02  8.2185E-01  6.8635E-01
             1.7148E+00
 PARAMETER:  1.2472E-01 -1.1410E+00 -4.9761E-01  4.1024E-01 -6.5068E-01  5.2178E-02  1.0787E+00 -4.5044E+00 -9.6196E-02 -2.7636E-01
             6.3930E-01
 GRADIENT:   5.0780E-01  9.3975E-02  8.6388E-01 -1.7719E+00 -9.5475E-01  2.9804E-02  2.5168E-01  1.1249E-03  3.7446E-02  2.3227E-02
             4.1134E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1538.66661860178        NO. OF FUNC. EVALS.:  25
 CUMULATIVE NO. OF FUNC. EVALS.:      910
 NPARAMETR:  1.0250E+00  2.8909E-01  5.5013E-01  1.3637E+00  4.7204E-01  9.5330E-01  2.6609E+00  1.0008E-02  8.2185E-01  6.8635E-01
             1.7148E+00
 PARAMETER:  1.2472E-01 -1.1410E+00 -4.9761E-01  4.1024E-01 -6.5068E-01  5.2178E-02  1.0787E+00 -4.5044E+00 -9.6196E-02 -2.7636E-01
             6.3930E-01
 GRADIENT:  -1.6135E-01 -3.2901E-02  8.8141E-01  7.8407E-01 -7.4565E-01 -5.3621E-03  7.3518E-02  2.6078E-04  1.3378E-02  1.9573E-02
             5.8057E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      910
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1051E-03  3.9403E-02 -3.9109E-04 -2.5061E-02  1.2241E-02
 SE:             2.9550E-02  1.7986E-02  2.2499E-04  2.5834E-02  2.0526E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7017E-01  2.8467E-02  8.2162E-02  3.3201E-01  5.5094E-01

 ETASHRINKSD(%)  1.0026E+00  3.9745E+01  9.9246E+01  1.3453E+01  3.1235E+01
 ETASHRINKVR(%)  1.9951E+00  6.3693E+01  9.9994E+01  2.5097E+01  5.2713E+01
 EBVSHRINKSD(%)  1.2829E+00  4.8468E+01  9.9185E+01  1.0846E+01  2.6396E+01
 EBVSHRINKVR(%)  2.5494E+00  7.3445E+01  9.9993E+01  2.0516E+01  4.5825E+01
 RELATIVEINF(%)  9.6269E+01  7.1506E+00  2.9401E-04  2.7828E+01  2.3014E+00
 EPSSHRINKSD(%)  3.9184E+01
 EPSSHRINKVR(%)  6.3015E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1538.6666186017781     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -803.51579203803988     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1538.667       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  2.89E-01  5.50E-01  1.36E+00  4.72E-01  9.53E-01  2.66E+00  1.00E-02  8.22E-01  6.86E-01  1.71E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.706
Stop Time:
Sat Oct  2 00:08:16 CDT 2021
