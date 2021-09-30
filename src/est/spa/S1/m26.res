Wed Sep 29 14:08:47 CDT 2021
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
$DATA ../../../../data/spa/S1/dat26.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m26.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1712.38196885934        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3344E+02  7.1346E+00 -1.5578E+01  6.0388E+01 -2.5173E-01  7.1045E+01 -1.9838E+00  7.9583E+00  2.8254E+01 -3.3603E+00
             6.6183E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1716.85461104794        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:      178
 NPARAMETR:  1.0000E+00  1.0354E+00  1.0159E+00  9.5704E-01  1.0544E+00  9.9972E-01  1.0488E+00  9.8236E-01  9.5874E-01  1.0791E+00
             9.5341E-01
 PARAMETER:  1.0002E-01  1.3477E-01  1.1582E-01  5.6085E-02  1.5294E-01  9.9716E-02  1.4761E-01  8.2200E-02  5.7861E-02  1.7612E-01
             5.2285E-02
 GRADIENT:   7.4498E+00 -5.5178E+01 -2.2028E+01 -4.2467E+01  1.1650E+01  2.0799E+01 -3.5095E+00  7.0838E+00  1.3063E+01  9.4249E-01
             5.2015E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1718.37228566406        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  9.8382E-01  1.2221E+00  1.0578E+00  8.8364E-01  1.1713E+00  9.7286E-01  1.0911E+00  9.3663E-01  9.7779E-01  1.2974E+00
             9.6723E-01
 PARAMETER:  8.3689E-02  3.0057E-01  1.5623E-01 -2.3707E-02  2.5812E-01  7.2489E-02  1.8718E-01  3.4530E-02  7.7537E-02  3.6036E-01
             6.6676E-02
 GRADIENT:  -3.1524E+01  1.7500E+00 -1.2536E+01  1.2027E+01 -1.2104E+00  1.0389E+01  1.2212E+01  3.5756E+00  1.0317E+01  1.5661E+01
             5.6097E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1723.11463681514        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  9.9429E-01  1.2981E+00  8.7954E-01  8.3161E-01  1.1137E+00  9.6447E-01  1.0254E+00  6.2874E-01  9.7594E-01  1.2037E+00
             8.8699E-01
 PARAMETER:  9.4277E-02  3.6092E-01 -2.8361E-02 -8.4394E-02  2.0766E-01  6.3824E-02  1.2504E-01 -3.6404E-01  7.5646E-02  2.8538E-01
            -1.9922E-02
 GRADIENT:  -8.6327E+00  9.8204E+00 -6.1938E+00  1.5651E+01 -5.9907E+00  6.7094E+00  5.8617E+00  9.2781E-01  4.4328E+00  9.2371E+00
             2.5222E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1724.42504118422        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      722
 NPARAMETR:  9.9811E-01  1.3695E+00  8.7533E-01  7.8377E-01  1.1537E+00  9.4852E-01  9.5667E-01  7.3323E-01  9.9945E-01  1.1810E+00
             8.3350E-01
 PARAMETER:  9.8111E-02  4.1441E-01 -3.3154E-02 -1.4364E-01  2.4299E-01  4.7148E-02  5.5699E-02 -2.1029E-01  9.9449E-02  2.6638E-01
            -8.2122E-02
 GRADIENT:   1.2647E+00  1.0353E+01  1.7052E+00  9.1720E+00 -2.9789E+00  5.8904E-02 -1.3896E-01 -1.9654E-01 -3.5082E-01  1.2013E-02
            -7.8586E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1724.53412223216        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  9.9768E-01  1.5260E+00  7.4100E-01  6.8137E-01  1.1803E+00  9.5090E-01  8.9278E-01  6.2885E-01  1.0764E+00  1.1807E+00
             8.3658E-01
 PARAMETER:  9.7679E-02  5.2265E-01 -1.9975E-01 -2.8365E-01  2.6579E-01  4.9650E-02 -1.3420E-02 -3.6387E-01  1.7359E-01  2.6610E-01
            -7.8437E-02
 GRADIENT:  -2.0299E+00  1.2634E+01  1.4035E+00  9.1396E+00 -2.6464E+00  7.4393E-01 -6.5779E-01  5.5712E-02 -7.5385E-01 -4.0643E-01
             6.8867E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1724.67859858312        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1077             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9984E-01  1.6426E+00  6.2891E-01  5.9057E-01  1.2074E+00  9.5075E-01  8.5239E-01  4.3259E-01  1.1610E+00  1.1885E+00
             8.3528E-01
 PARAMETER:  9.9840E-02  5.9627E-01 -3.6377E-01 -4.2666E-01  2.8846E-01  4.9496E-02 -5.9715E-02 -7.3795E-01  2.4932E-01  2.7267E-01
            -7.9992E-02
 GRADIENT:   6.2507E+02  7.7620E+02  4.9446E+00  1.5794E+02  2.3523E+01  7.6467E+01  8.6556E+00  2.0882E-01  9.5346E+00  3.3616E+00
             7.8253E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1724.70345994387        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1255
 NPARAMETR:  9.9875E-01  1.6558E+00  6.1545E-01  5.8840E-01  1.2077E+00  9.4918E-01  8.5119E-01  2.8905E-01  1.1696E+00  1.1949E+00
             8.3627E-01
 PARAMETER:  9.8754E-02  6.0428E-01 -3.8541E-01 -4.3034E-01  2.8873E-01  4.7840E-02 -6.1118E-02 -1.1411E+00  2.5667E-01  2.7809E-01
            -7.8805E-02
 GRADIENT:  -7.8986E-01 -3.3412E-01  8.5812E-02  3.3189E+00  9.1497E-01 -1.8660E-01  2.0223E-01  4.4000E-02  1.8078E-01  3.8049E-01
             1.9737E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1724.70878674258        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.9863E-01  1.6758E+00  5.9196E-01  5.7604E-01  1.2077E+00  9.4894E-01  8.4648E-01  1.5511E-01  1.1830E+00  1.1944E+00
             8.3671E-01
 PARAMETER:  9.8630E-02  6.1627E-01 -4.2431E-01 -4.5157E-01  2.8868E-01  4.7592E-02 -6.6671E-02 -1.7636E+00  2.6802E-01  2.7765E-01
            -7.8281E-02
 GRADIENT:  -1.4295E+00  6.1115E-01 -8.9059E-01  5.1772E+00  1.3700E+00 -3.3578E-01  4.4567E-01  1.9529E-02  6.2903E-01  8.9473E-01
             6.2621E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1724.74804841386        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1619             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0003E+00  1.6735E+00  5.8786E-01  5.7068E-01  1.2070E+00  9.5079E-01  8.4409E-01  3.3481E-02  1.1840E+00  1.1893E+00
             8.3598E-01
 PARAMETER:  1.0031E-01  6.1492E-01 -4.3127E-01 -4.6093E-01  2.8814E-01  4.9541E-02 -6.9497E-02 -3.2968E+00  2.6892E-01  2.7340E-01
            -7.9146E-02
 GRADIENT:   6.2644E+02  8.2964E+02  4.2003E+00  1.6235E+02  2.5481E+01  7.6270E+01  8.8313E+00  3.8413E-03  1.0503E+01  3.9931E+00
             9.1527E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1724.75304087648        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1805             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9974E-01  1.6734E+00  5.8532E-01  5.7148E-01  1.2031E+00  9.5026E-01  8.4457E-01  1.0000E-02  1.1806E+00  1.1843E+00
             8.3566E-01
 PARAMETER:  9.9740E-02  6.1485E-01 -4.3559E-01 -4.5953E-01  2.8493E-01  4.8983E-02 -6.8926E-02 -5.6674E+00  2.6601E-01  2.6913E-01
            -7.9531E-02
 GRADIENT:   6.2336E+02  8.3073E+02  4.5276E+00  1.6291E+02  2.4444E+01  7.6173E+01  8.7974E+00  0.0000E+00  1.0215E+01  3.7007E+00
             8.1750E-01

0ITERATION NO.:   52    OBJECTIVE VALUE:  -1724.75304087648        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1864
 NPARAMETR:  9.9974E-01  1.6734E+00  5.8532E-01  5.7148E-01  1.2031E+00  9.5026E-01  8.4457E-01  1.0000E-02  1.1806E+00  1.1843E+00
             8.3566E-01
 PARAMETER:  9.9740E-02  6.1485E-01 -4.3559E-01 -4.5953E-01  2.8493E-01  4.8983E-02 -6.8926E-02 -5.6674E+00  2.6601E-01  2.6913E-01
            -7.9531E-02
 GRADIENT:   1.3373E+00 -8.2786E+00  3.7978E-01 -1.3435E+00  1.0996E-01  2.2673E-01 -5.3403E-02  0.0000E+00 -8.7479E-02  6.2971E-03
             1.7517E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1864
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7762E-04 -2.5486E-02 -3.4217E-04  2.5157E-02 -3.4296E-02
 SE:             2.9886E-02  2.4483E-02  1.1153E-04  2.1571E-02  2.3417E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9259E-01  2.9790E-01  2.1556E-03  2.4351E-01  1.4303E-01

 ETASHRINKSD(%)  1.0000E-10  1.7978E+01  9.9626E+01  2.7735E+01  2.1551E+01
 ETASHRINKVR(%)  1.0000E-10  3.2724E+01  9.9999E+01  4.7777E+01  3.8458E+01
 EBVSHRINKSD(%)  3.3239E-01  1.7332E+01  9.9698E+01  3.1461E+01  1.7752E+01
 EBVSHRINKVR(%)  6.6367E-01  3.1659E+01  9.9999E+01  5.3024E+01  3.2353E+01
 RELATIVEINF(%)  9.9182E+01  3.5366E+00  8.4953E-05  2.0942E+00  1.5454E+01
 EPSSHRINKSD(%)  4.5202E+01
 EPSSHRINKVR(%)  6.9972E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1724.7530408764810     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -989.60221431274283     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.39
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1724.753       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.67E+00  5.85E-01  5.71E-01  1.20E+00  9.50E-01  8.45E-01  1.00E-02  1.18E+00  1.18E+00  8.36E-01
 


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
+        1.22E+03
 
 TH 2
+       -4.60E+00  3.98E+02
 
 TH 3
+        1.23E+01  1.12E+02  3.22E+02
 
 TH 4
+       -1.52E+01  4.01E+02 -3.32E+02  1.17E+03
 
 TH 5
+       -2.19E+00 -1.17E+02 -2.50E+02  2.62E+02  3.74E+02
 
 TH 6
+        1.45E+00 -8.15E-01  2.13E+00 -3.63E+00 -6.34E-01  2.18E+02
 
 TH 7
+        3.05E-01  1.46E+01 -2.31E+00 -2.24E+01 -4.21E+00 -4.42E-01  1.39E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        6.65E-01 -1.74E+01 -4.24E+01  6.28E+01  5.31E+00 -6.18E-01  2.11E+01  0.00E+00  4.71E+01
 
 TH10
+        4.68E-01 -1.48E+01 -3.49E+01  1.10E+01 -4.82E+01  1.43E-01  3.99E+00  0.00E+00  9.31E+00  6.65E+01
 
 TH11
+       -7.81E+00 -2.00E+01 -4.67E+01  1.69E+01  2.56E+00  3.41E+00  1.56E+01  0.00E+00  6.01E+00  1.43E+01  2.95E+02
 
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
 #CPUT: Total CPU Time in Seconds,       34.105
Stop Time:
Wed Sep 29 14:09:23 CDT 2021
