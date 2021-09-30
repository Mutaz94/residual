Wed Sep 29 23:14:14 CDT 2021
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
$DATA ../../../../data/spa1/A2/dat30.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -714.205622076742        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4946E+02  1.0609E+02  7.6832E+01  1.0068E+02  1.8081E+02  5.7474E+01 -6.0029E+01 -3.8135E+01 -5.7359E+01 -1.1522E+02
            -2.5239E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1620.76356012248        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0016E+00  8.9053E-01  8.8220E-01  1.0931E+00  8.3549E-01  9.0181E-01  1.1260E+00  9.7436E-01  1.2257E+00  1.1975E+00
             2.4526E+00
 PARAMETER:  1.0157E-01 -1.5938E-02 -2.5340E-02  1.8897E-01 -7.9733E-02 -3.3482E-03  2.1869E-01  7.4024E-02  3.0350E-01  2.8022E-01
             9.9716E-01
 GRADIENT:   3.2092E+01  3.0746E+01  1.2877E-01  6.1906E+01  1.2726E+01 -1.8475E+01 -3.4233E+00  8.0138E+00  1.7718E+01  6.8813E+00
            -6.3184E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1628.74919265607        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      200
 NPARAMETR:  1.0058E+00  5.5771E-01  5.7177E-01  1.3440E+00  5.4059E-01  9.9658E-01  1.6705E+00  5.3888E-01  1.0516E+00  8.8563E-01
             2.3695E+00
 PARAMETER:  1.0582E-01 -4.8391E-01 -4.5902E-01  3.9568E-01 -5.1510E-01  9.6577E-02  6.1315E-01 -5.1826E-01  1.5030E-01 -2.1461E-02
             9.6266E-01
 GRADIENT:  -2.9987E+01  4.5812E+01 -2.6155E+01  1.8237E+02  3.0742E+01  9.4165E+00  4.2919E-02  2.9085E+00 -2.0003E+01  8.0281E+00
            -9.2932E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1647.87568421851        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0405E+00  4.3054E-01  4.8379E-01  1.2579E+00  4.4694E-01  1.0080E+00  1.6427E+00  4.1478E-02  9.7968E-01  7.6675E-01
             2.6974E+00
 PARAMETER:  1.3967E-01 -7.4271E-01 -6.2610E-01  3.2941E-01 -7.0533E-01  1.0792E-01  5.9637E-01 -3.0826E+00  7.9467E-02 -1.6559E-01
             1.0923E+00
 GRADIENT:   3.5941E+01  1.3065E+01  8.9552E+00  2.9696E+01 -7.7277E+00  1.4539E+01 -4.4524E-01  1.8042E-03 -2.2945E+01  4.1640E+00
             3.0405E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1653.95300387399        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      552
 NPARAMETR:  1.0276E+00  4.6103E-01  3.1488E-01  1.1339E+00  3.4829E-01  9.8190E-01  1.1468E+00  1.0000E-02  1.1873E+00  6.8153E-01
             2.5311E+00
 PARAMETER:  1.2723E-01 -6.7430E-01 -1.0556E+00  2.2563E-01 -9.5473E-01  8.1730E-02  2.3694E-01 -4.9201E+00  2.7168E-01 -2.8341E-01
             1.0287E+00
 GRADIENT:   6.3603E+00  1.5090E+00  6.3812E+00  1.3599E+00 -8.5716E+00  1.3496E+00  1.0438E+00  0.0000E+00  2.0800E+00  1.6564E+00
            -1.2631E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1654.32599362444        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0242E+00  4.7704E-01  2.5735E-01  1.0808E+00  3.1495E-01  9.8786E-01  6.1017E-01  1.0000E-02  1.2673E+00  7.2861E-01
             2.5068E+00
 PARAMETER:  1.2389E-01 -6.4016E-01 -1.2573E+00  1.7768E-01 -1.0554E+00  8.7786E-02 -3.9402E-01 -5.6795E+00  3.3690E-01 -2.1661E-01
             1.0190E+00
 GRADIENT:  -4.5778E+00  2.4050E+00 -2.6241E+00  8.9813E-01  1.4866E+00  5.2492E-01  6.7752E-01  0.0000E+00  1.0498E+00  1.4009E+00
             3.5961E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1654.60046250879        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  1.0270E+00  4.5415E-01  2.3831E-01  1.0648E+00  2.9689E-01  9.8959E-01  2.5023E-01  1.0000E-02  1.2934E+00  7.5351E-01
             2.4814E+00
 PARAMETER:  1.2669E-01 -6.8934E-01 -1.3342E+00  1.6280E-01 -1.1144E+00  8.9536E-02 -1.2854E+00 -5.8156E+00  3.5728E-01 -1.8302E-01
             1.0088E+00
 GRADIENT:   1.7372E+00  5.7966E-03  5.7136E-01 -1.4705E+00 -1.2465E+00  6.2866E-01  1.5814E-01  0.0000E+00  1.2515E+00  7.2949E-01
            -9.5014E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1654.66733561044        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  1.0264E+00  4.5266E-01  2.3689E-01  1.0647E+00  2.9575E-01  9.8830E-01  4.7989E-02  1.0000E-02  1.2927E+00  7.5429E-01
             2.4841E+00
 PARAMETER:  1.2604E-01 -6.9261E-01 -1.3402E+00  1.6271E-01 -1.1182E+00  8.8229E-02 -2.9368E+00 -5.0526E+00  3.5676E-01 -1.8198E-01
             1.0099E+00
 GRADIENT:   8.2890E-02  6.6927E-02  1.5817E-01 -2.8036E-02 -4.2067E-01  4.8707E-02  4.9061E-03  0.0000E+00  2.1929E-01 -1.6907E-01
            -1.2966E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1656.99588205216        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1261
 NPARAMETR:  1.0263E+00  4.5295E-01  2.4048E-01  1.0696E+00  2.9816E-01  9.8789E-01  1.0000E-02  8.2993E-01  1.2862E+00  7.4968E-01
             2.4866E+00
 PARAMETER:  1.2594E-01 -6.9197E-01 -1.3251E+00  1.6729E-01 -1.1101E+00  8.7818E-02 -1.3076E+01 -8.6412E-02  3.5170E-01 -1.8811E-01
             1.0109E+00
 GRADIENT:  -2.5060E+00 -3.4511E+00  5.7606E+00  2.7120E+00  8.3314E+00 -7.0751E-01  0.0000E+00 -1.6797E-01  7.2306E-01  2.4333E+01
             3.0688E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1668.86989678619        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1439
 NPARAMETR:  1.0213E+00  4.1743E-01  2.0304E-01  1.0340E+00  2.6752E-01  9.9095E-01  1.0000E-02  1.3974E+00  1.3932E+00  4.9693E-01
             2.1987E+00
 PARAMETER:  1.2103E-01 -7.7364E-01 -1.4944E+00  1.3348E-01 -1.2186E+00  9.0909E-02 -1.4409E+01  4.3462E-01  4.3159E-01 -5.9930E-01
             8.8785E-01
 GRADIENT:  -4.9875E+00 -6.8391E+00  2.3504E+00  2.3928E+00 -2.2541E+00 -1.2598E+00  0.0000E+00 -7.1143E+00  1.9131E+00  7.7143E+00
            -3.3170E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1672.47977139887        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1615
 NPARAMETR:  1.0252E+00  4.5948E-01  2.2371E-01  1.0434E+00  2.9413E-01  9.9776E-01  1.0000E-02  1.7136E+00  1.4213E+00  2.2805E-01
             2.1642E+00
 PARAMETER:  1.2488E-01 -6.7765E-01 -1.3974E+00  1.4250E-01 -1.1237E+00  9.7756E-02 -1.1108E+01  6.3859E-01  4.5156E-01 -1.3782E+00
             8.7207E-01
 GRADIENT:   5.6680E+00  3.0138E+00 -3.5236E+00  2.9006E-01  2.7630E+00  1.5413E+00  0.0000E+00  3.3227E+00 -5.7248E-01  8.7841E-01
            -1.8655E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1672.68066585856        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1790
 NPARAMETR:  1.0226E+00  4.5745E-01  2.3189E-01  1.0503E+00  2.9828E-01  9.9321E-01  1.0000E-02  1.6877E+00  1.4154E+00  1.6662E-01
             2.1805E+00
 PARAMETER:  1.2234E-01 -6.8209E-01 -1.3615E+00  1.4910E-01 -1.1097E+00  9.3184E-02 -9.9098E+00  6.2338E-01  4.4742E-01 -1.6921E+00
             8.7956E-01
 GRADIENT:  -2.0728E-01  5.0244E-01  8.9631E-01 -1.0927E-01 -1.3009E+00 -6.1915E-02  0.0000E+00  4.6268E-02 -1.0123E-01  2.8359E-02
            -2.2823E-02

0ITERATION NO.:   56    OBJECTIVE VALUE:  -1672.68066585856        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1812
 NPARAMETR:  1.0226E+00  4.5745E-01  2.3189E-01  1.0503E+00  2.9828E-01  9.9321E-01  1.0000E-02  1.6877E+00  1.4154E+00  1.6662E-01
             2.1805E+00
 PARAMETER:  1.2234E-01 -6.8209E-01 -1.3615E+00  1.4910E-01 -1.1097E+00  9.3184E-02 -9.9098E+00  6.2338E-01  4.4742E-01 -1.6921E+00
             8.7956E-01
 GRADIENT:  -2.0728E-01  5.0244E-01  8.9631E-01 -1.0927E-01 -1.3009E+00 -6.1915E-02  0.0000E+00  4.6268E-02 -1.0123E-01  2.8359E-02
            -2.2823E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1812
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0946E-03 -4.9594E-04  2.5874E-03 -1.1976E-03  8.6082E-03
 SE:             2.9493E-02  1.9804E-04  2.6231E-02  2.8499E-02  6.2912E-03
 N:                     100         100         100         100         100

 P VAL.:         9.4338E-01  1.2273E-02  9.2143E-01  9.6648E-01  1.7122E-01

 ETASHRINKSD(%)  1.1945E+00  9.9337E+01  1.2122E+01  4.5236E+00  7.8924E+01
 ETASHRINKVR(%)  2.3748E+00  9.9996E+01  2.2774E+01  8.8426E+00  9.5558E+01
 EBVSHRINKSD(%)  1.5220E+00  9.9386E+01  1.1379E+01  3.9357E+00  8.0107E+01
 EBVSHRINKVR(%)  3.0209E+00  9.9996E+01  2.1463E+01  7.7165E+00  9.6043E+01
 RELATIVEINF(%)  9.6895E+01  5.6375E-04  1.9339E+01  7.7516E+01  3.0576E-01
 EPSSHRINKSD(%)  3.0768E+01
 EPSSHRINKVR(%)  5.2069E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1672.6806658585640     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -753.74213265389130     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.40
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.93
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1672.681       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  4.57E-01  2.32E-01  1.05E+00  2.98E-01  9.93E-01  1.00E-02  1.69E+00  1.42E+00  1.67E-01  2.18E+00
 


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
+        7.75E+00
 
 TH 2
+       -3.29E+01  1.60E+03
 
 TH 3
+       -1.80E+02  2.28E+03  5.75E+03
 
 TH 4
+        7.69E+00  1.96E+02  5.78E+01  4.35E+01
 
 TH 5
+        1.85E+02 -6.32E+03 -1.00E+04 -6.83E+02  2.54E+04
 
 TH 6
+        8.35E-02 -1.61E+01 -1.82E+01 -2.38E+00  6.15E+01  1.70E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -8.77E-01 -2.95E+01 -1.40E+01 -6.08E+00  1.05E+02  3.48E-01  0.00E+00  8.56E-01
 
 TH 9
+       -3.21E+00 -6.11E+01 -2.75E+00 -1.49E+01  2.07E+02  7.70E-01  0.00E+00  2.07E+00  5.17E+00
 
 TH10
+       -2.32E+00 -1.46E+02 -1.07E+02 -2.67E+01  5.35E+02  1.65E+00  0.00E+00  3.81E+00  8.95E+00  1.73E+01
 
 TH11
+        1.26E+00  5.67E+00 -1.79E+01  2.98E+00 -1.17E+01 -1.05E-01  0.00E+00 -3.94E-01 -1.09E+00 -1.56E+00  2.88E-01
 
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
+        1.05E+03
 
 TH 2
+       -4.17E+01  2.09E+03
 
 TH 3
+       -3.40E+01  1.79E+03  5.64E+03
 
 TH 4
+       -1.20E+01  2.62E+02 -6.12E+01  4.64E+02
 
 TH 5
+        1.26E+02 -5.32E+03 -8.05E+03 -6.04E+02  2.21E+04
 
 TH 6
+        1.92E+00 -1.78E+01 -1.57E+00 -4.44E+00  5.58E+01  1.90E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        1.34E+00 -4.74E+01  3.49E+00  5.03E+00  9.54E+01  1.54E+00  0.00E+00  3.54E+01
 
 TH 9
+        6.02E+00 -7.71E+01  3.49E+01 -3.98E-01  2.01E+02  2.38E+00  0.00E+00 -2.87E+00  8.03E+01
 
 TH10
+        1.42E+00 -9.04E+01 -2.30E+01 -6.07E+00  5.23E+02  1.77E+00  0.00E+00  1.28E+01  1.14E+01  5.09E+01
 
 TH11
+       -1.46E+01 -2.55E+01 -3.69E+01 -8.06E+00 -3.87E+01 -2.11E-01  0.00E+00  1.39E+01  6.53E+00  3.08E+00  8.45E+01
 
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
+        1.05E+03
 
 TH 2
+       -2.17E+02  2.23E+03
 
 TH 3
+       -7.25E+02  1.50E+03  5.70E+03
 
 TH 4
+       -2.87E+02  5.81E+02  5.58E+02  4.65E+02
 
 TH 5
+        6.73E+02 -5.67E+03 -6.06E+03 -1.91E+03  1.83E+04
 
 TH 6
+        6.30E+01 -1.42E+01 -2.39E+02 -3.31E+01  1.75E+02  1.11E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        9.98E+01 -2.55E+01 -2.18E+02 -3.22E+01  1.41E+02  3.60E+01  0.00E+00  5.36E+01
 
 TH 9
+        8.94E+01 -2.22E+02  9.05E+01 -1.01E+02  6.36E+02  1.62E+01  0.00E+00  2.06E+01  1.27E+02
 
 TH10
+        7.84E+00 -1.23E+02  2.71E+01 -3.45E+01  3.46E+02 -2.30E+00  0.00E+00  2.91E+00  2.49E+01  2.06E+01
 
 TH11
+        2.18E+02 -3.07E+02 -2.14E+02 -2.20E+02  1.12E+03  5.56E+01  0.00E+00  5.55E+01  1.55E+02  2.69E+01  2.95E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       36.407
Stop Time:
Wed Sep 29 23:15:11 CDT 2021