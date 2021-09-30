Wed Sep 29 12:36:53 CDT 2021
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
$DATA ../../../../data/spa/A2/dat16.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m16.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1140.10620654518        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5885E+02 -3.7252E+01 -6.9397E-01 -1.2378E+01  1.8327E+02  7.7927E+01 -2.1937E+01 -2.1508E+01 -2.0217E+01 -9.3433E+01
            -9.3489E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1435.91588666084        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1718E+00  1.0258E+00  9.4801E-01  1.0604E+00  8.3735E-01  9.8472E-01  1.0090E+00  1.0135E+00  9.8894E-01  1.0745E+00
             2.2964E+00
 PARAMETER:  2.5858E-01  1.2548E-01  4.6614E-02  1.5867E-01 -7.7517E-02  8.4601E-02  1.0892E-01  1.1338E-01  8.8875E-02  1.7183E-01
             9.3134E-01
 GRADIENT:   4.7062E+02  2.1253E+01  2.4955E+01  3.7074E+00 -3.6722E+01  2.0795E+01  3.8411E-01  3.6585E-01 -5.5779E-01  4.0975E+00
             2.0019E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1443.16525224342        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      180
 NPARAMETR:  1.1462E+00  1.0137E+00  3.8932E-01  1.0183E+00  5.4886E-01  9.5011E-01  1.0834E+00  7.7366E-01  8.2029E-01  6.5560E-01
             2.1912E+00
 PARAMETER:  2.3643E-01  1.1364E-01 -8.4335E-01  1.1815E-01 -4.9992E-01  4.8821E-02  1.8011E-01 -1.5662E-01 -9.8098E-02 -3.2221E-01
             8.8443E-01
 GRADIENT:   2.2109E+02  3.7874E+01 -1.4074E+01  6.7264E+01  1.5431E+01  1.3019E+01 -1.3525E+00  2.1192E+00 -1.9990E+01  3.7631E+00
            -2.2028E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1459.10887368217        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0450E+00  8.3062E-01  4.8297E-01  1.1083E+00  5.5486E-01  8.5106E-01  1.2003E+00  3.6392E-01  8.8075E-01  7.0390E-01
             2.2010E+00
 PARAMETER:  1.4398E-01 -8.5587E-02 -6.2779E-01  2.0283E-01 -4.8904E-01 -6.1272E-02  2.8260E-01 -9.1083E-01 -2.6985E-02 -2.5112E-01
             8.8889E-01
 GRADIENT:   2.1556E+00 -5.1999E+00 -1.5986E+01  1.9437E+01  3.5175E+01 -3.9865E+00 -4.0019E+00  3.0087E-01 -5.2797E+00 -2.5717E+00
            -1.3137E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1465.16118153212        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      535
 NPARAMETR:  1.0275E+00  7.1770E-01  2.0687E-01  1.0076E+00  3.3104E-01  9.0000E-01  1.1670E+00  1.7425E-01  9.8807E-01  5.0080E-01
             2.1567E+00
 PARAMETER:  1.2716E-01 -2.3170E-01 -1.4757E+00  1.0758E-01 -1.0055E+00 -5.3605E-03  2.5440E-01 -1.6472E+00  8.8003E-02 -5.9155E-01
             8.6859E-01
 GRADIENT:  -2.0458E+01  3.8025E+01  5.9122E+00  2.8720E+01 -3.8051E+01  9.0948E+00  5.8322E+00 -2.2533E-01  6.1277E+00  7.3472E+00
             2.2571E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1470.00123738794        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  1.0491E+00  6.0057E-01  2.0598E-01  1.0034E+00  3.0708E-01  8.6722E-01  1.4605E+00  7.2686E-01  9.5476E-01  2.9397E-01
             1.9943E+00
 PARAMETER:  1.4794E-01 -4.0987E-01 -1.4800E+00  1.0344E-01 -1.0806E+00 -4.2462E-02  4.7877E-01 -2.1903E-01  5.3708E-02 -1.1243E+00
             7.9030E-01
 GRADIENT:   3.9096E+01 -6.8653E+00  6.3833E+00 -3.8277E+01  1.5171E+01 -4.4870E+00  1.7466E+01 -3.8828E+00  5.6017E+00  2.5014E+00
             6.8268E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1474.14164871664        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      887
 NPARAMETR:  1.0277E+00  6.4354E-01  1.9052E-01  9.9429E-01  3.0615E-01  8.7391E-01  1.2236E+00  1.0930E+00  9.7874E-01  2.3842E-01
             1.8628E+00
 PARAMETER:  1.2729E-01 -3.4078E-01 -1.5580E+00  9.4270E-02 -1.0837E+00 -3.4782E-02  3.0179E-01  1.8894E-01  7.8515E-02 -1.3337E+00
             7.2209E-01
 GRADIENT:  -5.0702E+00  2.6910E+00  1.5177E+00  5.1638E+00 -7.1194E+00  6.4316E-02  9.4011E-02  2.0672E-01  1.6954E-01  9.4810E-01
             1.1070E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1474.41767319444        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  1.0296E+00  6.6555E-01  1.9159E-01  9.8384E-01  3.1393E-01  8.7230E-01  1.2277E+00  1.1338E+00  9.7265E-01  1.1980E-01
             1.8641E+00
 PARAMETER:  1.2920E-01 -3.0714E-01 -1.5524E+00  8.3710E-02 -1.0586E+00 -3.6620E-02  3.0515E-01  2.2561E-01  7.2270E-02 -2.0219E+00
             7.2276E-01
 GRADIENT:   3.0817E+00  4.1764E-01  5.6808E-01 -8.5136E-01 -1.0604E+00  4.1762E-02  4.2790E-01  9.6163E-02 -4.0804E-01  7.7901E-02
            -3.4168E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1474.43656198434        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1237
 NPARAMETR:  1.0285E+00  6.6677E-01  1.9114E-01  9.8286E-01  3.1428E-01  8.7196E-01  1.2302E+00  1.1380E+00  9.7511E-01  4.6578E-02
             1.8680E+00
 PARAMETER:  1.2814E-01 -3.0531E-01 -1.5547E+00  8.2715E-02 -1.0575E+00 -3.7007E-02  3.0720E-01  2.2928E-01  7.4798E-02 -2.9666E+00
             7.2486E-01
 GRADIENT:   3.6004E-01 -2.6134E-01 -1.2147E-01 -1.8149E-01  4.2736E-01 -5.9735E-02  1.2821E-01  1.5856E-02  2.7058E-02  3.8109E-03
            -1.7187E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1474.43693923421        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1417
 NPARAMETR:  1.0284E+00  6.6706E-01  1.9111E-01  9.8278E-01  3.1431E-01  8.7212E-01  1.2304E+00  1.1390E+00  9.7515E-01  1.0357E-02
             1.8687E+00
 PARAMETER:  1.2800E-01 -3.0488E-01 -1.5549E+00  8.2629E-02 -1.0574E+00 -3.6831E-02  3.0734E-01  2.3013E-01  7.4836E-02 -4.4701E+00
             7.2526E-01
 GRADIENT:  -1.2976E-02 -7.5977E-03 -1.1025E-02 -1.1238E-02  2.0490E-02  8.3787E-03  1.8165E-02  6.0466E-03  5.4463E-03  1.1030E-03
             2.1263E-02

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1474.43698560147        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:     1477
 NPARAMETR:  1.0284E+00  6.6696E-01  1.9109E-01  9.8277E-01  3.1428E-01  8.7212E-01  1.2310E+00  1.1394E+00  9.7517E-01  1.0000E-02
             1.8690E+00
 PARAMETER:  1.2800E-01 -3.0503E-01 -1.5550E+00  8.2616E-02 -1.0575E+00 -3.6828E-02  3.0783E-01  2.3051E-01  7.4861E-02 -5.6421E+00
             7.2538E-01
 GRADIENT:  -2.8908E-02 -1.7225E-02 -6.0811E-02 -7.5004E-02  6.6332E-02  1.0742E-02  1.1444E-01  4.4296E-02  2.3394E-02  0.0000E+00
             1.1289E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1477
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.8963E-04  8.7761E-03 -1.8299E-02 -1.1317E-02  2.0596E-04
 SE:             2.9407E-02  2.4632E-02  1.7635E-02  2.6088E-02  3.3634E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9214E-01  7.2163E-01  2.9943E-01  6.6443E-01  5.4030E-01

 ETASHRINKSD(%)  1.4836E+00  1.7479E+01  4.0919E+01  1.2602E+01  9.8873E+01
 ETASHRINKVR(%)  2.9453E+00  3.1902E+01  6.5095E+01  2.3616E+01  9.9987E+01
 EBVSHRINKSD(%)  1.7501E+00  1.6824E+01  4.1744E+01  1.2876E+01  9.8921E+01
 EBVSHRINKVR(%)  3.4695E+00  3.0818E+01  6.6062E+01  2.4095E+01  9.9988E+01
 RELATIVEINF(%)  9.3942E+01  5.7654E+00  9.6446E+00  3.6920E+01  7.2297E-04
 EPSSHRINKSD(%)  4.2848E+01
 EPSSHRINKVR(%)  6.7336E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1474.4369856014707     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -739.28615903773255     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.19
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.39
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1474.437       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  6.67E-01  1.91E-01  9.83E-01  3.14E-01  8.72E-01  1.23E+00  1.14E+00  9.75E-01  1.00E-02  1.87E+00
 


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
+        9.39E+02
 
 TH 2
+       -2.57E+01  1.01E+03
 
 TH 3
+       -1.39E+02  1.64E+03  8.36E+03
 
 TH 4
+       -2.39E+02  7.39E+01 -1.33E+03  4.49E+02
 
 TH 5
+       -5.89E+01 -3.54E+03 -8.16E+03  4.14E+02  1.34E+04
 
 TH 6
+       -1.04E+01 -1.55E+01  8.53E+00 -6.87E+00  4.21E+01  5.51E-01
 
 TH 7
+        3.94E+00 -2.88E+00 -9.79E+01  2.29E+01  4.93E+01 -5.32E-01  1.54E+00
 
 TH 8
+        1.17E+01  4.09E+00 -3.81E+01  8.59E+00  2.47E+00 -4.48E-01  7.45E-01  4.97E-01
 
 TH 9
+       -9.06E+00 -4.95E+01  6.80E+01 -3.92E+01  1.12E+02  1.72E+00 -2.30E+00 -1.45E+00  6.35E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        5.15E+00  7.47E+00 -5.78E+01  1.72E+01  2.78E+00 -5.74E-01  1.13E+00  6.27E-01 -2.22E+00  0.00E+00  9.30E-01
 
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
+        1.33E+03
 
 TH 2
+       -6.92E+00  1.16E+03
 
 TH 3
+       -2.34E+02  1.55E+03  8.11E+03
 
 TH 4
+       -4.37E+01  1.93E+02 -1.12E+03  9.22E+02
 
 TH 5
+        1.56E+02 -3.51E+03 -7.59E+03  3.36E+02  1.33E+04
 
 TH 6
+        3.59E-01 -5.23E+00  1.12E+01 -9.32E+00  4.19E+01  2.44E+02
 
 TH 7
+       -1.14E+00  4.67E+01 -1.01E+02 -1.42E+01  4.81E+01  5.04E-01  6.42E+01
 
 TH 8
+        3.53E+00 -6.71E+00 -4.48E+01 -4.22E+00 -6.09E+00  2.84E+00  6.64E+00  1.82E+01
 
 TH 9
+        6.52E+00 -2.70E+01  8.93E+01  6.34E-01  1.44E+02  2.84E+00  1.24E+01 -3.40E-02  1.15E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.69E+01 -8.97E+00 -6.73E+01 -5.21E+00 -1.34E+01  3.73E-01  5.48E+00  1.56E+01  1.29E+01  0.00E+00  5.46E+01
 
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
+        1.33E+03
 
 TH 2
+       -1.52E+02  1.14E+03
 
 TH 3
+       -3.69E+02  1.31E+03  8.05E+03
 
 TH 4
+       -2.69E+02  5.02E+02 -6.40E+02  9.20E+02
 
 TH 5
+        1.15E+02 -3.18E+03 -7.19E+03 -3.66E+02  1.32E+04
 
 TH 6
+       -8.52E+01 -6.83E+01 -9.40E+01 -4.13E+01  2.22E+02  1.97E+02
 
 TH 7
+       -4.10E+01 -2.35E+00 -5.56E+01 -5.81E+01  1.26E+02  1.96E+01  6.43E+01
 
 TH 8
+        4.15E+01 -2.28E+00 -2.21E+02 -7.56E+00 -6.66E+01  9.25E+00  2.92E+00  3.97E+01
 
 TH 9
+        7.88E+01 -3.65E+01  8.41E+01 -5.55E+01 -8.77E+01  3.59E+01  2.22E+01  2.81E+01  1.46E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        7.70E+01 -6.08E+01 -8.29E+01 -8.31E+01 -1.14E+02  7.27E+00  8.17E+00  3.27E+01  5.23E+01  0.00E+00  8.17E+01
 
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
 #CPUT: Total CPU Time in Seconds,       24.637
Stop Time:
Wed Sep 29 12:37:22 CDT 2021
