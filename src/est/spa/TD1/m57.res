Sat Sep 18 14:08:48 CDT 2021
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
$DATA ../../../../data/spa/TD1/dat57.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1715.55573331933        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -2.8790E+01 -9.1160E+01 -5.5444E+01 -5.9989E+01  6.2028E+01  3.2176E+01  8.7870E+00  1.1859E+01  2.5586E+01  2.4972E+01
            -3.4920E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1730.39750167717        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0361E+00  1.0904E+00  1.1183E+00  1.0033E+00  1.0156E+00  8.9386E-01  9.2466E-01  9.4699E-01  8.8046E-01  8.5674E-01
             1.1144E+00
 PARAMETER:  1.3545E-01  1.8657E-01  2.1177E-01  1.0334E-01  1.1553E-01 -1.2205E-02  2.1670E-02  4.5530E-02 -2.7313E-02 -5.4622E-02
             2.0836E-01
 GRADIENT:   5.2389E+01  5.8524E+00  8.0850E+00 -4.7243E+00 -5.5611E+00 -7.2827E+00  3.0870E+00 -6.5261E-01 -2.7225E+00  1.6023E+00
             4.9239E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1731.17198979090        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0334E+00  1.1900E+00  9.2132E-01  9.4506E-01  9.7623E-01  9.1341E-01  8.2363E-01  7.9907E-01  9.2379E-01  7.8810E-01
             1.1023E+00
 PARAMETER:  1.3288E-01  2.7391E-01  1.8049E-02  4.3494E-02  7.5943E-02  9.4263E-03 -9.4039E-02 -1.2431E-01  2.0732E-02 -1.3812E-01
             1.9744E-01
 GRADIENT:   4.0832E+01  2.1949E+01  1.0064E+00  2.1215E+01  2.2330E+00  4.6546E-01 -3.2640E+00  3.4768E-01 -5.0396E+00 -2.7791E+00
            -1.8820E-02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1731.51754033330        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0244E+00  1.1609E+00  7.5847E-01  9.4616E-01  8.8730E-01  9.1568E-01  9.1555E-01  4.9370E-01  9.0382E-01  7.4366E-01
             1.0950E+00
 PARAMETER:  1.2407E-01  2.4923E-01 -1.7645E-01  4.4661E-02 -1.9569E-02  1.1906E-02  1.1768E-02 -6.0582E-01 -1.1249E-03 -1.9617E-01
             1.9075E-01
 GRADIENT:   1.1820E+01  7.0861E+00 -8.7585E+00  1.8070E+01  8.2329E+00  7.6971E-01 -4.3946E-02  1.3687E+00  1.4618E+00  4.0845E+00
             9.3229E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1731.56967431460        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.0211E+00  1.1207E+00  7.1339E-01  9.5909E-01  8.4158E-01  9.1520E-01  9.6893E-01  3.7887E-01  8.7323E-01  6.8836E-01
             1.0949E+00
 PARAMETER:  1.2092E-01  2.1397E-01 -2.3773E-01  5.8231E-02 -7.2474E-02  1.1389E-02  6.8434E-02 -8.7057E-01 -3.5555E-02 -2.7345E-01
             1.9069E-01
 GRADIENT:   1.4534E+00  1.8636E+00 -4.5565E+00  6.8931E+00  3.5797E+00  3.2930E-01  4.8551E-01  9.0265E-01  1.0981E+00  2.4540E+00
             5.5073E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1731.58490525643        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0205E+00  1.0948E+00  6.8162E-01  9.6783E-01  8.1039E-01  9.1501E-01  9.9897E-01  2.9046E-01  8.5519E-01  6.5027E-01
             1.0954E+00
 PARAMETER:  1.2027E-01  1.9056E-01 -2.8328E-01  6.7298E-02 -1.1024E-01  1.1182E-02  9.8968E-02 -1.1363E+00 -5.6429E-02 -3.3037E-01
             1.9109E-01
 GRADIENT:  -1.3300E+00  8.8345E-02 -1.8279E+00  2.0027E+00  7.5945E-01  1.2889E-01  3.0125E-01  5.6810E-01  6.9956E-01  1.2890E+00
             3.0230E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.58960942647        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.0205E+00  1.0835E+00  6.6059E-01  9.7073E-01  7.9257E-01  9.1502E-01  1.0135E+00  2.3475E-01  8.4661E-01  6.2816E-01
             1.0957E+00
 PARAMETER:  1.2032E-01  1.8019E-01 -3.1462E-01  7.0295E-02 -1.3247E-01  1.1185E-02  1.1341E-01 -1.3492E+00 -6.6514E-02 -3.6496E-01
             1.9137E-01
 GRADIENT:  -1.7929E+00 -4.3821E-01 -1.1291E+00  5.1181E-01  6.4393E-02  5.6288E-02  3.6374E-01  4.0989E-01  5.2850E-01  9.0362E-01
             2.4846E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1731.96500447357        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      580
 NPARAMETR:  1.0354E+00  1.0777E+00  6.6544E-01  9.7217E-01  7.9401E-01  9.2208E-01  1.0270E+00  2.0486E-01  8.5240E-01  6.2853E-01
             1.0973E+00
 PARAMETER:  1.3476E-01  1.7479E-01 -3.0731E-01  7.1780E-02 -1.3067E-01  1.8874E-02  1.2661E-01 -1.4854E+00 -5.9698E-02 -3.6437E-01
             1.9286E-01
 GRADIENT:  -5.7932E+00 -9.1547E+00 -7.4805E-01 -9.6527E+00 -3.0500E-01  7.5225E-01  1.3265E+00  2.7136E-01  1.7538E+00  4.7496E-01
             6.1217E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1732.55948151575        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      757
 NPARAMETR:  1.0356E+00  1.3123E+00  6.3812E-01  8.4693E-01  8.8880E-01  9.2238E-01  8.3729E-01  9.3691E-02  9.6383E-01  7.0173E-01
             1.0978E+00
 PARAMETER:  1.3498E-01  3.7179E-01 -3.4923E-01 -6.6138E-02 -1.7886E-02  1.9200E-02 -7.7579E-02 -2.2678E+00  6.3163E-02 -2.5421E-01
             1.9332E-01
 GRADIENT:  -6.2778E+00  1.2647E+01  1.2932E+00  1.2736E+01 -4.8161E+00  3.4189E-01 -1.6840E+00  3.1407E-02 -1.5586E+00 -3.9035E-01
             1.7352E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1733.20463140685        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      932
 NPARAMETR:  1.0409E+00  1.6483E+00  5.4632E-01  6.3187E-01  1.0288E+00  9.2226E-01  6.8586E-01  1.0000E-02  1.2313E+00  7.9035E-01
             1.0972E+00
 PARAMETER:  1.4013E-01  5.9975E-01 -5.0455E-01 -3.5907E-01  1.2840E-01  1.9068E-02 -2.7708E-01 -5.1070E+00  3.0805E-01 -1.3527E-01
             1.9276E-01
 GRADIENT:   7.2227E+00  1.7167E+01  3.7599E+00  4.0997E+00 -1.0961E+01 -3.6430E-02 -1.1026E+00  0.0000E+00 -7.7660E-01 -7.3273E-01
            -7.0093E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1733.35311649770        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1107
 NPARAMETR:  1.0377E+00  1.7547E+00  5.1143E-01  5.5735E-01  1.0875E+00  9.2241E-01  6.5574E-01  1.0000E-02  1.3568E+00  8.3344E-01
             1.0988E+00
 PARAMETER:  1.3703E-01  6.6228E-01 -5.7055E-01 -4.8457E-01  1.8385E-01  1.9233E-02 -3.2199E-01 -6.6662E+00  4.0514E-01 -8.2198E-02
             1.9419E-01
 GRADIENT:  -4.8239E-01  2.3454E-02  3.5297E-01 -4.1559E-01 -7.8649E-01  4.4357E-02 -1.3848E-02  0.0000E+00  5.0083E-02  1.3575E-02
            -6.1070E-03

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1733.35350302553        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1269
 NPARAMETR:  1.0379E+00  1.7590E+00  5.0819E-01  5.5466E-01  1.0888E+00  9.2232E-01  6.5503E-01  1.0000E-02  1.3600E+00  8.3345E-01
             1.0988E+00
 PARAMETER:  1.3721E-01  6.6476E-01 -5.7690E-01 -4.8941E-01  1.8507E-01  1.9135E-02 -3.2307E-01 -6.7514E+00  4.0750E-01 -8.2180E-02
             1.9424E-01
 GRADIENT:  -4.4431E-02 -1.7621E-02  8.7695E-04 -1.8406E-02 -2.2694E-02  2.5672E-03  1.5869E-03  0.0000E+00  5.7981E-03  7.3332E-04
            -5.8282E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1269
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.8468E-04 -2.9472E-02 -2.4202E-04  2.3086E-02 -3.3299E-02
 SE:             2.9799E-02  2.2756E-02  1.0197E-04  2.3157E-02  2.1696E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9238E-01  1.9528E-01  1.7619E-02  3.1880E-01  1.2483E-01

 ETASHRINKSD(%)  1.6831E-01  2.3765E+01  9.9658E+01  2.2421E+01  2.7315E+01
 ETASHRINKVR(%)  3.3634E-01  4.1882E+01  9.9999E+01  3.9816E+01  4.7169E+01
 EBVSHRINKSD(%)  5.9532E-01  2.3335E+01  9.9688E+01  2.3706E+01  2.6634E+01
 EBVSHRINKVR(%)  1.1871E+00  4.1224E+01  9.9999E+01  4.1792E+01  4.6175E+01
 RELATIVEINF(%)  9.8756E+01  3.2601E+00  9.2121E-05  3.4919E+00  9.2430E+00
 EPSSHRINKSD(%)  4.2753E+01
 EPSSHRINKVR(%)  6.7228E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1733.3535030255302     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -998.20267646179207     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.90
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1733.354       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.76E+00  5.08E-01  5.55E-01  1.09E+00  9.22E-01  6.55E-01  1.00E-02  1.36E+00  8.33E-01  1.10E+00
 


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
+        1.20E+03
 
 TH 2
+       -1.02E+01  5.13E+02
 
 TH 3
+        8.83E+00  2.11E+02  4.50E+02
 
 TH 4
+       -2.38E+01  4.11E+02 -3.32E+02  1.15E+03
 
 TH 5
+       -5.91E+00 -2.88E+02 -4.47E+02  3.04E+02  7.25E+02
 
 TH 6
+        1.81E+00 -1.15E+00  2.85E+00 -6.81E+00 -4.13E-01  2.27E+02
 
 TH 7
+        7.12E-01  3.60E+00 -6.33E+00 -1.41E+01 -2.01E+01  1.77E-01  1.63E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.96E+00 -2.08E+01 -3.26E+01  5.97E+01 -6.07E-01 -4.52E-01  2.47E+01  0.00E+00  4.52E+01
 
 TH10
+        2.00E+00 -1.60E+01 -4.19E+01 -5.90E+00 -6.84E+01  4.82E-01  2.78E+01  0.00E+00  4.88E+00  9.17E+01
 
 TH11
+       -8.61E+00 -2.12E+01 -2.43E+01  4.84E-02 -4.24E+00  2.32E+00  1.23E+01  0.00E+00  6.65E+00  2.25E+01  1.81E+02
 
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
 #CPUT: Total CPU Time in Seconds,       18.860
Stop Time:
Sat Sep 18 14:09:08 CDT 2021