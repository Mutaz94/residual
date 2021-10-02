Fri Oct  1 16:49:47 CDT 2021
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
$DATA ../../../../data/SD3/B/dat53.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2199.84039807454        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4988E+02 -6.5852E+01  1.0566E+02 -3.3700E+01  6.5330E+01  3.0734E+01  5.4448E+00 -4.4206E+02 -5.9342E+01  9.7436E+00
            -3.6181E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2246.11265292153        NO. OF FUNC. EVALS.:  86
 CUMULATIVE NO. OF FUNC. EVALS.:       99
 NPARAMETR:  9.7323E-01  1.0054E+00  9.8392E-01  9.9545E-01  9.8877E-01  9.8521E-01  9.9481E-01  1.1134E+00  9.8192E-01  9.9251E-01
             9.9046E-01
 PARAMETER:  7.2864E-02  1.0536E-01  8.3785E-02  9.5444E-02  8.8709E-02  8.5101E-02  9.4801E-02  2.0738E-01  8.1755E-02  9.2480E-02
             9.0414E-02
 GRADIENT:   3.9717E+02 -5.6413E+01  8.4598E+01 -3.1770E+01  5.3905E+01  3.0070E+01  6.0379E+00 -3.8142E+02 -2.8649E+01  1.1132E+01
            -2.4512E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2255.88609339219        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  9.7303E-01  1.0052E+00  9.8404E-01  9.9532E-01  9.8864E-01  1.0358E+00  9.9669E-01  1.1131E+00  1.3848E+00  9.5484E-01
             9.9059E-01
 PARAMETER:  7.2658E-02  1.0523E-01  8.3916E-02  9.5314E-02  8.8578E-02  1.3521E-01  9.6688E-02  2.0711E-01  4.2557E-01  5.3786E-02
             9.0545E-02
 GRADIENT:  -9.7663E+00 -1.2320E+02  7.0720E+01 -6.1713E+01  3.3465E+01 -1.0470E+01 -2.2695E+00 -2.8921E+02 -1.9245E+01  4.1777E+00
             5.2053E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2266.32521800159        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      453
 NPARAMETR:  9.7367E-01  1.0053E+00  9.8402E-01  9.9535E-01  9.8867E-01  1.0533E+00  1.2040E+00  1.1131E+00  2.5929E+00  8.4201E-01
             9.9056E-01
 PARAMETER:  7.3322E-02  1.0526E-01  8.3889E-02  9.5340E-02  8.8603E-02  1.5190E-01  2.8566E-01  2.0718E-01  1.0528E+00 -7.1960E-02
             9.0518E-02
 GRADIENT:   2.2995E+00 -1.1100E+02  4.9295E+01 -1.9441E+01  1.9935E+01  3.0186E+00 -1.1994E+00 -8.8131E+01  7.1895E-01  1.3972E-01
             2.5981E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2266.45088519748        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      635
 NPARAMETR:  9.7401E-01  1.0053E+00  9.8402E-01  9.9585E-01  9.8867E-01  1.0469E+00  1.2093E+00  1.1143E+00  2.5783E+00  8.4117E-01
             9.9007E-01
 PARAMETER:  7.3665E-02  1.0526E-01  8.3889E-02  9.5841E-02  8.8602E-02  1.4582E-01  2.9003E-01  2.0823E-01  1.0471E+00 -7.2962E-02
             9.0017E-02
 GRADIENT:   2.7768E+00 -1.0993E+02  4.9359E+01 -1.9365E+01  1.9909E+01  5.6266E-01 -5.6568E-01 -8.9064E+01 -1.0786E-01  1.6055E-01
             2.5432E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2275.43077501607        NO. OF FUNC. EVALS.: 148
 CUMULATIVE NO. OF FUNC. EVALS.:      783
 NPARAMETR:  9.7286E-01  1.0153E+00  9.7676E-01  9.9876E-01  9.8867E-01  1.0445E+00  1.2080E+00  1.2168E+00  2.5782E+00  8.4092E-01
             9.9010E-01
 PARAMETER:  7.2486E-02  1.1514E-01  7.6489E-02  9.8756E-02  8.8602E-02  1.4352E-01  2.8895E-01  2.9626E-01  1.0471E+00 -7.3253E-02
             9.0049E-02
 GRADIENT:  -2.6149E+00 -1.0488E+02  3.8335E+01 -1.5668E+01  1.5042E+01 -1.3311E+00  1.7361E+00 -8.3151E+01  1.8028E+01  9.5335E-01
             2.8346E+01

0ITERATION NO.:   26    OBJECTIVE VALUE:  -2275.43077501607        NO. OF FUNC. EVALS.:  32
 CUMULATIVE NO. OF FUNC. EVALS.:      815
 NPARAMETR:  9.7295E-01  1.0152E+00  9.7685E-01  9.9884E-01  9.8875E-01  1.0460E+00  1.2083E+00  1.2172E+00  2.5806E+00  8.4100E-01
             9.9001E-01
 PARAMETER:  7.2486E-02  1.1514E-01  7.6489E-02  9.8756E-02  8.8602E-02  1.4352E-01  2.8895E-01  2.9626E-01  1.0471E+00 -7.3253E-02
             9.0049E-02
 GRADIENT:  -2.8947E+04  5.0167E+04 -5.7839E+04 -2.8967E+04 -5.7885E+04 -1.6159E+00 -2.0037E+04 -9.8743E+03 -5.5741E+03 -5.7898E+04
             2.8970E+04
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.2         2.3         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      815
 NO. OF SIG. DIGITS IN FINAL EST.:  1.2
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5691E-03  2.7468E-02 -4.9676E-02  2.8023E-02 -5.0629E-02
 SE:             3.0015E-02  1.9708E-02  2.5636E-02  2.7026E-02  2.0895E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3179E-01  1.6338E-01  5.2658E-02  2.9979E-01  1.5390E-02

 ETASHRINKSD(%)  1.0000E-10  3.3977E+01  1.4116E+01  9.4600E+00  3.0001E+01
 ETASHRINKVR(%)  1.0000E-10  5.6409E+01  2.6239E+01  1.8025E+01  5.1001E+01
 EBVSHRINKSD(%)  3.7808E-01  2.9465E+01  4.4732E+01  3.4848E+00  3.0938E+01
 EBVSHRINKVR(%)  7.5473E-01  5.0249E+01  6.9454E+01  6.8482E+00  5.2304E+01
 RELATIVEINF(%)  9.9226E+01  2.0343E+01  1.6802E+01  7.2914E+01  1.3984E+01
 EPSSHRINKSD(%)  3.3327E+01
 EPSSHRINKVR(%)  5.5547E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2275.4307750160679     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1172.7045351704608     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.86
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2275.431       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.73E-01  1.02E+00  9.77E-01  9.99E-01  9.89E-01  1.04E+00  1.21E+00  1.22E+00  2.58E+00  8.41E-01  9.90E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.912
Stop Time:
Fri Oct  1 16:50:04 CDT 2021
