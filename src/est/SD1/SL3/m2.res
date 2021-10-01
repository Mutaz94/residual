Thu Sep 30 23:00:44 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat2.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 (2E4.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m2.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -495.033264827958        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6484E+02  5.3718E+01  9.5842E+01  1.3110E+02  9.3157E+01  3.5192E+01 -9.0497E+01 -1.6426E+02 -6.1606E+01 -2.7139E+01
            -6.2201E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2696.17919221736        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0584E+00  1.3027E+00  1.0385E+00  9.1449E-01  1.1598E+00  9.5770E-01  9.8918E-01  8.8930E-01  7.2997E-01  1.0939E+00
             2.7186E+00
 PARAMETER:  1.5678E-01  3.6446E-01  1.3775E-01  1.0616E-02  2.4825E-01  5.6779E-02  8.9119E-02 -1.7317E-02 -2.1475E-01  1.8979E-01
             1.1001E+00
 GRADIENT:   2.2566E+02  1.0976E+02 -6.6734E+00  7.0491E+01 -1.3545E+01 -1.1934E+01  1.5797E+01  3.6364E+00 -1.3759E+01 -2.1896E+01
             3.4451E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2702.61730793122        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0242E+00  1.2878E+00  1.1028E+00  9.1992E-01  1.1940E+00  9.5393E-01  1.0044E+00  2.2281E-01  9.3672E-01  1.2964E+00
             2.7327E+00
 PARAMETER:  1.2392E-01  3.5294E-01  1.9786E-01  1.6533E-02  2.7728E-01  5.2833E-02  1.0442E-01 -1.4014E+00  3.4629E-02  3.5960E-01
             1.1053E+00
 GRADIENT:   1.3107E+02  7.3229E+01 -1.2553E+00  7.0262E+01  3.8903E+00 -7.1063E+00  2.6586E+01  2.2197E-01  1.3822E+01  1.5527E+01
             6.3758E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2715.40770226478        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      317
 NPARAMETR:  9.9386E-01  1.5271E+00  1.2063E+00  7.3749E-01  1.4567E+00  9.7469E-01  6.1192E-01  3.9285E-01  1.0071E+00  1.4384E+00
             2.6631E+00
 PARAMETER:  9.3836E-02  5.2336E-01  2.8752E-01 -2.0451E-01  4.7619E-01  7.4365E-02 -3.9115E-01 -8.3434E-01  1.0704E-01  4.6355E-01
             1.0795E+00
 GRADIENT:  -7.7274E+00 -1.8050E+01 -8.4698E-01  1.7274E+01  7.4234E+00 -1.9022E+00 -8.6277E+00  4.5208E-02 -6.1614E+00 -1.7957E+00
            -1.8423E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2722.59332402650        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      493
 NPARAMETR:  9.9931E-01  2.0605E+00  1.2617E+00  4.1236E-01  1.9173E+00  9.7314E-01  6.3486E-01  6.2345E-01  1.2664E+00  1.7293E+00
             2.6512E+00
 PARAMETER:  9.9314E-02  8.2296E-01  3.3247E-01 -7.8586E-01  7.5093E-01  7.2771E-02 -3.5436E-01 -3.7248E-01  3.3615E-01  6.4774E-01
             1.0750E+00
 GRADIENT:   3.6354E+00  5.2686E+01 -4.7945E-01  2.1175E+01  4.7524E+00 -3.5014E+00  3.2197E-01 -2.5189E-01 -1.2435E+00  9.2706E-01
             3.2920E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2724.91005195233        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      668
 NPARAMETR:  9.9853E-01  2.3470E+00  1.0450E+00  2.0361E-01  2.1057E+00  9.7656E-01  6.0375E-01  4.0268E+00  1.4997E+00  1.8400E+00
             2.6412E+00
 PARAMETER:  9.8529E-02  9.5313E-01  1.4400E-01 -1.4915E+00  8.4467E-01  7.6279E-02 -4.0460E-01  1.4930E+00  5.0526E-01  7.0976E-01
             1.0712E+00
 GRADIENT:   2.5752E+00  1.3605E+01 -8.2242E-01  3.0047E+00  1.4062E+00 -2.2939E+00 -4.9531E-01 -1.7514E-02  8.8411E-01 -8.2152E-01
             2.9474E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2725.00607175093        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      845
 NPARAMETR:  9.9572E-01  2.3772E+00  1.0365E+00  1.8083E-01  2.1267E+00  9.8657E-01  6.0354E-01  5.1631E+00  1.4644E+00  1.8645E+00
             2.6354E+00
 PARAMETER:  9.5714E-02  9.6591E-01  1.3587E-01 -1.6102E+00  8.5458E-01  8.6474E-02 -4.0494E-01  1.7415E+00  4.8144E-01  7.2300E-01
             1.0690E+00
 GRADIENT:  -3.4034E+00  6.6527E+00 -6.1042E-01  1.8732E+00  1.5802E+00  1.3626E+00  9.3476E-02  2.0612E-01  9.7013E-01  9.1388E-01
            -5.2902E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2725.07218034206        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1025             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9732E-01  2.4110E+00  1.1112E+00  1.5404E-01  2.1424E+00  9.8362E-01  6.0131E-01  5.9076E+00  1.2805E+00  1.8801E+00
             2.6354E+00
 PARAMETER:  9.7316E-02  9.8004E-01  2.0541E-01 -1.7705E+00  8.6192E-01  8.3483E-02 -4.0864E-01  1.8762E+00  3.4724E-01  7.3133E-01
             1.0690E+00
 GRADIENT:   6.2573E+01  3.8872E+02  2.6247E-01  5.7178E+00  2.9301E+01  6.1966E+00  4.9709E+00 -7.0441E-01  2.8761E-02  9.4164E+00
             1.9458E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2725.14594323241        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1202
 NPARAMETR:  9.9724E-01  2.4059E+00  1.4968E+00  1.5871E-01  2.1655E+00  9.8271E-01  6.0746E-01  7.0346E+00  1.0794E+00  1.8964E+00
             2.6342E+00
 PARAMETER:  9.7238E-02  9.7794E-01  5.0336E-01 -1.7407E+00  8.7264E-01  8.2561E-02 -3.9847E-01  2.0508E+00  1.7636E-01  7.3997E-01
             1.0686E+00
 GRADIENT:   4.7072E-02 -9.8197E-01 -4.0068E-02 -2.3437E-01  7.8730E-01 -1.1852E-01  2.6388E-01 -7.5270E-03 -2.1946E-02  2.3838E-01
             3.4578E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2725.16366583474        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1378
 NPARAMETR:  9.9714E-01  2.3990E+00  1.6099E+00  1.6416E-01  2.1638E+00  9.7983E-01  6.0675E-01  6.9799E+00  1.1466E+00  1.8932E+00
             2.6339E+00
 PARAMETER:  9.7136E-02  9.7504E-01  5.7619E-01 -1.7069E+00  8.7185E-01  7.9621E-02 -3.9963E-01  2.0430E+00  2.3684E-01  7.3828E-01
             1.0685E+00
 GRADIENT:  -2.4632E-01  6.0196E-01 -5.6211E-02  4.7824E-02  2.6159E-01 -1.2207E+00 -1.3180E-01  1.3874E-01  7.2830E-02 -2.3133E-01
             2.0659E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2725.29948564770        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1559             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9740E-01  2.3349E+00  2.1162E+00  2.0516E-01  2.1537E+00  9.8321E-01  6.1994E-01  6.3639E+00  1.0710E+00  1.8872E+00
             2.6334E+00
 PARAMETER:  9.7396E-02  9.4798E-01  8.4963E-01 -1.4840E+00  8.6720E-01  8.3070E-02 -3.7813E-01  1.9506E+00  1.6863E-01  7.3510E-01
             1.0683E+00
 GRADIENT:   6.2909E+01  3.4719E+02  2.4132E-01  8.4995E+00  3.0705E+01  6.0024E+00  5.6254E+00  2.4722E-01  1.5879E-01  9.8970E+00
             1.9875E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2725.31303177713        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1737
 NPARAMETR:  9.9731E-01  2.3344E+00  2.0623E+00  2.0819E-01  2.1510E+00  9.8320E-01  6.2117E-01  6.3162E+00  9.8837E-01  1.8859E+00
             2.6329E+00
 PARAMETER:  9.7310E-02  9.4774E-01  8.2380E-01 -1.4693E+00  8.6595E-01  8.3062E-02 -3.7614E-01  1.9431E+00  8.8307E-02  7.3443E-01
             1.0681E+00
 GRADIENT:   2.6782E-01 -2.3614E-01 -9.3060E-02  8.4610E-02 -1.4502E-01  8.1401E-02 -1.2774E-01  2.0660E-01 -2.5598E-02  6.5009E-02
            -2.2642E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2725.31425956313        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1918
 NPARAMETR:  9.9724E-01  2.3342E+00  2.0673E+00  2.0820E-01  2.1511E+00  9.8304E-01  6.2112E-01  6.2873E+00  1.0086E+00  1.8855E+00
             2.6330E+00
 PARAMETER:  9.7233E-02  9.4766E-01  8.2623E-01 -1.4693E+00  8.6599E-01  8.2892E-02 -3.7624E-01  1.9385E+00  1.0861E-01  7.3418E-01
             1.0681E+00
 GRADIENT:   1.0016E-01 -7.0064E-01 -3.6874E-03 -1.7196E-01 -8.5295E-02  1.9830E-02  9.1333E-02  3.0004E-02 -1.9888E-02  7.1154E-02
            -3.6064E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2725.31491936284        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     2095
 NPARAMETR:  9.9719E-01  2.3341E+00  2.0910E+00  2.0871E-01  2.1521E+00  9.8299E-01  6.2032E-01  6.2824E+00  1.0318E+00  1.8851E+00
             2.6331E+00
 PARAMETER:  9.7190E-02  9.4763E-01  8.3763E-01 -1.4668E+00  8.6643E-01  8.2845E-02 -3.7752E-01  1.9377E+00  1.3132E-01  7.3398E-01
             1.0681E+00
 GRADIENT:  -2.6617E-02  3.6149E-01 -1.6142E-03 -1.4313E-02  2.5238E-02 -5.2106E-03 -3.5536E-02  3.3356E-02  4.2391E-03 -1.5874E-02
             1.2553E-03

0ITERATION NO.:   66    OBJECTIVE VALUE:  -2725.31491936284        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2117
 NPARAMETR:  9.9719E-01  2.3341E+00  2.0910E+00  2.0871E-01  2.1521E+00  9.8299E-01  6.2032E-01  6.2824E+00  1.0318E+00  1.8851E+00
             2.6331E+00
 PARAMETER:  9.7190E-02  9.4763E-01  8.3763E-01 -1.4668E+00  8.6643E-01  8.2845E-02 -3.7752E-01  1.9377E+00  1.3132E-01  7.3398E-01
             1.0681E+00
 GRADIENT:  -2.6617E-02  3.6149E-01 -1.6142E-03 -1.4313E-02  2.5238E-02 -5.2106E-03 -3.5536E-02  3.3356E-02  4.2391E-03 -1.5874E-02
             1.2553E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2117
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0579E-03 -1.0656E-02 -1.9464E-02 -1.2716E-04 -1.8055E-02
 SE:             2.9351E-02  2.7186E-02  7.0968E-03  6.9027E-03  2.6737E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7125E-01  6.9507E-01  6.0957E-03  9.8530E-01  4.9951E-01

 ETASHRINKSD(%)  1.6701E+00  8.9250E+00  7.6225E+01  7.6875E+01  1.0426E+01
 ETASHRINKVR(%)  3.3123E+00  1.7054E+01  9.4347E+01  9.4652E+01  1.9765E+01
 EBVSHRINKSD(%)  1.6268E+00  9.0948E+00  8.3410E+01  7.9393E+01  7.8850E+00
 EBVSHRINKVR(%)  3.2271E+00  1.7362E+01  9.7248E+01  9.5754E+01  1.5148E+01
 RELATIVEINF(%)  9.6695E+01  2.2161E+00  7.2062E-01  1.0587E-01  5.9327E+01
 EPSSHRINKSD(%)  1.5898E+01
 EPSSHRINKVR(%)  2.9269E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2725.3149193628442     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1096.9558385241642     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.00
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2725.315       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.97E-01  2.33E+00  2.09E+00  2.09E-01  2.15E+00  9.83E-01  6.20E-01  6.28E+00  1.03E+00  1.89E+00  2.63E+00
 


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
 #CPUT: Total CPU Time in Seconds,       31.964
Stop Time:
Thu Sep 30 23:01:17 CDT 2021
