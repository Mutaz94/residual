Wed Sep 29 16:47:36 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat71.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m71.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1556.99358302184        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7153E+02 -5.1024E+01  1.2345E+01 -6.7205E+01  1.3899E+01  3.5901E+01 -1.8053E+01 -7.7829E+00 -1.3095E+01 -4.2897E+00
            -9.5443E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1573.15732092825        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.6411E-01  1.1481E+00  9.2068E-01  1.0132E+00  1.0361E+00  9.3751E-01  1.2601E+00  1.0741E+00  1.0107E+00  9.2088E-01
             1.2867E+00
 PARAMETER:  6.3453E-02  2.3815E-01  1.7357E-02  1.1307E-01  1.3551E-01  3.5470E-02  3.3121E-01  1.7152E-01  1.1067E-01  1.7579E-02
             3.5210E-01
 GRADIENT:   2.3595E+02  5.6561E+01 -1.8417E+01  7.1996E+01  4.1772E+01  1.4133E+00  1.6939E+01  7.9945E-01  1.0547E+01 -2.4048E+00
             2.5971E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1573.65962151108        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      242
 NPARAMETR:  9.6401E-01  1.2158E+00  8.5980E-01  9.7751E-01  9.8325E-01  9.7816E-01  1.1906E+00  1.1410E+00  9.9171E-01  9.1907E-01
             1.3006E+00
 PARAMETER:  6.3351E-02  2.9542E-01 -5.1060E-02  7.7251E-02  8.3105E-02  7.7921E-02  2.7442E-01  2.3194E-01  9.1672E-02  1.5609E-02
             3.6279E-01
 GRADIENT:   9.9909E+00  3.4120E+01  2.7448E+00  3.0878E+01 -2.3102E+01 -5.9659E+00  4.3867E+00  3.8164E+00  2.0712E+00  6.7673E+00
             2.9296E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1575.94488394672        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  9.5902E-01  1.1649E+00  7.5338E-01  9.6415E-01  9.2167E-01  9.8967E-01  1.1789E+00  9.1841E-01  9.6964E-01  8.1333E-01
             1.2068E+00
 PARAMETER:  5.8159E-02  2.5264E-01 -1.8319E-01  6.3493E-02  1.8435E-02  8.9621E-02  2.6457E-01  1.4887E-02  6.9167E-02 -1.0662E-01
             2.8801E-01
 GRADIENT:  -1.0475E+00 -5.3707E+00 -1.1765E+00 -1.8404E+00  3.5993E+00 -1.8546E+00 -1.7192E+00 -7.3739E-02 -5.6886E-01 -1.9529E-01
            -7.9955E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1576.11020504414        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      596
 NPARAMETR:  9.6114E-01  1.3153E+00  5.6475E-01  8.5893E-01  8.7145E-01  9.9601E-01  1.0895E+00  7.5369E-01  1.0099E+00  7.1613E-01
             1.2081E+00
 PARAMETER:  6.0367E-02  3.7404E-01 -4.7137E-01 -5.2066E-02 -3.7592E-02  9.5999E-02  1.8575E-01 -1.8278E-01  1.0983E-01 -2.3389E-01
             2.8907E-01
 GRADIENT:   1.1522E+00  5.3520E+00  2.6493E+00  1.3904E+00 -4.5549E+00  2.7461E-01 -2.5426E-01 -1.4865E-01 -4.9342E-01 -2.5972E-01
            -5.5405E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1576.30971274566        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  9.5902E-01  1.5059E+00  3.1114E-01  6.9483E-01  7.9177E-01  9.9517E-01  9.5321E-01  4.5495E-01  1.0874E+00  5.6651E-01
             1.2044E+00
 PARAMETER:  5.8161E-02  5.0940E-01 -1.0675E+00 -2.6408E-01 -1.3348E-01  9.5158E-02  5.2078E-02 -6.8757E-01  1.8380E-01 -4.6826E-01
             2.8598E-01
 GRADIENT:   3.0715E+00  1.8033E+00  1.0849E+00 -2.9245E+00 -5.7403E+00  9.4076E-01  1.3554E+00  3.8251E-01 -6.2511E-01  1.2862E+00
             8.0776E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1576.35265121657        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      951
 NPARAMETR:  9.5617E-01  1.5660E+00  2.7602E-01  6.5183E-01  8.0178E-01  9.9122E-01  9.1734E-01  3.8871E-01  1.1369E+00  5.4507E-01
             1.2028E+00
 PARAMETER:  5.5183E-02  5.4853E-01 -1.1873E+00 -3.2797E-01 -1.2092E-01  9.1177E-02  1.3727E-02 -8.4493E-01  2.2831E-01 -5.0683E-01
             2.8462E-01
 GRADIENT:  -8.6770E-01 -7.0571E-01 -9.1770E-01  1.3400E+00  1.9855E+00 -2.5067E-01 -3.0710E-02  2.6672E-01  1.2574E-01 -2.6800E-01
            -1.7712E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1576.36029475532        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1128
 NPARAMETR:  9.5624E-01  1.6054E+00  2.6638E-01  6.2723E-01  8.1957E-01  9.9147E-01  9.0387E-01  3.2373E-01  1.1656E+00  5.6382E-01
             1.2036E+00
 PARAMETER:  5.5257E-02  5.7335E-01 -1.2228E+00 -3.6644E-01 -9.8974E-02  9.1433E-02 -1.0682E-03 -1.0279E+00  2.5320E-01 -4.7302E-01
             2.8531E-01
 GRADIENT:  -4.9476E-01 -1.5299E+00 -5.0982E-01  3.9897E-02  2.0484E+00 -7.5364E-02  3.6367E-01  1.6817E-01  1.4681E-01 -3.5610E-01
            -1.4308E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1576.41216926045        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1288
 NPARAMETR:  9.5676E-01  1.6122E+00  2.6485E-01  6.2265E-01  8.2109E-01  9.9184E-01  8.9829E-01  1.2863E-01  1.1695E+00  5.7572E-01
             1.2035E+00
 PARAMETER:  5.5796E-02  5.7759E-01 -1.2286E+00 -3.7377E-01 -9.7123E-02  9.1811E-02 -7.2581E-03 -1.9508E+00  2.5654E-01 -4.5213E-01
             2.8522E-01
 GRADIENT:   6.6658E-01  1.4291E+00  2.1627E+00 -3.5461E+00 -4.1309E+00  6.2216E-02 -7.6534E-01  1.7071E-02 -3.3721E-01 -1.2576E-01
             1.2868E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1576.43205699259        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1464
 NPARAMETR:  9.5639E-01  1.6106E+00  2.6223E-01  6.2408E-01  8.1888E-01  9.9127E-01  9.0001E-01  4.4203E-02  1.1699E+00  5.7418E-01
             1.2027E+00
 PARAMETER:  5.5408E-02  5.7661E-01 -1.2385E+00 -3.7148E-01 -9.9813E-02  9.1228E-02 -5.3439E-03 -3.0190E+00  2.5691E-01 -4.5481E-01
             2.8461E-01
 GRADIENT:   9.2004E-02  5.5181E-01  4.9017E-02  4.0290E-01  2.0256E-01 -1.4932E-01 -3.6500E-02  2.4172E-03  9.1112E-02 -2.0162E-02
            -1.6014E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1576.43658718760        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1626
 NPARAMETR:  9.5615E-01  1.6082E+00  2.5953E-01  6.2402E-01  8.1496E-01  9.9181E-01  8.9983E-01  1.0000E-02  1.1681E+00  5.6869E-01
             1.2025E+00
 PARAMETER:  5.5164E-02  5.7515E-01 -1.2489E+00 -3.7157E-01 -1.0461E-01  9.1774E-02 -5.5498E-03 -4.5979E+00  2.5540E-01 -4.6442E-01
             2.8438E-01
 GRADIENT:  -2.0284E-02  1.7011E-01 -2.9501E-02  3.5313E-02 -8.3546E-02  1.1688E-01  1.0054E-02  0.0000E+00  1.1432E-04  2.5236E-02
             3.0324E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1626
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7120E-04 -1.4421E-02 -1.9193E-04  1.3376E-02 -2.3473E-02
 SE:             2.9797E-02  2.6651E-02  1.0800E-04  2.4634E-02  1.6145E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8203E-01  5.8844E-01  7.5556E-02  5.8713E-01  1.4599E-01

 ETASHRINKSD(%)  1.7779E-01  1.0717E+01  9.9638E+01  1.7475E+01  4.5911E+01
 ETASHRINKVR(%)  3.5527E-01  2.0286E+01  9.9999E+01  3.1896E+01  7.0744E+01
 EBVSHRINKSD(%)  5.8743E-01  1.0983E+01  9.9654E+01  1.7237E+01  4.6708E+01
 EBVSHRINKVR(%)  1.1714E+00  2.0760E+01  9.9999E+01  3.1502E+01  7.1599E+01
 RELATIVEINF(%)  9.7138E+01  7.0801E+00  1.0697E-04  4.6211E+00  2.9644E+00
 EPSSHRINKSD(%)  4.3626E+01
 EPSSHRINKVR(%)  6.8220E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1576.4365871876005     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -841.28576062386230     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.21
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1576.437       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.56E-01  1.61E+00  2.60E-01  6.24E-01  8.15E-01  9.92E-01  9.00E-01  1.00E-02  1.17E+00  5.69E-01  1.20E+00
 


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
+       -9.85E+00  4.25E+02
 
 TH 3
+       -5.24E+01  3.76E+02  2.02E+03
 
 TH 4
+       -1.16E+01  1.84E+02 -1.25E+03  1.44E+03
 
 TH 5
+       -1.75E+01 -4.59E+02 -1.49E+03  8.09E+02  1.48E+03
 
 TH 6
+        1.14E+00 -1.58E+00 -3.94E+00 -5.37E+00 -3.33E+00  1.98E+02
 
 TH 7
+        3.63E-01  9.01E+00 -1.06E+02  1.57E+00  1.67E+01 -4.14E-01  1.55E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.68E+00 -1.16E+01 -2.06E+01  5.24E+01 -2.68E+01 -2.93E-01  1.29E+01  0.00E+00  6.91E+01
 
 TH10
+       -5.73E-01 -1.34E+01 -2.52E+01 -2.88E+01 -9.62E+01  1.33E-01  2.01E+01  0.00E+00  1.65E+01  7.09E+01
 
 TH11
+       -8.97E+00 -1.14E+01 -2.39E+01 -5.35E+00 -2.77E+01  2.57E+00  8.44E+00  0.00E+00  1.17E+01  2.18E+01  1.45E+02
 
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
 #CPUT: Total CPU Time in Seconds,       25.913
Stop Time:
Wed Sep 29 16:48:04 CDT 2021
