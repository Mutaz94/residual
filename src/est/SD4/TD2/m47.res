Sat Oct  2 05:02:52 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat47.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1653.54166262892        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3031E+02 -3.2889E+01  5.2382E+00 -5.2180E+01  3.3534E+01  6.2497E+01 -2.3936E+00 -5.8395E-01 -1.9385E+01 -9.6003E+00
             3.0419E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1660.31182410870        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8404E-01  9.8221E-01  9.5680E-01  1.0741E+00  9.5055E-01  8.9087E-01  1.0208E+00  1.0078E+00  1.1111E+00  1.0552E+00
             8.6783E-01
 PARAMETER:  8.3911E-02  8.2055E-02  5.5842E-02  1.7145E-01  4.9288E-02 -1.5557E-02  1.2054E-01  1.0776E-01  2.0539E-01  1.5375E-01
            -4.1758E-02
 GRADIENT:  -2.2832E+00 -8.9285E+00 -5.6185E+00 -9.3685E+00  4.0642E+00 -2.0552E+01  2.6468E+00  3.4262E+00  9.6834E+00  3.0138E+00
            -2.2123E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1660.88341809989        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8469E-01  7.9960E-01  9.6452E-01  1.2194E+00  8.6918E-01  9.1436E-01  1.0629E+00  7.7321E-01  1.0433E+00  1.0530E+00
             8.7443E-01
 PARAMETER:  8.4576E-02 -1.2365E-01  6.3875E-02  2.9836E-01 -4.0208E-02  1.0473E-02  1.6100E-01 -1.5721E-01  1.4241E-01  1.5167E-01
            -3.4188E-02
 GRADIENT:   1.8944E+00  1.5927E+01  4.3883E+00  3.4245E+01 -8.3610E+00 -9.6304E+00 -7.1560E-02 -2.8422E+00  1.1393E+01  1.4634E+00
            -1.9744E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1662.20829464093        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.8495E-01  8.0612E-01  9.7093E-01  1.2007E+00  8.7365E-01  9.3777E-01  1.1658E+00  8.4952E-01  9.8269E-01  1.0086E+00
             9.1600E-01
 PARAMETER:  8.4841E-02 -1.1553E-01  7.0501E-02  2.8294E-01 -3.5081E-02  3.5748E-02  2.5338E-01 -6.3087E-02  8.2538E-02  1.0859E-01
             1.2265E-02
 GRADIENT:   1.7976E+00  8.8357E+00  2.9552E+00  1.0377E+01 -5.3622E+00  8.2452E-01  1.8346E-01 -3.9545E-01 -9.8246E-01 -3.5361E-02
             3.4852E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1662.86698493508        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.7918E-01  5.0195E-01  1.1365E+00  1.3900E+00  8.5346E-01  9.3251E-01  1.0553E+00  9.7205E-01  9.1081E-01  1.0388E+00
             9.1634E-01
 PARAMETER:  7.8961E-02 -5.8925E-01  2.2799E-01  4.2927E-01 -5.8457E-02  3.0120E-02  1.5382E-01  7.1649E-02  6.5760E-03  1.3811E-01
             1.2632E-02
 GRADIENT:  -1.4327E+00  4.3193E+00  4.6520E+00  5.3752E+00 -3.7987E+00 -2.3837E-01 -6.9318E-01 -1.5289E+00 -1.3313E+00 -1.4615E+00
            -2.4131E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1662.94492223866        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.7750E-01  3.7949E-01  1.1512E+00  1.4651E+00  8.2480E-01  9.2972E-01  9.8926E-01  9.9582E-01  8.7906E-01  1.0308E+00
             9.1315E-01
 PARAMETER:  7.7240E-02 -8.6893E-01  2.4082E-01  4.8194E-01 -9.2614E-02  2.7126E-02  8.9204E-02  9.5815E-02 -2.8907E-02  1.3029E-01
             9.1461E-03
 GRADIENT:  -7.3628E-01  3.5424E+00  3.2966E+00  7.7802E+00 -3.8251E+00 -1.0990E+00 -6.9933E-01 -1.2568E+00 -4.0124E-01 -1.1010E+00
            -1.3420E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.94863439362        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1053
 NPARAMETR:  9.7652E-01  3.2317E-01  1.1691E+00  1.5005E+00  8.1710E-01  9.2991E-01  9.5219E-01  1.0267E+00  8.6253E-01  1.0292E+00
             9.1350E-01
 PARAMETER:  7.6238E-02 -1.0296E+00  2.5625E-01  5.0577E-01 -1.0199E-01  2.7335E-02  5.1013E-02  1.2634E-01 -4.7880E-02  1.2877E-01
             9.5239E-03
 GRADIENT:  -5.6907E-01  3.3329E+00  2.9922E+00  8.5233E+00 -4.1766E+00 -8.6157E-01 -5.7286E-01 -9.3133E-01 -4.3213E-01 -6.2932E-01
            -1.0548E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.95013274814        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1233
 NPARAMETR:  9.7613E-01  3.0235E-01  1.1765E+00  1.5134E+00  8.1476E-01  9.2996E-01  9.3565E-01  1.0394E+00  8.5644E-01  1.0283E+00
             9.1361E-01
 PARAMETER:  7.5843E-02 -1.0962E+00  2.6254E-01  5.1434E-01 -1.0486E-01  2.7389E-02  3.3488E-02  1.3865E-01 -5.4967E-02  1.2786E-01
             9.6503E-03
 GRADIENT:  -5.2851E-01  3.1832E+00  2.8292E+00  8.3392E+00 -4.0807E+00 -7.8601E-01 -5.1374E-01 -8.3802E-01 -4.1135E-01 -5.1934E-01
            -9.6076E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1662.95056711026        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  9.7587E-01  2.8871E-01  1.1816E+00  1.5218E+00  8.1335E-01  9.2997E-01  9.2249E-01  1.0481E+00  8.5248E-01  1.0275E+00
             9.1367E-01
 PARAMETER:  7.5577E-02 -1.1423E+00  2.6684E-01  5.1991E-01 -1.0660E-01  2.7399E-02  1.9320E-02  1.4695E-01 -5.9611E-02  1.2716E-01
             9.7136E-03
 GRADIENT:  -5.1077E-01  3.0817E+00  2.7272E+00  8.1653E+00 -3.9879E+00 -7.4791E-01 -4.7285E-01 -7.8844E-01 -3.8859E-01 -4.6711E-01
            -9.1025E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1663.14858699351        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:     1559
 NPARAMETR:  9.7734E-01  2.8081E-01  1.1803E+00  1.5211E+00  8.1440E-01  9.3165E-01  1.5422E+00  1.0545E+00  8.5233E-01  1.0288E+00
             9.1460E-01
 PARAMETER:  7.7078E-02 -1.1701E+00  2.6573E-01  5.1946E-01 -1.0530E-01  2.9203E-02  5.3324E-01  1.5309E-01 -5.9785E-02  1.2836E-01
             1.0727E-02
 GRADIENT:   4.6454E+02  4.3259E+01  7.6110E+00  8.4243E+02  1.2472E+01  4.4515E+01  3.3256E+00  1.0235E+00  2.3559E+01  2.3505E+00
             1.0232E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1663.19233830375        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:     1715
 NPARAMETR:  9.7495E-01  2.7006E-01  1.1831E+00  1.5270E+00  8.1148E-01  9.3132E-01  1.5264E+00  1.0539E+00  8.3821E-01  1.0223E+00
             9.1443E-01
 PARAMETER:  7.4634E-02 -1.2091E+00  2.6812E-01  5.2330E-01 -1.0890E-01  2.8845E-02  5.2290E-01  1.5249E-01 -7.6486E-02  1.2207E-01
             1.0551E-02
 GRADIENT:  -1.7825E+00  9.2151E-01  3.5004E-01 -6.7992E+00  1.1857E+00 -1.6607E-01 -9.2773E-02 -3.0034E-01  2.1951E-01 -4.9294E-02
            -1.6041E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1663.21233020805        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1895             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7579E-01  2.5479E-01  1.1823E+00  1.5320E+00  8.0724E-01  9.3172E-01  1.6691E+00  1.0608E+00  8.3411E-01  1.0192E+00
             9.1452E-01
 PARAMETER:  7.5497E-02 -1.2673E+00  2.6750E-01  5.2655E-01 -1.1414E-01  2.9275E-02  6.1226E-01  1.5907E-01 -8.1392E-02  1.1900E-01
             1.0648E-02
 GRADIENT:   4.6132E+02  3.8795E+01  8.9085E+00  8.6598E+02  1.2799E+01  4.4673E+01  3.5255E+00  7.9387E-01  1.9576E+01  1.6345E+00
             8.8988E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1663.21664180737        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2071
 NPARAMETR:  9.7590E-01  2.5324E-01  1.1820E+00  1.5338E+00  8.0539E-01  9.3175E-01  1.6502E+00  1.0600E+00  8.3231E-01  1.0173E+00
             9.1447E-01
 PARAMETER:  7.5608E-02 -1.2734E+00  2.6722E-01  5.2775E-01 -1.1643E-01  2.9307E-02  6.0089E-01  1.5831E-01 -8.3553E-02  1.1718E-01
             1.0593E-02
 GRADIENT:   1.5435E+00  4.6332E-01  1.0549E+00 -1.3144E+01 -1.3511E-01  6.1826E-02  1.2859E-02 -1.4137E-02  2.4087E-01  2.0270E-01
            -9.7479E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1663.21937363359        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2254
 NPARAMETR:  9.7554E-01  2.5158E-01  1.1797E+00  1.5344E+00  8.0425E-01  9.3166E-01  1.6461E+00  1.0591E+00  8.3165E-01  1.0152E+00
             9.1446E-01
 PARAMETER:  7.5235E-02 -1.2800E+00  2.6529E-01  5.2812E-01 -1.1784E-01  2.9211E-02  5.9840E-01  1.5744E-01 -8.4339E-02  1.1513E-01
             1.0581E-02
 GRADIENT:   6.5586E-01  3.8743E-01  6.0660E-01 -1.3560E+01  4.7417E-01  2.9144E-02 -8.9705E-03  9.5430E-03  7.0625E-02  2.4075E-02
            -7.4823E-03

0ITERATION NO.:   69    OBJECTIVE VALUE:  -1663.22049820216        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     2389
 NPARAMETR:  9.7582E-01  2.5052E-01  1.1786E+00  1.5355E+00  8.0382E-01  9.3183E-01  1.6688E+00  1.0587E+00  8.3151E-01  1.0150E+00
             9.1446E-01
 PARAMETER:  7.5523E-02 -1.2842E+00  2.6430E-01  5.2882E-01 -1.1838E-01  2.9392E-02  6.1208E-01  1.5707E-01 -8.4512E-02  1.1486E-01
             1.0578E-02
 GRADIENT:  -2.5215E-01  1.6725E-01  1.3325E-01  1.4356E+00  6.1869E-01 -2.2772E-02  4.2231E-04  4.4147E-02  9.4748E-02  5.5078E-02
             1.7642E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2389
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9365E-04 -5.2215E-03 -3.1672E-02 -4.4683E-03 -3.4796E-02
 SE:             2.9858E-02  6.4439E-03  1.7753E-02  2.8803E-02  2.1656E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8948E-01  4.1777E-01  7.4419E-02  8.7672E-01  1.0811E-01

 ETASHRINKSD(%)  1.0000E-10  7.8412E+01  4.0524E+01  3.5064E+00  2.7448E+01
 ETASHRINKVR(%)  1.0000E-10  9.5340E+01  6.4626E+01  6.8899E+00  4.7362E+01
 EBVSHRINKSD(%)  3.9365E-01  7.8861E+01  4.3668E+01  3.6814E+00  2.4414E+01
 EBVSHRINKVR(%)  7.8576E-01  9.5531E+01  6.8267E+01  7.2272E+00  4.2867E+01
 RELATIVEINF(%)  9.4763E+01  1.7547E-01  6.5153E+00  4.8249E+00  5.3709E+00
 EPSSHRINKSD(%)  4.6214E+01
 EPSSHRINKVR(%)  7.1071E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1663.2204982021633     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -928.06967163842512     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1663.220       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.76E-01  2.51E-01  1.18E+00  1.54E+00  8.04E-01  9.32E-01  1.67E+00  1.06E+00  8.32E-01  1.01E+00  9.14E-01
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       29.448
Stop Time:
Sat Oct  2 05:03:23 CDT 2021