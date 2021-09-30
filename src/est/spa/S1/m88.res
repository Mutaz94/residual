Wed Sep 29 14:38:48 CDT 2021
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
$DATA ../../../../data/spa/S1/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1645.49514836112        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1661E+02 -4.8086E+01 -4.4499E+01  1.2657E+01  8.0766E+01  4.7799E+01 -7.7452E+00 -3.7953E+00  6.1480E+00  2.4149E+01
            -5.6467E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.04467608274        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0104E+00  1.0904E+00  1.0752E+00  9.9761E-01  1.0215E+00  9.7270E-01  1.0535E+00  1.0481E+00  9.9153E-01  8.1338E-01
             1.2897E+00
 PARAMETER:  1.1031E-01  1.8650E-01  1.7246E-01  9.7604E-02  1.2130E-01  7.2318E-02  1.5211E-01  1.4697E-01  9.1497E-02 -1.0655E-01
             3.5443E-01
 GRADIENT:   9.1541E+00 -1.8082E+01 -1.3699E+01  6.4622E+00  3.7542E+01 -3.6479E+00 -4.8886E+00 -8.4631E+00  2.6388E+00  9.0214E+00
             4.6502E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1660.24318923814        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.9853E-01  1.1591E+00  1.0272E+00  9.5262E-01  9.5925E-01  9.7846E-01  1.1614E+00  1.5399E+00  9.3988E-01  4.2189E-01
             1.1712E+00
 PARAMETER:  9.8526E-02  2.4766E-01  1.2683E-01  5.1460E-02  5.8402E-02  7.8225E-02  2.4966E-01  5.3171E-01  3.8000E-02 -7.6302E-01
             2.5805E-01
 GRADIENT:  -1.6693E+01  1.6958E+01  1.5722E+01 -1.3058E+00 -1.6456E+01 -2.1054E+00  9.5996E-01 -2.3321E+00 -1.9103E+00 -4.6530E+00
             1.6681E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1661.58718291774        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0124E+00  1.2445E+00  7.9964E-01  8.9157E-01  9.2020E-01  9.8588E-01  1.1070E+00  1.1993E+00  9.7217E-01  5.1247E-01
             1.1549E+00
 PARAMETER:  1.1237E-01  3.1875E-01 -1.2360E-01 -1.4766E-02  1.6841E-02  8.5780E-02  2.0166E-01  2.8175E-01  7.1774E-02 -5.6852E-01
             2.4399E-01
 GRADIENT:   1.2043E+01  1.5498E+01  4.5241E+00  9.5957E+00 -1.0565E+01  1.5143E-01  9.2154E-01 -1.0905E+00 -1.2836E+00 -1.3352E-01
             2.4198E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1661.78418262861        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  1.0069E+00  1.3080E+00  8.4641E-01  8.4829E-01  9.7686E-01  9.8508E-01  1.0319E+00  1.3513E+00  1.0379E+00  5.8281E-01
             1.1467E+00
 PARAMETER:  1.0689E-01  3.6848E-01 -6.6751E-02 -6.4529E-02  7.6585E-02  8.4971E-02  1.3139E-01  4.0108E-01  1.3717E-01 -4.3989E-01
             2.3686E-01
 GRADIENT:   4.2635E-01  3.0568E+00  1.8446E+00  1.0241E+00 -4.5594E+00  1.3987E-03  8.3518E-02  9.3940E-02  1.8940E-01  2.9603E-01
            -2.2945E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1661.83519276651        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  1.0083E+00  1.4633E+00  6.9442E-01  7.4240E-01  9.8173E-01  9.8604E-01  9.5985E-01  1.3253E+00  1.1212E+00  5.5875E-01
             1.1479E+00
 PARAMETER:  1.0829E-01  4.8066E-01 -2.6467E-01 -1.9787E-01  8.1566E-02  8.5943E-02  5.9023E-02  3.8164E-01  2.1443E-01 -4.8205E-01
             2.3789E-01
 GRADIENT:   1.9490E+00  6.3677E+00  3.8308E+00 -4.9076E-01 -8.9726E+00  4.7748E-02  5.2870E-01  1.1965E-01  1.6361E-01  7.7273E-02
             3.8335E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1661.90339898689        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  1.0090E+00  1.6219E+00  5.2157E-01  6.3291E-01  9.7668E-01  9.8677E-01  8.9738E-01  1.2361E+00  1.2175E+00  5.2421E-01
             1.1485E+00
 PARAMETER:  1.0897E-01  5.8358E-01 -5.5091E-01 -3.5742E-01  7.6406E-02  8.6685E-02 -8.2781E-03  3.1195E-01  2.9679E-01 -5.4585E-01
             2.3842E-01
 GRADIENT:   2.5769E+00  1.2685E+01  5.0601E+00 -1.3316E-01 -1.2705E+01  9.1901E-02  3.9415E-01 -4.1149E-02 -2.0585E-01 -8.5748E-02
             3.6454E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.24293515100        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1229
 NPARAMETR:  1.0083E+00  1.8311E+00  2.8004E-01  4.8293E-01  9.3614E-01  9.8709E-01  8.2365E-01  9.6837E-01  1.3586E+00  4.3871E-01
             1.1446E+00
 PARAMETER:  1.0824E-01  7.0492E-01 -1.1728E+00 -6.2789E-01  3.4014E-02  8.7008E-02 -9.4010E-02  6.7859E-02  4.0648E-01 -7.2391E-01
             2.3506E-01
 GRADIENT:   4.7939E+00  4.2025E+01  1.1784E+01 -2.6232E+00 -3.4518E+01  3.5898E-01 -7.3302E-01 -6.8150E-01 -1.1503E+00  6.9345E-01
             3.0479E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1663.35068311526        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1410
 NPARAMETR:  1.0025E+00  2.0369E+00  1.4349E-01  3.5597E-01  9.4089E-01  9.8674E-01  7.4203E-01  7.1140E-01  1.5569E+00  4.4108E-01
             1.1296E+00
 PARAMETER:  1.0246E-01  8.1142E-01 -1.8415E+00 -9.3290E-01  3.9068E-02  8.6653E-02 -1.9837E-01 -2.4052E-01  5.4272E-01 -7.1852E-01
             2.2189E-01
 GRADIENT:   1.8892E+00  1.1298E+02  1.5890E+01  1.5443E+00 -5.7297E+01  2.3222E-01 -1.2340E+01 -2.9203E+00 -8.3315E+00  7.4414E-01
             1.3262E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1665.61399508459        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1602
 NPARAMETR:  9.9910E-01  2.0637E+00  1.1441E-01  3.1688E-01  9.5784E-01  9.8674E-01  7.3466E-01  5.8905E-01  1.6914E+00  4.8305E-01
             1.1091E+00
 PARAMETER:  9.9103E-02  8.2449E-01 -2.0680E+00 -1.0492E+00  5.6921E-02  8.6648E-02 -2.0835E-01 -4.2925E-01  6.2554E-01 -6.2763E-01
             2.0358E-01
 GRADIENT:  -1.1729E+00  5.6395E+01  5.2060E+00  6.2464E-01 -3.8311E+01 -3.5924E-02 -5.8650E+00 -1.8606E+00 -5.5201E+00  2.1570E+00
             1.2861E+01

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1665.61399508459        NO. OF FUNC. EVALS.:  25
 CUMULATIVE NO. OF FUNC. EVALS.:     1627
 NPARAMETR:  9.9910E-01  2.0637E+00  1.1441E-01  3.1688E-01  9.5784E-01  9.8674E-01  7.3466E-01  5.8905E-01  1.6914E+00  4.8305E-01
             1.1091E+00
 PARAMETER:  9.9103E-02  8.2449E-01 -2.0680E+00 -1.0492E+00  5.6921E-02  8.6648E-02 -2.0835E-01 -4.2925E-01  6.2554E-01 -6.2763E-01
             2.0358E-01
 GRADIENT:  -3.6256E+04  4.4617E+03 -3.4626E+03  6.8897E+03  7.2480E+04 -7.2511E+04  3.4798E+04 -8.4699E+03  1.1499E+04 -1.1553E+04
            -3.5619E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1627
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.7552E-04 -4.2981E-02 -5.0912E-03  2.7187E-02 -2.6685E-02
 SE:             2.9822E-02  2.8232E-02  5.3336E-03  2.3927E-02  1.4604E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7390E-01  1.2791E-01  3.3981E-01  2.5585E-01  6.7668E-02

 ETASHRINKSD(%)  9.2554E-02  5.4182E+00  8.2132E+01  1.9842E+01  5.1075E+01
 ETASHRINKVR(%)  1.8502E-01  1.0543E+01  9.6807E+01  3.5747E+01  7.6063E+01
 EBVSHRINKSD(%)  5.2729E-01  7.6753E+00  8.4813E+01  2.0252E+01  5.0597E+01
 EBVSHRINKVR(%)  1.0518E+00  1.4761E+01  9.7694E+01  3.6402E+01  7.5593E+01
 RELATIVEINF(%)  9.8233E+01  2.1313E+01  9.8601E-01  1.0668E+01  5.0412E+00
 EPSSHRINKSD(%)  4.5346E+01
 EPSSHRINKVR(%)  7.0129E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1665.6139950845886     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -930.46316852085045     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.11
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1665.614       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  2.06E+00  1.14E-01  3.17E-01  9.58E-01  9.87E-01  7.35E-01  5.89E-01  1.69E+00  4.83E-01  1.11E+00
 


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
+        1.82E+07
 
 TH 2
+        7.96E+01  6.30E+04
 
 TH 3
+       -7.46E+02  4.56E+05  3.17E+06
 
 TH 4
+        4.61E+02  3.20E+05  1.23E+04  1.63E+06
 
 TH 5
+       -3.36E+03 -1.44E+02 -2.81E+03  2.03E+03  1.98E+07
 
 TH 6
+       -7.30E+02  4.14E+01 -2.95E+02  2.12E+02  7.58E+02  1.86E+07
 
 TH 7
+       -4.72E+02 -8.18E+00 -3.07E+02  1.24E+02  5.41E+02  4.76E+02  7.74E+06
 
 TH 8
+        3.69E+04 -2.17E+03  1.53E+04 -1.10E+04 -1.32E+03 -2.90E+02 -1.85E+02  2.85E+06
 
 TH 9
+        1.50E+02 -2.79E+01 -7.11E+05 -3.17E+03  2.86E+02  6.82E+01  5.33E+01 -3.43E+03  1.60E+05
 
 TH10
+        2.29E+03 -1.52E+02  1.01E+03 -7.08E+02 -1.20E+03 -2.40E+02 -1.30E+02  1.22E+04 -2.05E+02  1.97E+06
 
 TH11
+        6.03E+03 -3.71E+02  2.44E+03 -1.80E+03 -1.53E+03 -3.18E+02 -1.98E+02  1.63E+04 -5.52E+02  1.04E+03  3.56E+06
 
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
 #CPUT: Total CPU Time in Seconds,       27.418
Stop Time:
Wed Sep 29 14:39:17 CDT 2021
