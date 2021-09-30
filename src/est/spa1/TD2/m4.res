Thu Sep 30 01:50:12 CDT 2021
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
$DATA ../../../../data/spa1/TD2/dat4.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       30 SEP 2021
Days until program expires : 199
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2079.98795692448        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9012E+02  5.1446E+00 -2.3344E+01  8.0577E+01  9.4170E+01  2.4906E+01  1.7216E+00 -4.1619E+00  3.2004E+00 -2.4850E+01
             2.5225E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2085.30553837436        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      176
 NPARAMETR:  9.8157E-01  1.0217E+00  9.8448E-01  1.0117E+00  9.2437E-01  1.0947E+00  1.0017E+00  1.0222E+00  1.0202E+00  1.0697E+00
             9.5335E-01
 PARAMETER:  8.1398E-02  1.2142E-01  8.4359E-02  1.1160E-01  2.1362E-02  1.9048E-01  1.0168E-01  1.2198E-01  1.1996E-01  1.6742E-01
             5.2231E-02
 GRADIENT:   9.2488E+00  2.2138E+01  1.1642E+01  2.0947E+01 -2.5166E+01  5.6938E+00  1.6754E+00 -1.9875E+00 -7.6949E-01 -5.5179E-01
            -9.2185E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2085.67136325187        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      357
 NPARAMETR:  9.8263E-01  1.1219E+00  9.8705E-01  9.5109E-01  9.7174E-01  1.0915E+00  9.1103E-01  1.0607E+00  1.0819E+00  1.1427E+00
             9.5762E-01
 PARAMETER:  8.2479E-02  2.1500E-01  8.6965E-02  4.9850E-02  7.1337E-02  1.8756E-01  6.8241E-03  1.5895E-01  1.7873E-01  2.3339E-01
             5.6692E-02
 GRADIENT:   1.0274E+01  2.7401E+01  1.2620E+01  1.9986E+01 -2.4466E+01  4.2715E+00  1.8125E+00 -2.2450E+00 -3.9994E-01  3.8232E+00
            -4.8411E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2086.35107247559        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  9.7709E-01  1.1064E+00  1.0361E+00  9.4468E-01  1.0047E+00  1.0801E+00  7.7723E-01  1.1938E+00  1.1187E+00  1.1413E+00
             9.6306E-01
 PARAMETER:  7.6826E-02  2.0112E-01  1.3545E-01  4.3087E-02  1.0470E-01  1.7707E-01 -1.5202E-01  2.7710E-01  2.1221E-01  2.3219E-01
             6.2357E-02
 GRADIENT:   1.0827E-01  6.3792E-01  1.6884E+00  8.8052E-01 -1.3563E+00  1.7831E-01 -3.0522E-01 -7.3563E-01 -2.2407E-01 -8.9197E-01
            -4.2892E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2086.45608754128        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      718             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7754E-01  1.1794E+00  9.4002E-01  8.9832E-01  9.9819E-01  1.0824E+00  8.1611E-01  1.1066E+00  1.1466E+00  1.1257E+00
             9.6369E-01
 PARAMETER:  7.7280E-02  2.6498E-01  3.8146E-02 -7.2260E-03  9.8188E-02  1.7922E-01 -1.0321E-01  2.0130E-01  2.3683E-01  2.1841E-01
             6.3015E-02
 GRADIENT:   4.7501E+02  1.6629E+02  2.5530E+00  7.5549E+01  7.1740E+00  1.2359E+02  4.0155E+00  5.5089E-01  2.1427E+01  2.0997E+00
             1.2837E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2086.46343907715        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      896            RESET HESSIAN, TYPE II
 NPARAMETR:  9.7877E-01  1.1757E+00  9.3764E-01  8.9524E-01  9.9928E-01  1.0829E+00  8.1871E-01  1.1035E+00  1.1411E+00  1.1280E+00
             9.6336E-01
 PARAMETER:  7.8545E-02  2.6187E-01  3.5615E-02 -1.0666E-02  9.9275E-02  1.7962E-01 -1.0003E-01  1.9847E-01  2.3203E-01  2.2042E-01
             6.2673E-02
 GRADIENT:   4.7776E+02  1.5671E+02  1.1582E+00  6.8846E+01  1.0321E+01  1.2367E+02  3.8326E+00  7.7114E-01  1.9970E+01  2.4517E+00
             1.2027E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2086.47479795680        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1071
 NPARAMETR:  9.7715E-01  1.1871E+00  9.2815E-01  8.9141E-01  9.9795E-01  1.0791E+00  8.1941E-01  1.0798E+00  1.1442E+00  1.1297E+00
             9.6316E-01
 PARAMETER:  7.6881E-02  2.7148E-01  2.5435E-02 -1.4956E-02  9.7948E-02  1.7612E-01 -9.9176E-02  1.7682E-01  2.3467E-01  2.2196E-01
             6.2468E-02
 GRADIENT:  -1.3975E+00  1.3659E+00  1.0602E+00  2.1967E+00 -8.9938E-01 -6.4478E-01 -7.7498E-02 -1.9844E-01 -1.5406E-01  1.8783E-01
            -1.3351E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2086.48767719902        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1248
 NPARAMETR:  9.7442E-01  1.2100E+00  8.9461E-01  8.7423E-01  9.9499E-01  1.0757E+00  8.2530E-01  1.0349E+00  1.1529E+00  1.1245E+00
             9.6310E-01
 PARAMETER:  7.4092E-02  2.9061E-01 -1.1367E-02 -3.4417E-02  9.4981E-02  1.7293E-01 -9.2011E-02  1.3434E-01  2.4232E-01  2.1734E-01
             6.2407E-02
 GRADIENT:  -7.2183E+00 -2.0940E-01  9.5368E-01  3.3535E-01 -5.4342E-01 -2.1051E+00 -1.1058E-01 -2.1402E-01 -3.4481E-01  2.2834E-01
            -1.4885E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2086.51805295668        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  9.7908E-01  1.2100E+00  8.9461E-01  8.7306E-01  9.9652E-01  1.0834E+00  8.2739E-01  1.0349E+00  1.1515E+00  1.1245E+00
             9.6327E-01
 PARAMETER:  7.8858E-02  2.9060E-01 -1.1366E-02 -3.5752E-02  9.6513E-02  1.8012E-01 -8.9480E-02  1.3434E-01  2.4110E-01  2.1734E-01
             6.2582E-02
 GRADIENT:   1.9045E+00 -2.2428E+00  5.5589E-01 -1.1808E+00  9.9759E-01  8.5188E-01 -6.2146E-02 -2.0028E-01 -5.7344E-01  1.1391E-01
            -1.7131E-02

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2086.51829370381        NO. OF FUNC. EVALS.:  86
 CUMULATIVE NO. OF FUNC. EVALS.:     1499
 NPARAMETR:  9.7856E-01  1.2100E+00  8.9414E-01  8.7397E-01  9.9566E-01  1.0819E+00  8.2859E-01  1.0363E+00  1.1520E+00  1.1247E+00
             9.6330E-01
 PARAMETER:  7.8222E-02  2.9060E-01 -1.1366E-02 -3.4711E-02  9.5667E-02  1.7842E-01 -8.8022E-02  1.3434E-01  2.4110E-01  2.1734E-01
             6.2606E-02
 GRADIENT:  -7.1521E-01 -4.0877E-01  6.8316E-01  2.3234E-02  1.8361E-01 -4.5316E-01  3.2107E-03 -1.7428E-01 -3.5104E-01 -5.7936E+04
             6.4083E-03
 NUMSIGDIG:         2.1         2.9         1.4         3.7         2.8         1.9         3.2         1.1         1.9         2.3
                    4.1

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1499
 NO. OF SIG. DIGITS IN FINAL EST.:  1.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0606E-03 -2.9231E-02 -2.9826E-02  1.4228E-02 -3.4735E-02
 SE:             2.9957E-02  1.7499E-02  1.3003E-02  2.5852E-02  2.3173E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7176E-01  9.4819E-02  2.1799E-02  5.8208E-01  1.3388E-01

 ETASHRINKSD(%)  1.0000E-10  4.1378E+01  5.6440E+01  1.3392E+01  2.2369E+01
 ETASHRINKVR(%)  1.0000E-10  6.5634E+01  8.1025E+01  2.4991E+01  3.9734E+01
 EBVSHRINKSD(%)  2.7706E-01  4.1184E+01  6.0434E+01  1.4124E+01  1.9320E+01
 EBVSHRINKVR(%)  5.5335E-01  6.5407E+01  8.4346E+01  2.6253E+01  3.4908E+01
 RELATIVEINF(%)  9.9132E+01  1.9531E+00  2.5630E+00  4.9809E+00  1.6328E+01
 EPSSHRINKSD(%)  3.4856E+01
 EPSSHRINKVR(%)  5.7563E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2086.5182937038139     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1167.5797604991412     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.06
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.13
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2086.518       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.78E-01  1.21E+00  8.95E-01  8.74E-01  9.96E-01  1.08E+00  8.29E-01  1.03E+00  1.15E+00  1.12E+00  9.63E-01
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.87E+02
 
 TH 2
+       -6.81E+00  4.09E+02
 
 TH 3
+        3.60E+07  1.00E+07  3.93E+07
 
 TH 4
+       -2.52E+00  4.10E+02 -4.02E+07  8.04E+02
 
 TH 5
+        2.52E+00 -2.16E+02  3.53E+07  1.03E+02  5.86E+02
 
 TH 6
+        1.56E+00 -1.75E+00  1.19E+00 -9.83E-01  5.45E-01  1.69E+02
 
 TH 7
+        8.75E-01 -6.41E+00  4.37E+00 -6.60E+00 -1.01E+01  2.27E-01  3.37E+01
 
 TH 8
+       -4.92E-01 -1.59E+01 -2.53E+07  3.55E+00  3.72E+00 -2.05E-01  5.12E+00  1.62E+07
 
 TH 9
+        6.96E-01 -2.39E+01 -6.33E+00  3.38E+01 -1.48E+00 -2.77E-01  2.89E+01  1.84E+00  8.53E+01
 
 TH10
+        1.32E+07  3.66E+06  1.44E+07 -1.47E+07  1.29E+07 -1.18E+02 -4.87E+00 -9.25E+06  9.33E+03  5.27E+06
 
 TH11
+       -6.77E+00 -1.33E+01 -1.11E+01 -9.03E+00  3.78E-01  9.54E-01  7.02E+00  5.06E+00  3.80E+00  4.76E+03  4.25E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       31.265
Stop Time:
Thu Sep 30 01:50:44 CDT 2021
