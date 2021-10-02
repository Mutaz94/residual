Fri Oct  1 14:57:17 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat70.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2115.98886534429        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8693E+02  2.8089E+01 -3.6968E+00  5.1440E+01  3.9049E+00  4.6351E+01  3.0817E+00  3.4155E+00  3.2403E-01  2.6346E+01
            -5.3356E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2122.24011075144        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0358E+00  9.6998E-01  1.0588E+00  1.0361E+00  9.9896E-01  1.0158E+00  9.9714E-01  9.7990E-01  1.0438E+00  7.9579E-01
             1.0610E+00
 PARAMETER:  1.3515E-01  6.9523E-02  1.5714E-01  1.3542E-01  9.8960E-02  1.1565E-01  9.7138E-02  7.9698E-02  1.4291E-01 -1.2842E-01
             1.5918E-01
 GRADIENT:   4.5920E+00  3.7104E+00  1.2739E+01 -9.5715E+00  6.2880E+00  2.3172E+00  4.5604E-01 -5.7108E+00  3.7579E+00 -2.3142E+00
            -1.0274E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2123.57992457551        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0381E+00  7.6767E-01  9.8160E-01  1.1778E+00  8.6713E-01  9.9774E-01  1.1080E+00  9.6869E-01  9.4178E-01  6.7030E-01
             1.0588E+00
 PARAMETER:  1.3741E-01 -1.6439E-01  8.1424E-02  2.6368E-01 -4.2563E-02  9.7734E-02  2.0258E-01  6.8189E-02  4.0012E-02 -3.0003E-01
             1.5716E-01
 GRADIENT:   1.2568E+01  1.5339E+01 -2.5183E+00  3.4622E+01 -2.4713E+00 -4.4768E+00 -3.6253E+00  5.6002E-01 -4.2084E-01 -4.1606E+00
            -1.0415E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2124.54250983405        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0296E+00  6.7037E-01  1.0148E+00  1.2201E+00  8.5055E-01  1.0123E+00  1.3715E+00  8.9746E-01  8.7473E-01  7.0854E-01
             1.0753E+00
 PARAMETER:  1.2914E-01 -2.9992E-01  1.1471E-01  2.9894E-01 -6.1872E-02  1.1227E-01  4.1588E-01 -8.1843E-03 -3.3837E-02 -2.4455E-01
             1.7263E-01
 GRADIENT:  -2.6103E+00  5.3229E+00  5.6169E+00  3.0353E+00 -7.8876E+00  2.0254E+00 -7.5372E-01 -2.0787E+00 -2.7920E+00  2.4130E-01
             3.6769E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2125.18191388224        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      724
 NPARAMETR:  1.0261E+00  4.2270E-01  1.2283E+00  1.3875E+00  8.6527E-01  9.9810E-01  1.4374E+00  1.1247E+00  8.5320E-01  7.5909E-01
             1.0644E+00
 PARAMETER:  1.2574E-01 -7.6109E-01  3.0567E-01  4.2754E-01 -4.4718E-02  9.8102E-02  4.6282E-01  2.1752E-01 -5.8764E-02 -1.7564E-01
             1.6237E-01
 GRADIENT:   4.7735E-01  5.8019E+00  2.7379E+00  1.3488E+01 -9.4491E+00 -1.7608E+00  9.6558E-01  2.0557E+00  3.5905E+00  1.7893E+00
            -3.1438E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2125.41075099579        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      901
 NPARAMETR:  1.0236E+00  2.9199E-01  1.2919E+00  1.4687E+00  8.5627E-01  9.9788E-01  1.4882E+00  1.1624E+00  8.1280E-01  7.5517E-01
             1.0671E+00
 PARAMETER:  1.2330E-01 -1.1310E+00  3.5608E-01  4.8441E-01 -5.5173E-02  9.7874E-02  4.9755E-01  2.5051E-01 -1.0727E-01 -1.8081E-01
             1.6495E-01
 GRADIENT:   6.8783E-01  3.5643E+00  1.6987E+00  1.4546E+01 -3.1165E+00 -8.6339E-01  8.5197E-02 -5.2742E-01 -5.2177E-01 -2.8931E-01
            -2.0078E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2125.52543521175        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1087             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0236E+00  2.6185E-01  1.3005E+00  1.4742E+00  8.5365E-01  9.9966E-01  1.3633E+00  1.1752E+00  8.0904E-01  7.5857E-01
             1.0692E+00
 PARAMETER:  1.2337E-01 -1.2400E+00  3.6273E-01  4.8810E-01 -5.8238E-02  9.9656E-02  4.0992E-01  2.6147E-01 -1.1190E-01 -1.7632E-01
             1.6694E-01
 GRADIENT:   4.8945E+02  3.5782E+01  8.3614E+00  7.7214E+02  7.7153E+00  4.0180E+01  1.5447E+00  9.0395E-01  1.2279E+01  5.3100E-01
             1.6453E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2125.52663947212        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1255
 NPARAMETR:  1.0233E+00  2.6217E-01  1.3003E+00  1.4751E+00  8.5324E-01  9.9952E-01  1.3658E+00  1.1756E+00  8.0965E-01  7.5918E-01
             1.0692E+00
 PARAMETER:  1.2305E-01 -1.2387E+00  3.6258E-01  4.8870E-01 -5.8720E-02  9.9516E-02  4.1174E-01  2.6176E-01 -1.1115E-01 -1.7552E-01
             1.6695E-01
 GRADIENT:  -6.1952E-01  6.5324E-02  3.4848E-01  2.7668E-01  1.9518E-01 -3.6405E-02 -1.3898E-03  1.2872E-02 -1.0177E-01  2.9110E-02
             2.2540E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1255
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.3684E-04 -5.7126E-03 -2.6443E-02 -2.8931E-03 -3.1472E-02
 SE:             2.9875E-02  6.0819E-03  1.9325E-02  2.8990E-02  1.9302E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8566E-01  3.4758E-01  1.7120E-01  9.2051E-01  1.0300E-01

 ETASHRINKSD(%)  1.0000E-10  7.9625E+01  3.5260E+01  2.8792E+00  3.5336E+01
 ETASHRINKVR(%)  1.0000E-10  9.5849E+01  5.8087E+01  5.6755E+00  5.8185E+01
 EBVSHRINKSD(%)  3.6878E-01  8.0061E+01  3.7035E+01  3.2436E+00  3.4305E+01
 EBVSHRINKVR(%)  7.3621E-01  9.6025E+01  6.0354E+01  6.3819E+00  5.6841E+01
 RELATIVEINF(%)  9.5964E+01  1.9480E-01  8.3742E+00  6.0167E+00  5.7790E+00
 EPSSHRINKSD(%)  3.3614E+01
 EPSSHRINKVR(%)  5.5929E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2125.5266394721239     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1206.5881062674512     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2125.527       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.62E-01  1.30E+00  1.48E+00  8.53E-01  1.00E+00  1.37E+00  1.18E+00  8.10E-01  7.59E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.592
Stop Time:
Fri Oct  1 14:57:37 CDT 2021
