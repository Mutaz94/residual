Wed Sep 29 16:07:50 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat78.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1643.16343326734        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5651E+02 -7.4738E+01 -5.4234E+01 -3.6835E+01  3.9109E+01  2.6574E+01 -1.2861E+01  1.6651E+01 -2.8161E+00  9.2551E+00
            -2.1828E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1659.56304845368        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8026E-01  1.1712E+00  1.3327E+00  9.8595E-01  1.1976E+00  1.0149E+00  1.0901E+00  8.6302E-01  1.0337E+00  9.8665E-01
             1.0776E+00
 PARAMETER:  8.0062E-02  2.5803E-01  3.8720E-01  8.5854E-02  2.8031E-01  1.1479E-01  1.8626E-01 -4.7323E-02  1.3318E-01  8.6559E-02
             1.7473E-01
 GRADIENT:   1.3120E+01 -4.8589E+00 -1.2182E+01  7.0455E+00  3.0120E+01  7.8276E-01  2.0621E+00  4.1236E+00 -1.8778E+00 -2.5172E+01
             2.1216E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1662.49488249419        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7083E-01  1.2270E+00  1.6900E+00  9.4378E-01  1.3027E+00  9.8506E-01  9.4314E-01  7.0552E-01  1.1235E+00  1.2758E+00
             1.0252E+00
 PARAMETER:  7.0397E-02  3.0454E-01  6.2471E-01  4.2138E-02  3.6444E-01  8.4947E-02  4.1460E-02 -2.4882E-01  2.1647E-01  3.4356E-01
             1.2485E-01
 GRADIENT:  -5.9435E+00 -6.9701E-01  1.2596E+01 -1.5148E+01 -1.5677E+01 -1.0938E+01  4.6594E+00 -8.1587E-01 -4.5316E+00  1.1059E+00
            -2.1497E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1664.50675292301        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.7756E-01  1.4121E+00  1.3800E+00  8.3448E-01  1.3225E+00  1.0192E+00  6.9155E-01  4.0771E-01  1.3588E+00  1.2486E+00
             1.0826E+00
 PARAMETER:  7.7308E-02  4.4507E-01  4.2211E-01 -8.0948E-02  3.7952E-01  1.1900E-01 -2.6882E-01 -7.9720E-01  4.0661E-01  3.2204E-01
             1.7937E-01
 GRADIENT:   5.2216E+00  8.5810E+00 -4.4967E+00  1.5980E+01  7.5795E+00  2.2603E+00 -8.2299E-01  2.1346E-01  8.0806E-02 -1.0151E+00
             5.9737E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1664.85718892121        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.7549E-01  1.5416E+00  1.3521E+00  7.3515E-01  1.3565E+00  1.0136E+00  5.9043E-01  3.7541E-01  1.5303E+00  1.2852E+00
             1.0678E+00
 PARAMETER:  7.5188E-02  5.3285E-01  4.0169E-01 -2.0769E-01  4.0493E-01  1.1354E-01 -4.2690E-01 -8.7975E-01  5.2543E-01  3.5091E-01
             1.6557E-01
 GRADIENT:   2.2282E-01  8.4641E+00  7.7516E-01  6.9698E+00 -4.1098E+00  8.3434E-02 -1.9101E+00 -2.7357E-02 -1.5974E+00  3.5229E-01
            -2.2977E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1664.98253627793        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.7496E-01  1.7351E+00  1.2120E+00  6.1332E-01  1.4104E+00  1.0203E+00  6.2196E-01  3.5327E-01  1.7084E+00  1.2910E+00
             1.0835E+00
 PARAMETER:  7.4643E-02  6.5106E-01  2.9226E-01 -3.8887E-01  4.4385E-01  1.2012E-01 -3.7488E-01 -9.4052E-01  6.3554E-01  3.5538E-01
             1.8021E-01
 GRADIENT:  -2.7693E+00  1.5350E+01 -6.0989E-01  1.0570E+01 -2.9780E+00  2.4282E+00 -3.1818E+00  2.7293E-01 -1.0102E+00 -2.1052E-02
             3.7139E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1665.00782172453        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  9.7481E-01  1.8346E+00  1.1278E+00  5.5124E-01  1.4403E+00  1.0219E+00  6.5814E-01  3.2686E-01  1.7963E+00  1.2932E+00
             1.0898E+00
 PARAMETER:  7.4486E-02  7.0682E-01  2.2029E-01 -4.9558E-01  4.6487E-01  1.2167E-01 -3.1834E-01 -1.0182E+00  6.8571E-01  3.5714E-01
             1.8596E-01
 GRADIENT:  -3.8814E+00  1.6506E+01 -1.0245E+00  1.0913E+01 -1.6810E+00  2.9234E+00 -2.1317E+00  3.4455E-01  1.5755E-03 -3.6485E-01
             6.0508E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1665.33086939919        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  9.7652E-01  1.8529E+00  1.1113E+00  5.2860E-01  1.4496E+00  1.0142E+00  6.7124E-01  1.8425E-01  1.8224E+00  1.3002E+00
             1.0750E+00
 PARAMETER:  7.6240E-02  7.1676E-01  2.0551E-01 -5.3753E-01  4.7129E-01  1.1411E-01 -2.9863E-01 -1.5915E+00  7.0015E-01  3.6255E-01
             1.7236E-01
 GRADIENT:   2.1773E-01  3.5067E-01  8.3151E-01  2.8485E+00 -1.4118E+00  3.7072E-03 -4.5672E-01  1.0092E-01 -4.5813E-02 -4.5022E-01
            -2.6502E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1665.39079023429        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1420
 NPARAMETR:  9.7691E-01  1.8681E+00  1.0827E+00  5.1524E-01  1.4548E+00  1.0144E+00  6.8284E-01  3.0627E-02  1.8313E+00  1.3019E+00
             1.0735E+00
 PARAMETER:  7.6644E-02  7.2495E-01  1.7947E-01 -5.6312E-01  4.7487E-01  1.1430E-01 -2.8149E-01 -3.3859E+00  7.0505E-01  3.6383E-01
             1.7091E-01
 GRADIENT:   1.0604E+00 -6.9165E+00  1.9047E-01  2.1987E-01 -3.7024E-02  7.3468E-02  3.0803E-01  3.2900E-03 -1.3752E-01 -2.2070E-01
            -2.6398E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1665.39737832588        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1605             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7705E-01  1.8651E+00  1.0838E+00  5.1583E-01  1.4539E+00  1.0144E+00  6.7810E-01  1.0000E-02  1.8379E+00  1.3030E+00
             1.0739E+00
 PARAMETER:  7.6780E-02  7.2330E-01  1.8045E-01 -5.6197E-01  4.7423E-01  1.1433E-01 -2.8845E-01 -5.2435E+00  7.0862E-01  3.6468E-01
             1.7126E-01
 GRADIENT:   3.5835E+02  6.8448E+02  2.2211E-01  7.5783E+01  1.8056E+01  3.6770E+01  1.1525E+01  0.0000E+00  2.5425E+01  3.3992E+00
             1.3846E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1665.39899288586        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1793
 NPARAMETR:  9.7703E-01  1.8627E+00  1.0852E+00  5.1717E-01  1.4534E+00  1.0144E+00  6.7618E-01  1.0000E-02  1.8386E+00  1.3027E+00
             1.0740E+00
 PARAMETER:  7.6766E-02  7.2201E-01  1.8172E-01 -5.5938E-01  4.7389E-01  1.1432E-01 -2.9130E-01 -5.2435E+00  7.0902E-01  3.6445E-01
             1.7136E-01
 GRADIENT:   1.3629E+00 -9.6682E+00 -2.9197E-01 -2.4754E-01  5.1223E-01  9.4272E-02  3.3988E-03  0.0000E+00  3.2470E-01  4.3981E-03
             9.3163E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1665.40036962367        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1985             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7703E-01  1.8615E+00  1.0883E+00  5.1805E-01  1.4525E+00  1.0144E+00  6.7626E-01  1.0000E-02  1.8366E+00  1.3027E+00
             1.0738E+00
 PARAMETER:  7.6766E-02  7.2137E-01  1.8459E-01 -5.5769E-01  4.7328E-01  1.1433E-01 -2.9118E-01 -5.2435E+00  7.0789E-01  3.6445E-01
             1.7124E-01
 GRADIENT:   3.5836E+02  6.8083E+02  4.0730E-01  7.5724E+01  1.7745E+01  3.6769E+01  1.1480E+01  0.0000E+00  2.5606E+01  3.3955E+00
             1.3525E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1665.40328381438        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2171
 NPARAMETR:  9.7702E-01  1.8574E+00  1.0917E+00  5.2079E-01  1.4511E+00  1.0144E+00  6.7619E-01  1.0000E-02  1.8310E+00  1.3023E+00
             1.0737E+00
 PARAMETER:  7.6755E-02  7.1918E-01  1.8770E-01 -5.5242E-01  4.7232E-01  1.1432E-01 -2.9128E-01 -5.2435E+00  7.0486E-01  3.6412E-01
             1.7115E-01
 GRADIENT:   1.3841E+00 -8.8905E+00  1.3265E-01 -2.9289E-01 -2.1095E-01  1.0094E-01  5.0199E-02  0.0000E+00  2.4127E-01  3.5450E-02
            -3.7707E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1665.40415270834        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2360             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7702E-01  1.8553E+00  1.0894E+00  5.2194E-01  1.4510E+00  1.0144E+00  6.7636E-01  1.0000E-02  1.8286E+00  1.3019E+00
             1.0739E+00
 PARAMETER:  7.6747E-02  7.1805E-01  1.8565E-01 -5.5020E-01  4.7224E-01  1.1431E-01 -2.9102E-01 -5.2435E+00  7.0356E-01  3.6379E-01
             1.7125E-01
 GRADIENT:   3.5829E+02  6.7286E+02  7.1733E-02  7.5687E+01  1.8430E+01  3.6754E+01  1.1348E+01  0.0000E+00  2.5675E+01  3.4048E+00
             1.5054E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1665.40507721416        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2545
 NPARAMETR:  9.7702E-01  1.8549E+00  1.0913E+00  5.2244E-01  1.4503E+00  1.0144E+00  6.7659E-01  1.0000E-02  1.8270E+00  1.3017E+00
             1.0737E+00
 PARAMETER:  7.6747E-02  7.1782E-01  1.8734E-01 -5.4925E-01  4.7177E-01  1.1431E-01 -2.9069E-01 -5.2435E+00  7.0266E-01  3.6367E-01
             1.7113E-01
 GRADIENT:   1.3776E+00 -9.2097E+00 -6.3485E-02 -2.7377E-01  7.7690E-02  9.9263E-02  2.9516E-02  0.0000E+00  2.8113E-01  3.9613E-02
             2.5034E-02

0ITERATION NO.:   71    OBJECTIVE VALUE:  -1665.40507721416        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2567
 NPARAMETR:  9.7702E-01  1.8549E+00  1.0913E+00  5.2244E-01  1.4503E+00  1.0144E+00  6.7659E-01  1.0000E-02  1.8270E+00  1.3017E+00
             1.0737E+00
 PARAMETER:  7.6747E-02  7.1782E-01  1.8734E-01 -5.4925E-01  4.7177E-01  1.1431E-01 -2.9069E-01 -5.2435E+00  7.0266E-01  3.6367E-01
             1.7113E-01
 GRADIENT:   1.3776E+00 -9.2097E+00 -6.3485E-02 -2.7377E-01  7.7690E-02  9.9263E-02  2.9516E-02  0.0000E+00  2.8113E-01  3.9613E-02
             2.5034E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2567
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.7545E-04 -4.0720E-02 -1.1801E-04  2.3174E-02 -4.2592E-02
 SE:             2.9757E-02  1.8861E-02  6.1101E-05  2.3147E-02  2.3474E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9261E-01  3.0853E-02  5.3425E-02  3.1675E-01  6.9605E-02

 ETASHRINKSD(%)  3.0949E-01  3.6813E+01  9.9795E+01  2.2454E+01  2.1361E+01
 ETASHRINKVR(%)  6.1802E-01  6.0074E+01  1.0000E+02  3.9866E+01  3.8158E+01
 EBVSHRINKSD(%)  5.0460E-01  3.3697E+01  9.9787E+01  2.4648E+01  1.8871E+01
 EBVSHRINKVR(%)  1.0067E+00  5.6039E+01  1.0000E+02  4.3221E+01  3.4181E+01
 RELATIVEINF(%)  9.8922E+01  3.8834E+00  1.9799E-04  5.4975E+00  3.0811E+01
 EPSSHRINKSD(%)  4.1116E+01
 EPSSHRINKVR(%)  6.5326E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1665.4050772141609     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -930.25425065042270     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.38
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.55
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1665.405       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.77E-01  1.85E+00  1.09E+00  5.22E-01  1.45E+00  1.01E+00  6.77E-01  1.00E-02  1.83E+00  1.30E+00  1.07E+00
 


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
+        1.12E+03
 
 TH 2
+       -8.37E+00  3.29E+02
 
 TH 3
+        1.55E+00  3.70E+01  5.23E+01
 
 TH 4
+       -8.87E+00  3.83E+02 -3.03E+01  7.05E+02
 
 TH 5
+       -2.52E+00 -7.39E+01 -4.54E+01  3.76E+01  2.08E+02
 
 TH 6
+        1.09E+00 -1.86E+00  4.14E-01 -3.87E+00 -1.70E+00  1.89E+02
 
 TH 7
+        2.42E+00 -3.19E+01  1.48E+01 -1.92E+01 -1.86E+01 -5.45E-02  9.05E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        9.61E-01 -1.32E+01 -6.77E+00  3.92E+01  2.96E+00 -2.33E-01  2.65E+01  0.00E+00  2.41E+01
 
 TH10
+       -1.93E-01 -4.48E+00 -6.90E+00 -2.90E+00 -3.45E+01  4.99E-01  4.28E+00  0.00E+00  9.18E-01  5.67E+01
 
 TH11
+       -1.02E+01 -2.17E+01 -1.27E+01 -2.68E+00  4.24E+00  1.88E+00  6.89E+00  0.00E+00  2.69E+00  1.69E+01  2.09E+02
 
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
 #CPUT: Total CPU Time in Seconds,       43.979
Stop Time:
Wed Sep 29 16:08:36 CDT 2021
