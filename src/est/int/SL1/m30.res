Wed Sep 29 01:55:33 CDT 2021
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
$DATA ../../../../data/int/SL1/dat30.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2847.54817658721        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8356E+02  1.2750E+02  5.5793E+01  1.7692E+02  1.1388E+02  6.8586E+01 -1.8572E+01 -1.1506E+02 -5.8772E+01  1.2100E+00
            -1.8935E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3288.43442088666        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      150
 NPARAMETR:  1.0101E+00  1.1519E+00  1.0277E+00  9.3651E-01  1.0771E+00  1.0002E+00  9.5240E-01  1.1073E+00  1.0838E+00  9.1017E-01
             1.7029E+00
 PARAMETER:  1.1006E-01  2.4144E-01  1.2735E-01  3.4408E-02  1.7426E-01  1.0016E-01  5.1228E-02  2.0196E-01  1.8046E-01  5.8734E-03
             6.3235E-01
 GRADIENT:  -2.2286E+01  4.4289E+01 -1.8532E+01  5.3252E+01 -2.8100E+00 -1.4420E+00  1.7458E+00 -9.5524E+00 -3.2575E+00 -1.3558E+01
            -2.5192E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3294.34778651822        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      326
 NPARAMETR:  1.0207E+00  1.4185E+00  1.4113E+00  7.9137E-01  1.3699E+00  1.0218E+00  7.3938E-01  2.2346E+00  1.2536E+00  1.0845E+00
             1.6939E+00
 PARAMETER:  1.2045E-01  4.4959E-01  4.4450E-01 -1.3398E-01  4.1475E-01  1.2161E-01 -2.0195E-01  9.0405E-01  3.2604E-01  1.8109E-01
             6.2701E-01
 GRADIENT:   2.1413E-01  7.9282E+01 -7.8348E+00  4.7602E+01 -9.4063E+00  6.9507E+00 -5.9513E+00  4.9898E+00  2.8416E+00 -1.0571E+01
            -2.0685E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3295.66306829934        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      513
 NPARAMETR:  1.0394E+00  1.3928E+00  1.4275E+00  7.8802E-01  1.3818E+00  1.0069E+00  7.8119E-01  2.1859E+00  1.2547E+00  1.0836E+00
             1.7206E+00
 PARAMETER:  1.3863E-01  4.3133E-01  4.5590E-01 -1.3823E-01  4.2336E-01  1.0690E-01 -1.4693E-01  8.8205E-01  3.2690E-01  1.8030E-01
             6.4270E-01
 GRADIENT:   3.9610E+01  3.4675E+01 -1.0282E+01  2.7310E+01  1.0498E+01  8.8962E-01 -3.0465E-01  4.0276E+00  8.1569E+00 -7.7634E+00
             1.5063E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3296.98333292082        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      690
 NPARAMETR:  1.0175E+00  1.3673E+00  1.4958E+00  7.7972E-01  1.3776E+00  9.9942E-01  7.6997E-01  2.0654E+00  1.2505E+00  1.0837E+00
             1.7106E+00
 PARAMETER:  1.1738E-01  4.1285E-01  5.0267E-01 -1.4883E-01  4.2035E-01  9.9418E-02 -1.6140E-01  8.2532E-01  3.2351E-01  1.8036E-01
             6.3684E-01
 GRADIENT:  -6.1867E+00  7.0883E+00 -2.6090E+00 -1.7717E+00  6.9099E+00 -1.3283E+00 -1.6908E+00 -1.6458E+00  6.9489E+00 -7.6158E+00
             2.1697E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3297.17374685669        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      868
 NPARAMETR:  1.0196E+00  1.3578E+00  1.5106E+00  7.8049E-01  1.3705E+00  1.0040E+00  8.0016E-01  2.0913E+00  1.2412E+00  1.0856E+00
             1.7098E+00
 PARAMETER:  1.1942E-01  4.0590E-01  5.1253E-01 -1.4783E-01  4.1515E-01  1.0398E-01 -1.2294E-01  8.3781E-01  3.1610E-01  1.8217E-01
             6.3638E-01
 GRADIENT:  -1.4255E+00  8.1596E-01 -1.8704E+00 -9.2594E+00  1.5644E+00  5.4280E-01  9.9755E-01 -7.3854E-01  7.9688E+00 -4.9824E+00
             2.9903E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3297.74019759697        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1045            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0207E+00  1.3449E+00  1.5888E+00  7.9982E-01  1.3681E+00  1.0027E+00  8.0408E-01  2.1525E+00  1.1738E+00  1.1060E+00
             1.7045E+00
 PARAMETER:  1.2049E-01  3.9631E-01  5.6299E-01 -1.2337E-01  4.1345E-01  1.0272E-01 -1.1806E-01  8.6664E-01  2.6026E-01  2.0079E-01
             6.3328E-01
 GRADIENT:   2.1981E+02  1.9316E+02  6.5196E+00  3.1917E+01  5.2121E+01  2.4927E+01  1.6076E+00  2.8834E+00  8.9757E+00  3.4238E+00
             7.5702E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3298.23034403686        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1181
 NPARAMETR:  1.0246E+00  1.3003E+00  1.6990E+00  8.2899E-01  1.3581E+00  1.0089E+00  8.6262E-01  2.2700E+00  1.1179E+00  1.0738E+00
             1.7072E+00
 PARAMETER:  1.2430E-01  3.6257E-01  6.3006E-01 -8.7544E-02  4.0612E-01  1.0888E-01 -4.7781E-02  9.1976E-01  2.1141E-01  1.7116E-01
             6.3486E-01
 GRADIENT:   9.2693E+00  6.3470E+00 -1.2000E+00 -1.4256E+00 -5.8520E+00  2.4767E+00  3.6625E-01  2.3107E-01  1.5592E+00  3.9604E-01
             3.0994E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3299.36753019798        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1366             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0210E+00  1.2268E+00  1.9783E+00  8.7440E-01  1.3607E+00  1.0032E+00  9.2796E-01  2.5024E+00  1.0284E+00  1.0322E+00
             1.7023E+00
 PARAMETER:  1.2077E-01  3.0437E-01  7.8225E-01 -3.4212E-02  4.0801E-01  1.0323E-01  2.5234E-02  1.0173E+00  1.2800E-01  1.3173E-01
             6.3200E-01
 GRADIENT:   2.2201E+02  1.0913E+02  6.2823E+00  2.1895E+01  5.0060E+01  2.5379E+01  3.0593E+00  4.6742E+00  3.5283E+00  2.1347E+00
             1.6681E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3299.41272982734        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1542
 NPARAMETR:  1.0202E+00  1.2236E+00  1.9783E+00  8.8300E-01  1.3607E+00  1.0022E+00  9.2625E-01  2.5024E+00  1.0284E+00  1.0292E+00
             1.7023E+00
 PARAMETER:  1.1996E-01  3.0183E-01  7.8225E-01 -2.4431E-02  4.0803E-01  1.0223E-01  2.3384E-02  1.0173E+00  1.2801E-01  1.2883E-01
             6.3201E-01
 GRADIENT:   1.1045E-01 -2.0244E-02 -5.4587E+00 -1.4439E-02 -2.4557E+00 -1.3877E-02 -4.5481E-02 -2.5874E+00  3.5922E-01 -5.7290E-02
             5.5304E+00

0ITERATION NO.:   49    OBJECTIVE VALUE:  -3299.49174007397        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1677
 NPARAMETR:  1.0203E+00  1.2228E+00  2.0124E+00  8.8381E-01  1.3658E+00  1.0023E+00  9.2730E-01  2.4948E+00  1.0258E+00  1.0303E+00
             1.7055E+00
 PARAMETER:  1.1987E-01  3.0149E-01  8.0071E-01 -2.4260E-02  4.0940E-01  1.0219E-01  2.3718E-02  1.0160E+00  1.2678E-01  1.2913E-01
             6.3279E-01
 GRADIENT:  -1.1991E+00  1.1729E+00  2.7239E+02 -1.4199E+00 -4.0736E+00 -1.1895E-01 -1.1143E-01  3.6999E+03  2.8774E-01 -1.7984E-01
            -6.0375E+03
 NUMSIGDIG:         2.3         2.5         2.3         1.7         1.8         2.5         1.6         2.3         1.5         1.8
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1677
 NO. OF SIG. DIGITS IN FINAL EST.:  1.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4863E-03 -2.8824E-02 -3.0985E-02  1.9188E-02 -3.8320E-02
 SE:             2.9766E-02  2.0725E-02  2.0741E-02  2.4660E-02  2.2710E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6018E-01  1.6429E-01  1.3520E-01  4.3649E-01  9.1533E-02

 ETASHRINKSD(%)  2.8177E-01  3.0569E+01  3.0516E+01  1.7387E+01  2.3919E+01
 ETASHRINKVR(%)  5.6275E-01  5.1794E+01  5.1719E+01  3.1750E+01  4.2116E+01
 EBVSHRINKSD(%)  6.8493E-01  3.0709E+01  3.5977E+01  1.9611E+01  2.1832E+01
 EBVSHRINKVR(%)  1.3652E+00  5.1988E+01  5.9010E+01  3.5376E+01  3.8897E+01
 RELATIVEINF(%)  9.8621E+01  1.3613E+01  2.4633E+01  2.0286E+01  3.0159E+01
 EPSSHRINKSD(%)  1.9681E+01
 EPSSHRINKVR(%)  3.5489E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3299.4917400739650     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1645.4023803055543     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    53.26
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    16.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3299.492       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.22E+00  2.02E+00  8.83E-01  1.36E+00  1.00E+00  9.27E-01  2.50E+00  1.03E+00  1.03E+00  1.70E+00
 


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
+        2.21E+05
 
 TH 2
+       -5.64E+00  4.22E+02
 
 TH 3
+        8.46E+00  9.62E+00  3.89E+04
 
 TH 4
+       -8.63E+00  4.14E+02  3.76E+01  8.48E+02
 
 TH 5
+       -2.26E+00 -1.43E+02 -1.07E+05  9.36E+01  3.08E+05
 
 TH 6
+        3.09E+00 -1.84E+00 -1.87E+00 -2.62E+00 -1.25E+00  1.94E+02
 
 TH 7
+        1.13E+00  6.27E+00 -1.14E+01 -3.09E+00 -1.60E+00  2.56E-01  5.56E+01
 
 TH 8
+        9.35E+00 -1.62E+02  1.52E+02 -1.39E+02 -8.10E+01  1.11E+01 -8.89E+00  1.44E+04
 
 TH 9
+        1.15E+00 -1.00E+01 -8.45E+00  3.38E+01  7.16E+00  3.17E-01  3.16E+01 -4.53E+01  7.48E+01
 
 TH10
+        4.55E-01 -1.49E+01  1.73E+01  1.18E+01 -3.19E+01  1.91E-01  1.18E+01 -1.54E+02  2.49E-01  7.87E+01
 
 TH11
+        2.60E+04 -8.26E+03 -4.44E+02  3.63E+04 -5.43E+03 -2.51E+01  3.43E+04  1.14E+03 -2.43E+04 -2.35E+04  8.58E+04
 
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
 #CPUT: Total CPU Time in Seconds,       70.038
Stop Time:
Wed Sep 29 01:56:44 CDT 2021
