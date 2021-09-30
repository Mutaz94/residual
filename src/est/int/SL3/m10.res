Wed Sep 29 03:55:28 CDT 2021
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
$DATA ../../../../data/int/SL3/dat10.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      986
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

 TOT. NO. OF OBS RECS:      886
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -730.985994326496        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7201E+02  1.3574E+02  3.2435E+01  1.4470E+02  9.9749E+01  2.9843E+01 -1.0223E+02 -1.6299E+02 -8.0031E+01 -2.5966E+01
            -5.6851E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2699.34358873845        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0485E+00  1.1981E+00  1.4543E+00  9.4786E-01  1.2240E+00  1.2213E+00  1.0750E+00  8.6704E-01  8.0108E-01  1.1083E+00
             2.5363E+00
 PARAMETER:  1.4738E-01  2.8072E-01  4.7456E-01  4.6456E-02  3.0216E-01  2.9988E-01  1.7233E-01 -4.2674E-02 -1.2179E-01  2.0285E-01
             1.0307E+00
 GRADIENT:   1.7477E+02  7.7897E+01  8.0398E+00  4.7077E+01 -9.1038E+00  7.3005E+01  1.0102E+01 -1.9541E+00 -1.7926E+01 -2.3571E+01
            -4.2783E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2707.06891831576        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      221
 NPARAMETR:  1.0455E+00  1.2549E+00  2.5341E+00  9.4790E-01  1.5302E+00  1.1098E+00  9.3761E-01  7.5237E-01  9.7813E-01  1.6612E+00
             2.5396E+00
 PARAMETER:  1.4450E-01  3.2708E-01  1.0298E+00  4.6496E-02  5.2542E-01  2.0419E-01  3.5577E-02 -1.8452E-01  7.7886E-02  6.0751E-01
             1.0320E+00
 GRADIENT:   8.1656E+01  3.8411E+01 -4.1348E+00  7.1632E+01 -9.9718E+00  1.6631E+01  9.0013E+00 -2.8050E+00  6.5588E+00  2.3297E+01
            -4.2943E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2721.06254701742        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      399
 NPARAMETR:  9.8851E-01  1.2220E+00  3.7375E+00  9.2956E-01  1.6629E+00  1.0396E+00  7.8549E-01  2.8291E+00  9.1971E-01  1.4901E+00
             2.5495E+00
 PARAMETER:  8.8442E-02  3.0048E-01  1.4184E+00  2.6952E-02  6.0857E-01  1.3887E-01 -1.4145E-01  1.1400E+00  1.6302E-02  4.9882E-01
             1.0359E+00
 GRADIENT:  -2.0170E+01 -1.3354E+01 -7.5999E+00 -1.1224E+01  8.1157E+00 -3.2878E+00 -2.4043E-02  4.3116E+00 -4.4156E+00  1.6419E+00
             1.2797E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2722.29371585951        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      574
 NPARAMETR:  1.0011E+00  1.1509E+00  4.5423E+00  9.7593E-01  1.6541E+00  1.0446E+00  5.0852E-01  2.9173E+00  1.0599E+00  1.4636E+00
             2.5508E+00
 PARAMETER:  1.0108E-01  2.4052E-01  1.6134E+00  7.5633E-02  6.0328E-01  1.4368E-01 -5.7626E-01  1.1706E+00  1.5813E-01  4.8088E-01
             1.0364E+00
 GRADIENT:   5.5840E+00 -3.2538E+00  1.8501E+00 -5.2406E+00 -4.5687E+00 -1.0506E+00  2.0675E+00  8.9284E-02  5.5254E+00 -3.1032E+00
             2.8714E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2723.13805408567        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      749
 NPARAMETR:  9.9777E-01  1.0214E+00  5.0279E+00  1.0619E+00  1.6442E+00  1.0497E+00  1.6188E-01  2.9477E+00  1.0285E+00  1.4702E+00
             2.5483E+00
 PARAMETER:  9.7770E-02  1.2121E-01  1.7150E+00  1.6002E-01  5.9727E-01  1.4852E-01 -1.7209E+00  1.1810E+00  1.2815E-01  4.8537E-01
             1.0354E+00
 GRADIENT:  -5.2894E-01 -2.6287E+00 -5.0162E-01 -3.9488E-01  7.5930E-01  1.0657E+00  2.4654E-01  2.2950E-02  7.3491E-01  1.9176E-02
             1.5327E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2723.31108850532        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      924
 NPARAMETR:  9.9816E-01  1.0873E+00  4.9122E+00  1.0148E+00  1.6663E+00  1.0469E+00  3.1355E-02  2.9932E+00  1.0818E+00  1.4960E+00
             2.5474E+00
 PARAMETER:  9.8155E-02  1.8366E-01  1.6917E+00  1.1474E-01  6.1060E-01  1.4586E-01 -3.3624E+00  1.1963E+00  1.7861E-01  5.0278E-01
             1.0351E+00
 GRADIENT:   6.2919E-02  1.7241E-01 -3.2418E-02  5.9686E-01 -5.4263E-02  8.0035E-02  1.1763E-02  4.3493E-02  3.7516E-01  1.4839E-01
             2.4920E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2723.31615273973        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1099
 NPARAMETR:  9.9808E-01  1.0852E+00  4.9172E+00  1.0160E+00  1.6656E+00  1.0468E+00  1.0000E-02  2.9927E+00  1.0792E+00  1.4942E+00
             2.5473E+00
 PARAMETER:  9.8074E-02  1.8177E-01  1.6927E+00  1.1584E-01  6.1018E-01  1.4575E-01 -4.9460E+00  1.1962E+00  1.7623E-01  5.0157E-01
             1.0350E+00
 GRADIENT:  -8.6640E-02  5.8831E-02 -1.8244E-02  6.9701E-02  9.1464E-03  4.2821E-02  0.0000E+00  2.3100E-02 -3.0121E-02 -2.7046E-02
             1.5111E-01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2723.31615273973        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1121
 NPARAMETR:  9.9808E-01  1.0852E+00  4.9172E+00  1.0160E+00  1.6656E+00  1.0468E+00  1.0000E-02  2.9927E+00  1.0792E+00  1.4942E+00
             2.5473E+00
 PARAMETER:  9.8074E-02  1.8177E-01  1.6927E+00  1.1584E-01  6.1018E-01  1.4575E-01 -4.9460E+00  1.1962E+00  1.7623E-01  5.0157E-01
             1.0350E+00
 GRADIENT:  -8.6640E-02  5.8831E-02 -1.8244E-02  6.9701E-02  9.1464E-03  4.2821E-02  0.0000E+00  2.3100E-02 -3.0121E-02 -2.7046E-02
             1.5111E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1121
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5253E-03 -8.5885E-04 -3.9374E-02 -1.1771E-03 -2.6904E-02
 SE:             2.9536E-02  2.4736E-04  1.6856E-02  2.8192E-02  2.4532E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3187E-01  5.1658E-04  1.9498E-02  9.6670E-01  2.7278E-01

 ETASHRINKSD(%)  1.0490E+00  9.9171E+01  4.3529E+01  5.5526E+00  1.7816E+01
 ETASHRINKVR(%)  2.0871E+00  9.9993E+01  6.8110E+01  1.0797E+01  3.2458E+01
 EBVSHRINKSD(%)  1.3345E+00  9.9270E+01  4.9202E+01  5.8155E+00  1.4950E+01
 EBVSHRINKVR(%)  2.6513E+00  9.9995E+01  7.4195E+01  1.1293E+01  2.7665E+01
 RELATIVEINF(%)  9.7272E+01  5.9546E-04  1.2156E+01  1.0598E+01  4.1147E+01
 EPSSHRINKSD(%)  1.6881E+01
 EPSSHRINKVR(%)  3.0912E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2723.3161527397288     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1094.9570719010487     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.12
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    12.76
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2723.316       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.98E-01  1.09E+00  4.92E+00  1.02E+00  1.67E+00  1.05E+00  1.00E-02  2.99E+00  1.08E+00  1.49E+00  2.55E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.94E+02
 
 TH 2
+       -1.65E+02  5.10E+02
 
 TH 3
+        9.70E-01  1.45E+00  6.47E-03
 
 TH 4
+       -2.34E+02  6.49E+02  1.80E+00  8.25E+02
 
 TH 5
+       -5.81E+00 -4.16E+01 -1.52E-01 -5.24E+01  3.92E+00
 
 TH 6
+        1.97E+01 -8.60E+00  1.86E-03 -1.14E+01  3.42E-01  4.49E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        4.70E-02 -2.90E+00 -9.03E-03 -3.67E+00  2.39E-01  3.44E-02  0.00E+00  1.93E-02
 
 TH 9
+       -7.41E-02 -3.30E+01 -1.10E-01 -4.17E+01  2.89E+00  3.65E-01  0.00E+00  2.00E-01  2.26E+00
 
 TH10
+        3.05E+00 -3.59E+00 -6.03E-03 -4.61E+00  2.18E-01  9.78E-02  0.00E+00  2.29E-02  2.15E-01  3.87E-02
 
 TH11
+       -4.29E+00 -2.14E+01 -3.32E-02 -2.71E+01  7.05E-01  2.83E-01  0.00E+00  2.87E-01  1.67E+00  4.74E-01  1.34E+01
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.92E+02
 
 TH 2
+       -1.70E+01  5.40E+02
 
 TH 3
+        5.85E-02  5.99E+00  1.40E+00
 
 TH 4
+       -1.97E+01  5.78E+02 -1.82E+00  8.21E+02
 
 TH 5
+       -1.61E+00 -7.38E+01 -8.33E+00 -2.27E+01  1.27E+02
 
 TH 6
+        3.82E+00 -2.92E+00  3.63E-03 -5.94E+00 -8.98E-01  1.72E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -2.22E-01 -6.42E+00 -9.69E-01 -8.19E-01  3.37E+00 -9.11E-02  0.00E+00  3.69E+00
 
 TH 9
+        2.90E+00 -9.39E+01  7.60E-02  1.05E+01  1.16E+00 -1.54E+00  0.00E+00 -3.62E-01  1.35E+02
 
 TH10
+        1.17E+00 -1.54E+01 -1.65E+00  3.96E+00 -1.53E+01  5.37E-01  0.00E+00  3.13E+00  1.83E+00  4.79E+01
 
 TH11
+       -1.27E+01 -2.54E+01 -4.12E-01 -2.15E+01 -2.26E+00  2.37E+00  0.00E+00  2.68E+00  7.86E+00  2.63E+00  1.75E+02
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.91E+02
 
 TH 2
+        1.91E+02  5.36E+02
 
 TH 3
+        7.80E+00  7.95E+00  1.44E+00
 
 TH 4
+        1.38E+02  5.86E+02 -1.45E+00  8.20E+02
 
 TH 5
+       -1.04E+02 -1.01E+02 -9.53E+00 -3.28E+01  1.32E+02
 
 TH 6
+        6.32E+01  7.16E+00  1.26E+00 -5.82E+00 -1.95E+00  1.58E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        8.09E-01 -4.30E-01 -3.10E-02 -2.16E+00 -1.94E+00 -9.27E-01  0.00E+00  1.84E+00
 
 TH 9
+       -5.06E+01 -8.20E+01 -3.34E-01 -9.70E+00  2.29E+01 -2.95E+00  0.00E+00 -2.75E+00  9.85E+01
 
 TH10
+        5.46E+00  1.07E+01 -5.33E-02  7.84E+00 -1.97E+01 -1.61E+01  0.00E+00  3.35E+00 -1.08E+01  3.73E+01
 
 TH11
+       -8.23E+01  7.97E+01  2.27E+01 -6.32E+01 -1.94E+02 -1.69E+01  0.00E+00  2.07E+01  2.09E-01  8.02E+01  2.41E+03
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       40.996
Stop Time:
Wed Sep 29 03:56:11 CDT 2021
