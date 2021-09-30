Wed Sep 29 12:32:27 CDT 2021
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
$DATA ../../../../data/spa/A2/dat4.csv ignore=@
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
Current Date:       29 SEP 2021
Days until program expires : 200
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -872.142225072536        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7912E+02  5.0837E+01  8.2412E+01  1.1110E+01  1.4974E+02  1.9161E+01 -2.1682E+01 -5.9513E+01 -6.5081E+01 -8.9280E+01
            -1.2490E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1311.11206780805        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1491E+00  9.1074E-01  7.9926E-01  1.0851E+00  7.6090E-01  1.3005E+00  9.7985E-01  1.1343E+00  1.1940E+00  9.9165E-01
             2.4109E+00
 PARAMETER:  2.3895E-01  6.4993E-03 -1.2407E-01  1.8168E-01 -1.7325E-01  3.6278E-01  7.9643E-02  2.2601E-01  2.7729E-01  9.1615E-02
             9.8002E-01
 GRADIENT:   3.6839E+02  1.6772E+01  3.0040E+01  7.0746E+00 -2.8364E+01  6.2009E+01  7.0675E+00  4.4825E-01  1.7823E+01  1.6424E+01
            -2.5986E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1326.88998027797        NO. OF FUNC. EVALS.:  85
 CUMULATIVE NO. OF FUNC. EVALS.:      168
 NPARAMETR:  1.1428E+00  7.6587E-01  2.9627E-01  1.1153E+00  4.0385E-01  1.2123E+00  7.5814E-01  1.2422E+00  1.0408E+00  4.8170E-01
             2.2528E+00
 PARAMETER:  2.3350E-01 -1.6675E-01 -1.1165E+00  2.0916E-01 -8.0672E-01  2.9254E-01 -1.7689E-01  3.1690E-01  1.4002E-01 -6.3043E-01
             9.1216E-01
 GRADIENT:   3.8311E+02  9.1067E+01  4.4172E+01  1.5705E+02 -9.0784E+00  3.3635E+01 -9.3338E+00 -3.5049E+00 -1.3913E+01  9.2157E+00
            -1.8097E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1358.18347587893        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  9.6762E-01  7.2882E-01  2.9760E-01  1.0259E+00  4.0514E-01  1.0102E+00  1.0889E+00  1.2406E+00  9.7857E-01  2.0476E-01
             2.2613E+00
 PARAMETER:  6.7081E-02 -2.1633E-01 -1.1120E+00  1.2560E-01 -8.0353E-01  1.1015E-01  1.8516E-01  3.1560E-01  7.8340E-02 -1.4859E+00
             9.1594E-01
 GRADIENT:   4.1649E+01  9.6703E+00  4.8183E+01  3.9487E+00  4.6272E+01 -6.6662E+00  3.6794E+00 -4.7103E+00 -6.3788E+00  2.1286E+00
             3.0343E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1359.31388017980        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  9.8124E-01  7.2996E-01  2.9758E-01  1.0375E+00  4.0513E-01  1.0566E+00  1.0415E+00  1.2406E+00  1.0333E+00  1.5946E-01
             2.2614E+00
 PARAMETER:  8.1064E-02 -2.1477E-01 -1.1121E+00  1.3681E-01 -8.0355E-01  1.5506E-01  1.4069E-01  3.1560E-01  1.3272E-01 -1.7360E+00
             9.1597E-01
 GRADIENT:   2.0650E+00  2.4056E+00  3.0129E+01  3.6502E+00  6.3285E-01  1.1941E+00 -9.3817E-02 -6.7309E+00  1.3130E+00  9.0200E-01
            -7.3974E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1359.76344116181        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      630
 NPARAMETR:  9.7936E-01  7.2844E-01  2.9733E-01  1.0342E+00  4.0515E-01  1.0523E+00  1.0620E+00  1.2405E+00  1.0197E+00  3.8768E-02
             2.2626E+00
 PARAMETER:  7.9148E-02 -2.1686E-01 -1.1129E+00  1.3363E-01 -8.0351E-01  1.5101E-01  1.6011E-01  3.1555E-01  1.1946E-01 -3.1502E+00
             9.1652E-01
 GRADIENT:  -1.4301E+00  2.4641E-02  3.0162E+01 -8.8803E-01  2.9938E+00 -2.0824E-01  1.2164E-01 -7.5731E+00 -6.8167E-01  5.0298E-02
            -7.8702E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1359.81856579545        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      818             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7975E-01  7.2859E-01  2.9721E-01  1.0344E+00  4.0514E-01  1.0526E+00  1.0608E+00  1.2444E+00  1.0219E+00  2.4104E-02
             2.2632E+00
 PARAMETER:  7.9539E-02 -2.1664E-01 -1.1133E+00  1.3381E-01 -8.0351E-01  1.5130E-01  1.5903E-01  3.1869E-01  1.2162E-01 -3.6254E+00
             9.1677E-01
 GRADIENT:   6.7688E+01  9.4003E+00  4.5322E+01  1.8761E+01  5.1296E+01  1.2548E+01  8.6345E-01 -6.9265E+00  2.1592E+00  3.1009E-02
             3.3503E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1359.81856579545        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  9.7976E-01  7.2862E-01  2.9727E-01  1.0344E+00  4.0520E-01  1.0526E+00  1.0607E+00  1.2444E+00  1.0218E+00  2.3246E-02
             2.2636E+00
 PARAMETER:  7.9539E-02 -2.1664E-01 -1.1133E+00  1.3381E-01 -8.0351E-01  1.5130E-01  1.5903E-01  3.1869E-01  1.2162E-01 -3.6254E+00
             9.1677E-01
 GRADIENT:  -8.4582E-01 -2.3184E+04 -4.4659E+03 -1.9643E-01 -6.2428E+03 -1.2900E-01  1.3802E-01  1.5729E+04  4.1291E+04  1.8906E-02
            -2.7844E+03
 NUMSIGDIG:         2.4         2.3         2.3         3.0         2.3         2.6         1.8         2.3         2.3         0.6
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      893
 NO. OF SIG. DIGITS IN FINAL EST.:  0.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.9664E-04 -6.7169E-05 -2.6248E-02 -6.2387E-03 -2.0051E-04
 SE:             2.9381E-02  2.0618E-02  1.9349E-02  2.5174E-02  7.0399E-04
 N:                     100         100         100         100         100

 P VAL.:         9.7294E-01  9.9740E-01  1.7492E-01  8.0427E-01  7.7578E-01

 ETASHRINKSD(%)  1.5700E+00  3.0927E+01  3.5180E+01  1.5664E+01  9.7642E+01
 ETASHRINKVR(%)  3.1154E+00  5.2289E+01  5.7983E+01  2.8874E+01  9.9944E+01
 EBVSHRINKSD(%)  1.7363E+00  3.0802E+01  3.8648E+01  1.5223E+01  9.7499E+01
 EBVSHRINKVR(%)  3.4424E+00  5.2116E+01  6.2359E+01  2.8129E+01  9.9937E+01
 RELATIVEINF(%)  9.3462E+01  2.2564E+00  3.6241E+00  1.0732E+01  3.2680E-03
 EPSSHRINKSD(%)  3.7110E+01
 EPSSHRINKVR(%)  6.0448E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1359.8185657954471     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -624.66773923170888     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.86
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.53
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1359.819       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.80E-01  7.29E-01  2.97E-01  1.03E+00  4.05E-01  1.05E+00  1.06E+00  1.24E+00  1.02E+00  2.41E-02  2.26E+00
 


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
+        1.01E+03
 
 TH 2
+        8.12E+06  9.05E+02
 
 TH 3
+       -2.37E+02  2.40E+03  1.14E+06
 
 TH 4
+       -9.25E+06  2.73E+02  1.01E+03  7.17E+02
 
 TH 5
+        7.87E+06 -2.22E+03 -1.17E+06 -2.78E+06  1.19E+06
 
 TH 6
+        8.05E+06 -5.00E+06 -2.23E+02 -9.91E+00  2.42E+06  1.67E+02
 
 TH 7
+       -7.59E+06  4.71E+06 -3.10E+01  5.37E+06  1.85E+03  4.72E+00  4.47E+01
 
 TH 8
+        1.45E+02 -2.01E+06  2.35E+03 -1.29E+03  9.16E+02 -1.99E+06  1.19E+01  7.96E+05
 
 TH 9
+        4.58E+02 -1.55E+01 -5.23E+02 -4.77E-01 -3.10E+06  5.94E+02 -5.99E+06 -2.55E+06  9.83E+01
 
 TH10
+       -7.25E-02  2.18E+01  7.74E+00 -9.57E-01  1.14E+01 -3.55E-03  1.10E+00 -7.43E+00 -2.77E+01  3.33E+01
 
 TH11
+       -4.08E+01  1.99E+02 -1.22E+03  2.33E+02 -2.24E+02 -3.40E+01  3.11E+00  4.05E+02 -7.36E+01  2.11E+00  3.01E+04
 
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
 #CPUT: Total CPU Time in Seconds,       18.450
Stop Time:
Wed Sep 29 12:32:47 CDT 2021
