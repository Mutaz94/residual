Sat Sep 18 08:29:10 CDT 2021
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
$DATA ../../../../data/spa/B/dat41.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m41.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1699.12249113244        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -2.7591E+01 -9.5286E+01 -2.8258E+01 -9.0767E+01  6.6012E+01  1.2329E+01  5.5577E+00  2.1304E+00  2.5683E+01 -3.8562E+00
             5.4826E-01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1707.63907913427        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      133
 NPARAMETR:  1.0388E+00  1.0690E+00  9.9058E-01  1.0283E+00  9.6926E-01  9.2949E-01  9.1919E-01  1.0008E+00  8.0207E-01  9.9030E-01
             1.0083E+00
 PARAMETER:  1.3809E-01  1.6670E-01  9.0536E-02  1.2790E-01  6.8774E-02  2.6878E-02  1.5734E-02  1.0078E-01 -1.2056E-01  9.0253E-02
             1.0823E-01
 GRADIENT:   1.3482E+01 -4.0794E+00  2.1624E+00 -1.3452E+01  6.2715E+00 -1.9049E+01 -5.2244E+00 -1.2814E+00 -1.5657E+01 -1.1405E+00
            -1.6332E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1708.20201149003        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      312
 NPARAMETR:  1.0379E+00  1.1071E+00  8.3573E-01  9.9958E-01  8.9954E-01  9.5463E-01  9.6704E-01  9.1452E-01  7.9670E-01  8.8494E-01
             1.0086E+00
 PARAMETER:  1.3724E-01  2.0173E-01 -7.9449E-02  9.9585E-02 -5.8690E-03  5.3571E-02  6.6482E-02  1.0644E-02 -1.2728E-01 -2.2238E-02
             1.0852E-01
 GRADIENT:   7.2013E+00  4.0200E+00  1.6019E+00 -4.0433E+00  2.6865E-01 -8.4401E+00 -1.8480E+00  1.0485E+00 -1.2877E+01 -2.7698E+00
            -5.6442E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.02044393967        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      488
 NPARAMETR:  1.0347E+00  1.0609E+00  8.0236E-01  1.0240E+00  8.6466E-01  9.7623E-01  9.7503E-01  7.4187E-01  8.4830E-01  8.9807E-01
             1.0037E+00
 PARAMETER:  1.3408E-01  1.5910E-01 -1.2020E-01  1.2371E-01 -4.5422E-02  7.5947E-02  7.4710E-02 -1.9859E-01 -6.4519E-02 -7.5127E-03
             1.0367E-01
 GRADIENT:  -7.3286E-01 -1.5709E+00 -1.1474E+00 -8.5338E-01  1.9337E+00  4.1625E-01  1.7990E-01  7.2677E-02  2.9335E-01  2.1355E-01
             2.2839E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1709.03667064106        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      664
 NPARAMETR:  1.0341E+00  9.6919E-01  8.8537E-01  1.0878E+00  8.6567E-01  9.7423E-01  1.0317E+00  8.1974E-01  8.1774E-01  9.1294E-01
             1.0033E+00
 PARAMETER:  1.3355E-01  6.8708E-02 -2.1749E-02  1.8413E-01 -4.4251E-02  7.3893E-02  1.3120E-01 -9.8771E-02 -1.0122E-01  8.9197E-03
             1.0325E-01
 GRADIENT:   4.9814E-01  2.1956E+00  9.1301E-01  1.6950E+00 -2.5601E+00  4.9083E-02  1.2275E-02  1.6060E-01  1.9792E-02  2.5762E-01
            -1.5064E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.07223956139        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      842
 NPARAMETR:  1.0325E+00  8.4713E-01  1.0027E+00  1.1691E+00  8.7496E-01  9.7058E-01  1.1205E+00  9.1102E-01  7.8109E-01  9.3764E-01
             1.0045E+00
 PARAMETER:  1.3202E-01 -6.5905E-02  1.0270E-01  2.5624E-01 -3.3577E-02  7.0144E-02  2.1378E-01  6.8146E-03 -1.4706E-01  3.5608E-02
             1.0448E-01
 GRADIENT:   1.0137E+00  1.6835E+00  1.4859E+00  4.9064E-01 -2.6281E+00 -7.0920E-01 -1.0549E-01  4.9318E-02 -5.4633E-01 -6.5048E-02
             2.2061E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1709.15679730164        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1018
 NPARAMETR:  1.0288E+00  6.6150E-01  1.1516E+00  1.2933E+00  8.7681E-01  9.6853E-01  1.3126E+00  1.0107E+00  7.3235E-01  9.6852E-01
             1.0035E+00
 PARAMETER:  1.2840E-01 -3.1325E-01  2.4118E-01  3.5723E-01 -3.1464E-02  6.8024E-02  3.7199E-01  1.1061E-01 -2.1150E-01  6.8013E-02
             1.0346E-01
 GRADIENT:  -8.6139E-01  3.8299E+00  7.8812E-01  8.5277E+00 -2.3848E+00 -4.3168E-01  2.7547E-02 -2.5313E-02 -9.6028E-01  5.1357E-02
            -1.8680E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1709.32410279687        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1194
 NPARAMETR:  1.0255E+00  4.6088E-01  1.3720E+00  1.4218E+00  9.0403E-01  9.6931E-01  1.5036E+00  1.2061E+00  7.0464E-01  1.0168E+00
             1.0043E+00
 PARAMETER:  1.2515E-01 -6.7461E-01  4.1626E-01  4.5190E-01 -8.9616E-04  6.8833E-02  5.0787E-01  2.8741E-01 -2.5007E-01  1.1662E-01
             1.0430E-01
 GRADIENT:   1.7076E-01 -1.7790E-01 -8.3501E-01 -1.9352E+00  6.9098E-01  1.3001E+00 -8.2911E-02  7.2835E-01  8.3727E-01  9.1532E-02
             1.5265E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1709.42217378175        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1369
 NPARAMETR:  1.0229E+00  3.1552E-01  1.5108E+00  1.5196E+00  9.0834E-01  9.6063E-01  1.7958E+00  1.3275E+00  6.7509E-01  1.0341E+00
             1.0051E+00
 PARAMETER:  1.2268E-01 -1.0535E+00  5.1263E-01  5.1843E-01  3.8592E-03  5.9835E-02  6.8546E-01  3.8333E-01 -2.9291E-01  1.3355E-01
             1.0511E-01
 GRADIENT:   1.5862E-01  1.2833E+00  5.3633E-01  8.1703E+00 -2.1425E+00 -1.2464E+00 -3.4126E-01  1.2536E-01 -3.6580E-01  2.5817E-01
             2.2644E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1709.48932677531        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1545
 NPARAMETR:  1.0214E+00  2.2978E-01  1.6085E+00  1.5735E+00  9.1650E-01  9.6272E-01  2.2991E+00  1.4217E+00  6.5631E-01  1.0393E+00
             1.0054E+00
 PARAMETER:  1.2113E-01 -1.3706E+00  5.7532E-01  5.5332E-01  1.2803E-02  6.2007E-02  9.3250E-01  4.5188E-01 -3.2111E-01  1.3853E-01
             1.0541E-01
 GRADIENT:   2.8972E-02  5.0933E-01  2.0285E-01  2.3113E+00 -3.0835E-01  2.2114E-01  2.5787E-01 -4.8321E-02  1.7088E-01 -5.0047E-02
            -2.9074E-03

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1709.56010145813        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1721
 NPARAMETR:  1.0194E+00  1.3705E-01  1.7025E+00  1.6328E+00  9.1959E-01  9.6080E-01  2.8580E+00  1.5184E+00  6.4304E-01  1.0485E+00
             1.0054E+00
 PARAMETER:  1.1924E-01 -1.8874E+00  6.3211E-01  5.9032E-01  1.6171E-02  6.0012E-02  1.1501E+00  5.1766E-01 -3.4155E-01  1.4739E-01
             1.0541E-01
 GRADIENT:  -6.8544E-01  1.1086E-01 -4.5329E-01  2.3341E-01 -6.7820E-01  3.4383E-02 -6.2345E-02  2.1036E-01 -3.5414E-01  4.1164E-01
             7.9591E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1709.62639289082        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1896
 NPARAMETR:  1.0190E+00  6.6965E-02  1.9286E+00  1.6833E+00  9.5795E-01  9.5852E-01  3.5618E+00  1.7098E+00  6.3354E-01  1.0679E+00
             1.0084E+00
 PARAMETER:  1.1880E-01 -2.6036E+00  7.5678E-01  6.2077E-01  5.7036E-02  5.7639E-02  1.3703E+00  6.3635E-01 -3.5644E-01  1.6570E-01
             1.0840E-01
 GRADIENT:   5.8821E-01 -6.0099E-02  1.2635E+00 -5.9393E+00 -6.8531E-01 -4.6119E-01 -7.1470E-02 -2.5211E-01  3.2863E-01 -3.3628E-01
             2.4000E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1709.66589420383        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     2073
 NPARAMETR:  1.0180E+00  3.4781E-02  1.9325E+00  1.7065E+00  9.5287E-01  9.5877E-01  4.4550E+00  1.7272E+00  6.2933E-01  1.0695E+00
             1.0075E+00
 PARAMETER:  1.1785E-01 -3.2587E+00  7.5879E-01  6.3445E-01  5.1723E-02  5.7893E-02  1.5940E+00  6.4648E-01 -3.6310E-01  1.6716E-01
             1.0742E-01
 GRADIENT:  -4.4707E-01  8.7722E-02 -6.7248E-01  4.8925E+00 -3.3257E-01 -1.9148E-01 -3.7686E-02  5.0515E-01  3.5560E-01  2.1680E-01
             1.2086E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1709.69836708636        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2248
 NPARAMETR:  1.0178E+00  1.0393E-02  1.9942E+00  1.7231E+00  9.6084E-01  9.6021E-01  6.8544E+00  1.7717E+00  6.2404E-01  1.0737E+00
             1.0075E+00
 PARAMETER:  1.1761E-01 -4.4666E+00  7.9026E-01  6.4410E-01  6.0055E-02  5.9392E-02  2.0249E+00  6.7196E-01 -3.7154E-01  1.7111E-01
             1.0751E-01
 GRADIENT:  -1.8294E-01  2.2492E-02 -3.2769E-03  2.6493E+00 -2.4492E-01  5.4019E-01 -8.3398E-03  2.1488E-02  1.7987E-02  1.9687E-02
            -1.3083E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1709.70022156259        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2427
 NPARAMETR:  1.0178E+00  1.0000E-02  1.9897E+00  1.7222E+00  9.5984E-01  9.5881E-01  7.0050E+00  1.7678E+00  6.2395E-01  1.0730E+00
             1.0078E+00
 PARAMETER:  1.1768E-01 -4.5174E+00  7.8798E-01  6.4363E-01  5.9015E-02  5.7938E-02  2.0466E+00  6.6971E-01 -3.7168E-01  1.7044E-01
             1.0773E-01
 GRADIENT:  -1.3015E-02  0.0000E+00 -2.1463E-03  2.9599E-03  9.4611E-04 -2.8897E-02 -8.0813E-03 -1.0125E-03 -2.2844E-02 -3.5912E-03
             1.4704E-03

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1709.70045593367        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2611
 NPARAMETR:  1.0180E+00  1.0000E-02  1.9897E+00  1.7221E+00  9.5990E-01  9.5942E-01  7.3000E+00  1.7677E+00  6.2416E-01  1.0732E+00
             1.0077E+00
 PARAMETER:  1.1782E-01 -4.5174E+00  7.8801E-01  6.4354E-01  5.9072E-02  5.8572E-02  2.0879E+00  6.6970E-01 -3.7134E-01  1.7068E-01
             1.0764E-01
 GRADIENT:   3.2183E-01  0.0000E+00  6.8695E-03 -5.1661E-01  3.6909E-02  2.4548E-01 -8.6014E-03  2.5348E-03  1.2109E-01  2.1137E-02
            -1.8906E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1709.70482732875        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2793
 NPARAMETR:  1.0177E+00  1.0000E-02  1.9894E+00  1.7222E+00  9.5971E-01  9.5879E-01  1.0737E+01  1.7675E+00  6.2324E-01  1.0724E+00
             1.0079E+00
 PARAMETER:  1.1759E-01 -4.5174E+00  7.8785E-01  6.4361E-01  5.8881E-02  5.7914E-02  2.4737E+00  6.6956E-01 -3.7283E-01  1.6990E-01
             1.0783E-01
 GRADIENT:  -2.5196E-01  0.0000E+00  2.7838E-02 -8.0007E-02 -1.2806E-02 -3.8567E-02  1.9941E-04 -4.3543E-03 -4.5600E-02 -2.3324E-02
             3.8991E-02

0ITERATION NO.:   83    OBJECTIVE VALUE:  -1709.70484781572        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     2885
 NPARAMETR:  1.0178E+00  1.0000E-02  1.9892E+00  1.7222E+00  9.5973E-01  9.5889E-01  1.0729E+01  1.7674E+00  6.2331E-01  1.0726E+00
             1.0078E+00
 PARAMETER:  1.1765E-01 -4.5174E+00  7.8775E-01  6.4358E-01  5.8894E-02  5.8021E-02  2.4730E+00  6.6950E-01 -3.7271E-01  1.7013E-01
             1.0775E-01
 GRADIENT:  -8.0904E-02  0.0000E+00  5.9295E-03 -2.3239E-01  2.1345E-02  1.0650E-02 -6.2959E-05  5.3564E-03 -3.4876E-03  8.1564E-05
             1.1847E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2885
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.5126E-05  5.1553E-04 -3.7925E-02 -9.3669E-03 -4.8167E-02
 SE:             2.9834E-02  1.9786E-03  1.9149E-02  2.8944E-02  1.9912E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9933E-01  7.9444E-01  4.7650E-02  7.4623E-01  1.5565E-02

 ETASHRINKSD(%)  5.0723E-02  9.3371E+01  3.5847E+01  3.0331E+00  3.3292E+01
 ETASHRINKVR(%)  1.0142E-01  9.9561E+01  5.8844E+01  5.9742E+00  5.5500E+01
 EBVSHRINKSD(%)  4.4368E-01  9.3703E+01  3.9273E+01  3.5640E+00  2.9343E+01
 EBVSHRINKVR(%)  8.8539E-01  9.9604E+01  6.3122E+01  7.0011E+00  5.0076E+01
 RELATIVEINF(%)  9.5297E+01  1.0929E-02  1.0393E+01  2.8847E+00  8.8714E+00
 EPSSHRINKSD(%)  4.5200E+01
 EPSSHRINKVR(%)  6.9970E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1709.7048478157210     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -974.55402125198282     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    36.13
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1709.705       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.00E-02  1.99E+00  1.72E+00  9.60E-01  9.59E-01  1.07E+01  1.77E+00  6.23E-01  1.07E+00  1.01E+00
 


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
+        1.21E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -3.86E+00  0.00E+00  2.13E+01
 
 TH 4
+        3.51E+01  0.00E+00 -1.96E+01  9.25E+02
 
 TH 5
+        1.07E+00  0.00E+00 -1.02E+02 -6.46E+01  5.31E+02
 
 TH 6
+        9.23E+01  0.00E+00 -1.16E+00  2.76E+00 -1.04E+01  2.24E+02
 
 TH 7
+        3.24E-02  0.00E+00  4.86E-03  2.46E-02 -3.38E-04  1.81E-02  7.49E-05
 
 TH 8
+        1.34E+00  0.00E+00  1.30E+00 -4.97E+00 -6.96E+00  3.58E+00 -1.96E-03  2.84E-01
 
 TH 9
+        2.30E+01  0.00E+00  2.02E+01  2.66E+01 -5.43E+01  5.24E+01  1.66E-01 -7.28E-02  6.27E+02
 
 TH10
+        1.48E+01  0.00E+00  1.32E+01 -2.74E+00 -6.72E+01  1.19E+01  1.19E-03  1.09E+00  8.84E+00  9.26E+00
 
 TH11
+       -2.07E+01  0.00E+00 -2.80E+00 -6.42E+01 -6.75E+00  8.98E+01 -4.56E-02  5.02E+00  4.06E+01  4.56E+00  1.47E+02
 
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
+        1.15E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.48E+00  0.00E+00  3.55E+01
 
 TH 4
+       -1.35E+01  0.00E+00 -1.87E+01  8.98E+02
 
 TH 5
+       -1.91E+00  0.00E+00 -1.00E+02 -7.65E+01  5.39E+02
 
 TH 6
+       -2.09E+01  0.00E+00 -1.54E+00 -4.05E+00  2.82E+00  1.98E+02
 
 TH 7
+       -1.83E-04  0.00E+00  3.59E-03 -1.03E-02  2.73E-02  2.18E-02  2.19E-03
 
 TH 8
+        6.61E-01  0.00E+00 -1.35E+01 -3.75E+00 -9.01E+00  1.57E+00 -2.72E-04  1.88E+01
 
 TH 9
+        2.27E+00  0.00E+00  6.13E+00 -1.55E+00  6.08E+00 -1.76E+01  1.13E-01 -4.51E-01  4.42E+02
 
 TH10
+        8.77E+00  0.00E+00  7.70E-01 -2.20E+00 -6.59E+01  8.22E+00  4.25E-02  8.92E+00 -9.90E-01  4.46E+01
 
 TH11
+       -2.01E+01  0.00E+00 -5.39E+00 -1.52E+01 -1.11E+01  3.63E+01 -8.66E-02  5.05E+00  1.65E+01 -6.15E-01  1.82E+02
 
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
+        1.16E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -7.87E+00  0.00E+00  3.48E+01
 
 TH 4
+       -3.74E+01  0.00E+00 -2.11E+01  8.98E+02
 
 TH 5
+       -1.43E+01  0.00E+00 -9.90E+01 -9.65E+01  5.57E+02
 
 TH 6
+       -1.39E+02  0.00E+00 -1.79E+00 -2.55E+01  1.34E+01  2.12E+02
 
 TH 7
+        1.53E-02  0.00E+00 -4.67E-06 -3.94E-03  7.79E-03 -1.58E-02  2.44E-05
 
 TH 8
+        9.28E+00  0.00E+00 -1.32E+01  9.48E-01 -1.08E+01 -7.82E-02  5.51E-04  1.79E+01
 
 TH 9
+        1.96E+01  0.00E+00 -8.69E-02 -1.69E+01  4.77E+01 -6.63E+01  7.82E-02 -3.76E+00  3.30E+02
 
 TH10
+        3.03E+01  0.00E+00 -7.54E-01  4.58E+00 -5.81E+01 -5.35E+00  4.76E-03  7.15E+00 -6.23E+00  4.78E+01
 
 TH11
+        2.69E+01  0.00E+00 -2.61E+00  6.24E+01 -2.52E+01 -3.84E+01  6.01E-03 -3.80E-01  1.61E+01  1.51E+01  2.66E+02
 
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
 #CPUT: Total CPU Time in Seconds,       42.557
Stop Time:
Sat Sep 18 08:29:54 CDT 2021