Sat Sep 18 14:24:09 CDT 2021
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
$DATA ../../../../data/spa/TD1/dat100.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m100.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1657.99041222296        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2973E+02 -5.0612E+01 -2.7535E+01 -1.9052E+01  2.8495E+01 -9.8675E+00 -1.9922E+00  5.0533E+00  2.4157E+01 -5.1772E+00
             9.2129E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1663.92099499386        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.5970E-01  1.1113E+00  1.0668E+00  9.4244E-01  1.0722E+00  1.0192E+00  1.0242E+00  9.7458E-01  8.5281E-01  1.0618E+00
             9.7477E-01
 PARAMETER:  5.8863E-02  2.0555E-01  1.6468E-01  4.0718E-02  1.6969E-01  1.1900E-01  1.2395E-01  7.4255E-02 -5.9217E-02  1.5995E-01
             7.4447E-02
 GRADIENT:   4.1764E+01 -1.6306E+01  1.1969E+00 -2.0330E+01  8.1342E+00  3.2234E+00 -4.8742E+00 -1.8387E+00 -7.1500E+00 -7.1879E+00
            -4.2737E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1664.65658161141        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.6135E-01  1.1485E+00  1.1791E+00  9.3948E-01  1.1355E+00  1.0362E+00  9.8167E-01  1.0471E+00  9.1134E-01  1.1875E+00
             9.7361E-01
 PARAMETER:  6.0587E-02  2.3847E-01  2.6478E-01  3.7575E-02  2.2710E-01  1.3553E-01  8.1501E-02  1.4602E-01  7.1619E-03  2.7184E-01
             7.3254E-02
 GRADIENT:   4.6602E+01  8.4226E+00  4.1093E+00  3.9741E+00  2.3009E+00  1.0736E+01 -8.7562E-01 -3.5885E+00 -1.9598E+00  1.2021E+00
            -3.9377E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1665.27178745366        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      317
 NPARAMETR:  9.6297E-01  1.2956E+00  1.1303E+00  8.5183E-01  1.1761E+00  1.0316E+00  9.0016E-01  1.2663E+00  9.9049E-01  1.1757E+00
             9.8615E-01
 PARAMETER:  6.2270E-02  3.5897E-01  2.2246E-01 -6.0365E-02  2.6218E-01  1.3107E-01 -5.1843E-03  3.3608E-01  9.0447E-02  2.6188E-01
             8.6050E-02
 GRADIENT:   3.2497E+00  6.7766E+00  1.2476E+00  7.7968E+00 -2.5938E+00  6.7861E-01 -6.1642E-02  1.3515E-01 -4.3430E-01 -1.0325E+00
             1.6569E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1665.99896659759        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  9.6441E-01  1.6094E+00  7.5869E-01  6.3283E-01  1.2001E+00  1.0348E+00  8.0298E-01  1.0567E+00  1.1750E+00  1.1631E+00
             9.8138E-01
 PARAMETER:  6.3766E-02  5.7586E-01 -1.7616E-01 -3.5755E-01  2.8240E-01  1.3416E-01 -1.1943E-01  1.5519E-01  2.6124E-01  2.5113E-01
             8.1206E-02
 GRADIENT:   2.4357E+00 -2.4339E+00  7.3246E-01 -1.2014E+00 -1.7730E+00  1.1177E+00  1.1537E+00 -1.8948E-02  8.5225E-04 -1.9288E-01
             3.8008E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1666.28275172397        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  9.6426E-01  1.8472E+00  5.3458E-01  4.7869E-01  1.2448E+00  1.0326E+00  7.3259E-01  9.3423E-01  1.3846E+00  1.1757E+00
             9.8142E-01
 PARAMETER:  6.3602E-02  7.1368E-01 -5.2627E-01 -6.3670E-01  3.1898E-01  1.3206E-01 -2.1116E-01  3.1964E-02  4.2540E-01  2.6184E-01
             8.1249E-02
 GRADIENT:   2.7669E-01  1.0569E+01 -1.4700E-01  4.6565E+00 -8.8902E-01 -1.1897E-01 -1.2491E+00  4.9018E-02 -3.0186E-01 -1.2270E-01
            -5.1610E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1666.33614112866        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      844
 NPARAMETR:  9.6420E-01  1.9168E+00  4.7047E-01  4.2642E-01  1.2662E+00  1.0330E+00  7.2135E-01  8.7804E-01  1.4755E+00  1.1866E+00
             9.8274E-01
 PARAMETER:  6.3540E-02  7.5068E-01 -6.5403E-01 -7.5233E-01  3.3600E-01  1.3243E-01 -2.2663E-01 -3.0066E-02  4.8897E-01  2.7107E-01
             8.2591E-02
 GRADIENT:  -9.5909E-03  3.5566E-01 -4.4561E-02  1.4267E-01 -1.7242E-01 -9.7997E-04  8.8229E-03  5.7759E-02  2.2413E-02  3.5961E-02
             1.0752E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1666.33643794152        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  9.6421E-01  1.9228E+00  4.6269E-01  4.2193E-01  1.2668E+00  1.0330E+00  7.2072E-01  8.5067E-01  1.4826E+00  1.1861E+00
             9.8279E-01
 PARAMETER:  6.3558E-02  7.5377E-01 -6.7070E-01 -7.6291E-01  3.3651E-01  1.3244E-01 -2.2751E-01 -6.1728E-02  4.9377E-01  2.7071E-01
             8.2636E-02
 GRADIENT:  -4.1686E-03 -3.8752E-01 -1.5353E-02 -1.4438E-01  7.5662E-02 -4.4468E-03  7.3420E-02  1.9741E-02 -2.3867E-03 -1.4749E-03
             6.2809E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1666.33683804423        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1199
 NPARAMETR:  9.6416E-01  1.9206E+00  4.6261E-01  4.2348E-01  1.2647E+00  1.0330E+00  7.2117E-01  8.3703E-01  1.4789E+00  1.1845E+00
             9.8277E-01
 PARAMETER:  6.3504E-02  7.5263E-01 -6.7088E-01 -7.5924E-01  3.3487E-01  1.3250E-01 -2.2688E-01 -7.7894E-02  4.9133E-01  2.6930E-01
             8.2617E-02
 GRADIENT:  -1.3721E-01 -7.7824E-03 -6.3286E-03  7.0901E-03  1.5306E-02  2.0518E-02 -2.7127E-03  1.8028E-04 -7.4277E-04  1.2365E-03
            -1.0349E-03

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1666.33685679804        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1297
 NPARAMETR:  9.6427E-01  1.9204E+00  4.6308E-01  4.2364E-01  1.2648E+00  1.0329E+00  7.2120E-01  8.3940E-01  1.4788E+00  1.1846E+00
             9.8278E-01
 PARAMETER:  6.3619E-02  7.5253E-01 -6.6986E-01 -7.5888E-01  3.3494E-01  1.3242E-01 -2.2684E-01 -7.5062E-02  4.9120E-01  2.6938E-01
             8.2626E-02
 GRADIENT:   8.4292E-02  1.5396E-01  7.6559E-04 -3.2223E-03 -4.4831E-03 -1.5028E-02  3.5281E-03  3.7948E-04 -2.8487E-03 -1.9075E-03
             1.5585E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1297
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.7935E-05 -3.2151E-02 -1.9071E-02  3.2876E-02 -4.2779E-02
 SE:             2.9847E-02  2.4485E-02  6.3065E-03  2.0831E-02  2.2577E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9792E-01  1.8915E-01  2.4942E-03  1.1452E-01  5.8123E-02

 ETASHRINKSD(%)  7.5829E-03  1.7973E+01  7.8872E+01  3.0214E+01  2.4363E+01
 ETASHRINKVR(%)  1.5165E-02  3.2716E+01  9.5536E+01  5.1299E+01  4.2791E+01
 EBVSHRINKSD(%)  3.9160E-01  1.7080E+01  8.2334E+01  3.4435E+01  2.0319E+01
 EBVSHRINKVR(%)  7.8166E-01  3.1243E+01  9.6879E+01  5.7012E+01  3.6509E+01
 RELATIVEINF(%)  9.9162E+01  3.9348E+00  2.7364E-01  2.0962E+00  1.9065E+01
 EPSSHRINKSD(%)  4.4787E+01
 EPSSHRINKVR(%)  6.9515E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1666.3368567980415     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -931.18603023430330     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.35
 Elapsed covariance  time in seconds:     6.62
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1666.337       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.64E-01  1.92E+00  4.63E-01  4.24E-01  1.26E+00  1.03E+00  7.21E-01  8.39E-01  1.48E+00  1.18E+00  9.83E-01
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.99E-02  2.02E-01  2.04E-01  1.41E-01  1.41E-01  7.22E-02  6.70E-02  5.64E-02  3.35E-01  1.65E-01  6.38E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.96E-04
 
 TH 2
+       -3.75E-05  4.08E-02
 
 TH 3
+       -3.36E-04 -3.01E-02  4.18E-02
 
 TH 4
+       -1.23E-04 -2.77E-02  2.19E-02  2.00E-02
 
 TH 5
+       -1.36E-04  1.56E-02  1.84E-03 -1.05E-02  1.99E-02
 
 TH 6
+        6.60E-05 -6.05E-04 -4.73E-04  3.21E-04 -8.39E-04  5.21E-03
 
 TH 7
+        8.46E-05 -3.75E-03  1.44E-03  2.76E-03 -1.43E-03 -3.64E-04  4.48E-03
 
 TH 8
+        4.09E-04  5.53E-03 -3.05E-03 -3.94E-03  2.57E-03 -1.12E-03 -8.02E-04  3.18E-03
 
 TH 9
+        5.16E-04  4.17E-02 -7.04E-03 -2.86E-02  3.17E-02 -1.82E-03 -8.76E-03  1.16E-02  1.12E-01
 
 TH10
+       -2.67E-04  6.56E-03  8.97E-03 -4.50E-03  1.67E-02 -2.40E-03  4.33E-05  2.21E-04  1.87E-02  2.73E-02
 
 TH11
+        3.74E-05  2.20E-03 -1.58E-03 -1.81E-03  7.53E-04  2.40E-04 -1.12E-03  1.99E-03  4.38E-03 -1.67E-03  4.07E-03
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.99E-02
 
 TH 2
+       -6.20E-03  2.02E-01
 
 TH 3
+       -5.48E-02 -7.30E-01  2.04E-01
 
 TH 4
+       -2.90E-02 -9.71E-01  7.57E-01  1.41E-01
 
 TH 5
+       -3.22E-02  5.48E-01  6.39E-02 -5.27E-01  1.41E-01
 
 TH 6
+        3.05E-02 -4.15E-02 -3.20E-02  3.15E-02 -8.24E-02  7.22E-02
 
 TH 7
+        4.22E-02 -2.77E-01  1.05E-01  2.92E-01 -1.52E-01 -7.54E-02  6.70E-02
 
 TH 8
+        2.42E-01  4.85E-01 -2.64E-01 -4.95E-01  3.23E-01 -2.75E-01 -2.12E-01  5.64E-02
 
 TH 9
+        5.15E-02  6.17E-01 -1.03E-01 -6.05E-01  6.72E-01 -7.54E-02 -3.91E-01  6.15E-01  3.35E-01
 
 TH10
+       -5.40E-02  1.97E-01  2.65E-01 -1.92E-01  7.18E-01 -2.01E-01  3.92E-03  2.37E-02  3.38E-01  1.65E-01
 
 TH11
+        1.96E-02  1.70E-01 -1.21E-01 -2.01E-01  8.36E-02  5.22E-02 -2.61E-01  5.55E-01  2.05E-01 -1.59E-01  6.38E-02
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.34E+03
 
 TH 2
+        1.44E+02  5.06E+02
 
 TH 3
+        4.60E+01  1.05E+02  3.04E+02
 
 TH 4
+        8.97E+01  4.89E+02 -3.79E+02  1.39E+03
 
 TH 5
+       -2.61E+01 -1.28E+02 -1.98E+02  2.13E+02  3.50E+02
 
 TH 6
+       -1.07E+02  7.90E+00  5.89E+00  1.23E+01 -2.63E+01  2.60E+02
 
 TH 7
+       -4.58E+00  9.76E+00  5.67E+01 -1.07E+02 -7.44E+01  2.02E+00  3.11E+02
 
 TH 8
+       -4.34E+02 -4.18E+01  1.28E+01 -9.66E-02  3.34E+01  2.47E+02 -1.09E+02  1.14E+03
 
 TH 9
+        1.10E+01 -2.26E+01 -5.20E+01  6.45E+01 -2.60E+00 -1.55E+01  2.66E+01 -1.02E+02  4.07E+01
 
 TH10
+       -8.44E+00  2.47E+01 -3.06E+01  6.81E+01 -8.70E+01  3.89E+01 -5.09E+00  3.59E+01  8.80E+00  1.04E+02
 
 TH11
+        1.75E+02  6.52E+01 -1.89E+01  9.42E+01 -4.57E+01 -9.36E+01  9.08E+01 -4.55E+02  3.93E+01  3.34E+01  4.77E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.04
 #CPUT: Total CPU Time in Seconds,       23.057
Stop Time:
Sat Sep 18 14:24:33 CDT 2021