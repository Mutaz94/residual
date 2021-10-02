Fri Oct  1 17:24:36 CDT 2021
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
$DATA ../../../../data/SD3/A1/dat53.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1838.07782144609        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2088E+02 -6.3003E+01  7.4475E+01  6.1130E+00  8.4573E+01  1.6960E+01  2.9432E+00 -1.0542E+02  4.6507E+01  3.1959E+00
            -1.1416E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2128.40990281227        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1452E+00  1.1099E+00  8.8886E-01  1.0098E+00  9.4178E-01  1.2382E+00  8.6840E-01  1.1038E+00  7.0952E-01  8.6395E-01
             1.8154E+00
 PARAMETER:  2.3559E-01  2.0429E-01 -1.7816E-02  1.0974E-01  4.0013E-02  3.1362E-01 -4.1108E-02  1.9880E-01 -2.4316E-01 -4.6235E-02
             6.9630E-01
 GRADIENT:   4.8900E+02  4.2806E+01  1.5984E+01  1.4929E+00 -2.7282E+01  5.9370E+01 -2.5240E+00 -6.6234E+00 -8.6228E+00 -1.7251E+00
             2.0373E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2133.15539252758        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      242
 NPARAMETR:  1.1381E+00  1.3779E+00  9.6190E-01  8.8711E-01  1.1628E+00  1.1882E+00  8.0572E-01  1.8941E+00  7.6576E-01  8.8035E-01
             1.7602E+00
 PARAMETER:  2.2936E-01  4.2054E-01  6.1157E-02 -1.9785E-02  2.5085E-01  2.7244E-01 -1.1601E-01  7.3876E-01 -1.6688E-01 -2.7441E-02
             6.6542E-01
 GRADIENT:   2.2619E+02  4.9737E+01 -1.3725E+01  6.8277E+01 -1.8610E+00  1.0268E+01 -3.0419E-01 -1.3776E+01 -5.5061E+00 -1.4220E+01
             4.1203E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2153.35280635328        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      430             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8611E-01  1.4725E+00  1.1627E+00  8.5964E-01  1.3262E+00  1.1703E+00  8.1696E-01  2.5231E+00  7.4816E-01  8.9455E-01
             1.7519E+00
 PARAMETER:  8.6017E-02  4.8699E-01  2.5075E-01 -5.1242E-02  3.8230E-01  2.5725E-01 -1.0216E-01  1.0255E+00 -1.9013E-01 -1.1436E-02
             6.6070E-01
 GRADIENT:   1.2495E+02  2.0635E+02 -1.7590E+01  1.3066E+02  5.7660E+01  7.7674E+01  1.8344E+00  6.9587E-01 -4.9052E+00 -2.1778E+01
             2.1523E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2154.92258213219        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:      573
 NPARAMETR:  9.8414E-01  1.4675E+00  1.1716E+00  8.5575E-01  1.3237E+00  1.1600E+00  8.1667E-01  2.5298E+00  7.5180E-01  9.0419E-01
             1.7522E+00
 PARAMETER:  8.4014E-02  4.8354E-01  2.5838E-01 -5.5778E-02  3.8040E-01  2.4845E-01 -1.0252E-01  1.0282E+00 -1.8529E-01 -7.1473E-04
             6.6085E-01
 GRADIENT:  -1.6779E+00  7.6678E+01 -1.7411E+01  1.0284E+02  2.9960E+01  3.4341E+01  1.2139E+00 -6.6073E+00 -5.2339E+00 -2.0576E+01
             1.5341E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2156.84029235798        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  9.9172E-01  1.4591E+00  1.1743E+00  8.5575E-01  1.3234E+00  1.0219E+00  8.1186E-01  2.5262E+00  7.5120E-01  9.0384E-01
             1.7523E+00
 PARAMETER:  9.1681E-02  4.7780E-01  2.6067E-01 -5.5773E-02  3.8023E-01  1.2165E-01 -1.0843E-01  1.0267E+00 -1.8609E-01 -1.1019E-03
             6.6094E-01
 GRADIENT:   1.3598E+01  6.6854E+01 -1.7750E+01  9.6295E+01  3.2579E+01 -1.1930E+01  7.8184E-01 -6.9252E+00 -5.0137E+00 -2.0641E+01
             1.4696E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2157.89682460166        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      938
 NPARAMETR:  9.8543E-01  1.4404E+00  1.1793E+00  8.5558E-01  1.3219E+00  1.0513E+00  8.0584E-01  2.5244E+00  7.5024E-01  9.0331E-01
             1.7502E+00
 PARAMETER:  8.5323E-02  4.6491E-01  2.6493E-01 -5.5979E-02  3.7905E-01  1.5004E-01 -1.1587E-01  1.0260E+00 -1.8736E-01 -1.6918E-03
             6.5970E-01
 GRADIENT:   9.3646E-01  4.2147E+01 -1.8283E+01  7.8113E+01  3.6371E+01 -4.0327E-01 -1.2199E-01 -6.7179E+00 -4.6389E+00 -2.0558E+01
             1.4705E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2158.08023208158        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1118
 NPARAMETR:  9.9067E-01  1.4377E+00  1.1813E+00  8.5516E-01  1.3206E+00  1.0618E+00  8.0758E-01  2.5271E+00  7.5052E-01  9.0445E-01
             1.7483E+00
 PARAMETER:  9.0628E-02  4.6304E-01  2.6663E-01 -5.6471E-02  3.7808E-01  1.5995E-01 -1.1371E-01  1.0271E+00 -1.8699E-01 -4.2566E-04
             6.5866E-01
 GRADIENT:   1.1401E+01  3.8137E+01 -1.7905E+01  7.3905E+01  3.5131E+01  3.3790E+00  2.0562E-01 -6.4401E+00 -4.3480E+00 -2.0247E+01
             1.3788E+01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2158.08023208158        NO. OF FUNC. EVALS.:  27
 CUMULATIVE NO. OF FUNC. EVALS.:     1145
 NPARAMETR:  9.8968E-01  1.4380E+00  1.1815E+00  8.5520E-01  1.3208E+00  1.0617E+00  8.0740E-01  2.5259E+00  7.5046E-01  9.0441E-01
             1.7488E+00
 PARAMETER:  9.0628E-02  4.6304E-01  2.6663E-01 -5.6471E-02  3.7808E-01  1.5995E-01 -1.1371E-01  1.0271E+00 -1.8699E-01 -4.2566E-04
             6.5866E-01
 GRADIENT:   1.0468E+01 -8.2096E+02 -7.6224E+02 -3.8999E+03 -1.0135E+03  1.2425E+03  1.6399E-01  3.8089E+02  2.1224E+03  3.9535E+03
            -5.9390E+02
 NUMSIGDIG:         1.0         2.3         2.3         2.3         2.3         2.3         1.7         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1145
 NO. OF SIG. DIGITS IN FINAL EST.:  1.0
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.0346E-03 -2.7919E-02 -1.1932E-02 -1.4794E-02 -5.1153E-02
 SE:             2.9474E-02  2.2540E-02  1.9611E-02  2.0131E-02  2.1802E-02
 N:                     100         100         100         100         100

 P VAL.:         8.9112E-01  2.1548E-01  5.4290E-01  4.6242E-01  1.8963E-02

 ETASHRINKSD(%)  1.2582E+00  2.4487E+01  3.4302E+01  3.2558E+01  2.6960E+01
 ETASHRINKVR(%)  2.5005E+00  4.2978E+01  5.6838E+01  5.4516E+01  4.6652E+01
 EBVSHRINKSD(%)  8.0142E-01  2.4402E+01  3.6461E+01  3.5807E+01  3.2703E+01
 EBVSHRINKVR(%)  1.5964E+00  4.2849E+01  5.9628E+01  5.8793E+01  5.4711E+01
 RELATIVEINF(%)  9.8338E+01  6.2546E+00  1.5013E+01  4.7342E+00  1.2913E+01
 EPSSHRINKSD(%)  2.7679E+01
 EPSSHRINKVR(%)  4.7696E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2158.0802320815847     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1055.3539922359776     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.81
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2158.080       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  1.44E+00  1.18E+00  8.55E-01  1.32E+00  1.06E+00  8.08E-01  2.53E+00  7.51E-01  9.04E-01  1.75E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.862
Stop Time:
Fri Oct  1 17:25:00 CDT 2021
