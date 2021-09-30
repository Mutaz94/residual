Wed Sep 29 16:27:55 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat25.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1638.44768509101        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1878E+02 -4.3334E+01 -5.5303E+00 -5.0552E+01  1.2337E+01  6.2982E+01  1.0656E+00  4.6382E+00  2.1417E+00 -8.6260E+00
            -5.3361E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1648.03400096497        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.9506E-01  1.0477E+00  1.0361E+00  1.0487E+00  1.0157E+00  9.1679E-01  9.9675E-01  9.8278E-01  9.9141E-01  1.0378E+00
             1.1360E+00
 PARAMETER:  9.5049E-02  1.4661E-01  1.3542E-01  1.4754E-01  1.1559E-01  1.3125E-02  9.6746E-02  8.2630E-02  9.1375E-02  1.3710E-01
             2.2753E-01
 GRADIENT:   7.2498E+00 -4.4201E-01 -1.1513E+00 -5.6800E+00 -1.4337E+01 -1.3337E-01  1.5025E+00  2.3579E+00  1.2062E+00 -4.9608E+00
             5.1383E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1650.06805825002        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.8770E-01  1.0320E+00  1.5803E+00  1.0839E+00  1.2740E+00  9.0897E-01  7.7766E-01  1.5160E+00  1.0907E+00  1.3051E+00
             1.1250E+00
 PARAMETER:  8.7623E-02  1.3148E-01  5.5762E-01  1.8055E-01  3.4215E-01  4.5609E-03 -1.5146E-01  5.1606E-01  1.8686E-01  3.6626E-01
             2.1776E-01
 GRADIENT:  -5.8076E+00  2.4515E+00 -7.5532E-01  1.1663E+01  9.8220E+00 -2.4670E+00  1.8400E+00 -2.3772E+00  1.2320E+01 -3.3787E+00
             2.8575E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1650.81546084686        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.8862E-01  8.7606E-01  1.7435E+00  1.1857E+00  1.2390E+00  9.1418E-01  8.4248E-01  1.6026E+00  9.6256E-01  1.3139E+00
             1.1189E+00
 PARAMETER:  8.8558E-02 -3.2324E-02  6.5592E-01  2.7032E-01  3.1428E-01  1.0269E-02 -7.1407E-02  5.7165E-01  6.1845E-02  3.7301E-01
             2.1233E-01
 GRADIENT:   2.1383E-01  6.4817E+00  2.1606E+00  6.6395E+00 -4.4321E+00  4.0248E-01  3.9221E-01 -7.2665E-01  3.0357E-01 -2.3742E-01
             2.1751E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1651.26493649417        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.8584E-01  5.7452E-01  2.2231E+00  1.3885E+00  1.2511E+00  9.0913E-01  7.7066E-01  1.8992E+00  8.5818E-01  1.3533E+00
             1.1169E+00
 PARAMETER:  8.5735E-02 -4.5423E-01  8.9891E-01  4.2819E-01  3.2401E-01  4.7284E-03 -1.6050E-01  7.4142E-01 -5.2945E-02  4.0254E-01
             2.1055E-01
 GRADIENT:   3.9348E-01  5.7631E+00  4.0852E+00  8.9748E+00 -5.9880E+00 -3.6550E-01 -2.5560E-01 -8.5535E-01 -1.1738E+00  1.1428E-01
            -4.8119E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1651.53275754973        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  9.8344E-01  3.8344E-01  2.3246E+00  1.5191E+00  1.2233E+00  9.0726E-01  6.6671E-01  1.9631E+00  8.0020E-01  1.3417E+00
             1.1160E+00
 PARAMETER:  8.3298E-02 -8.5856E-01  9.4357E-01  5.1812E-01  3.0155E-01  2.6738E-03 -3.0539E-01  7.7452E-01 -1.2289E-01  3.9391E-01
             2.0978E-01
 GRADIENT:  -6.8231E-01  5.8137E+00  5.4964E-01  2.1413E+01 -2.4228E+00 -4.3630E-01 -2.2357E-01 -6.1788E-01 -1.4022E+00  1.5974E-01
            -3.1546E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1651.59019036183        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  9.8214E-01  2.9818E-01  2.3799E+00  1.5799E+00  1.2145E+00  9.0829E-01  5.9704E-01  2.0206E+00  7.7280E-01  1.3388E+00
             1.1150E+00
 PARAMETER:  8.1980E-02 -1.1101E+00  9.6705E-01  5.5737E-01  2.9429E-01  3.8032E-03 -4.1577E-01  8.0340E-01 -1.5773E-01  3.9177E-01
             2.0885E-01
 GRADIENT:  -1.5820E+00  6.0469E+00 -1.8295E+00  3.1761E+01 -1.1355E+00  3.4343E-01 -1.4594E-01  1.1038E-01 -2.0927E+00  2.4491E-01
            -6.5735E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1652.07461302436        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1237
 NPARAMETR:  9.8007E-01  1.4715E-01  2.5721E+00  1.6784E+00  1.2211E+00  9.0894E-01  4.1789E-01  2.2015E+00  7.2225E-01  1.3487E+00
             1.1140E+00
 PARAMETER:  7.9866E-02 -1.8163E+00  1.0447E+00  6.1787E-01  2.9974E-01  4.5198E-03 -7.7253E-01  8.8915E-01 -2.2538E-01  3.9911E-01
             2.0795E-01
 GRADIENT:  -2.2999E+00  2.8032E+00 -5.1893E+00  2.3814E+01  3.1428E+00  1.3938E+00 -1.8952E-02  1.2208E+00 -3.2362E+00  2.4869E-01
            -7.4268E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1652.60009958618        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1419             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8305E-01  8.0122E-02  2.8652E+00  1.7140E+00  1.2416E+00  9.0140E-01  1.0636E+00  2.3667E+00  7.0808E-01  1.3628E+00
             1.1171E+00
 PARAMETER:  8.2903E-02 -2.4242E+00  1.1526E+00  6.3883E-01  3.1644E-01 -3.8042E-03  1.6164E-01  9.6149E-01 -2.4519E-01  4.0954E-01
             2.1072E-01
 GRADIENT:   3.3002E+02  5.6242E+00  5.7867E+00  8.9002E+02  1.1804E+01  2.5079E+01  2.6398E-02  3.4120E+00  2.5658E+01  4.7652E+00
             2.4529E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1652.61648553864        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1555
 NPARAMETR:  9.8037E-01  8.0111E-02  2.8654E+00  1.7140E+00  1.2416E+00  9.0452E-01  1.2258E+00  2.3666E+00  7.0361E-01  1.3598E+00
             1.1171E+00
 PARAMETER:  8.0175E-02 -2.4243E+00  1.1527E+00  6.3880E-01  3.1642E-01 -3.5576E-04  3.0358E-01  9.6144E-01 -2.5153E-01  4.0737E-01
             2.1073E-01
 GRADIENT:   1.7744E-01  5.8836E-01 -7.8704E-02 -9.8024E+00  1.6779E-01 -8.9127E-04 -9.1116E-03 -8.9829E-01 -6.2389E-02  2.9313E-04
             7.0903E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1652.61724900256        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1730
 NPARAMETR:  9.8037E-01  8.0110E-02  2.8653E+00  1.7141E+00  1.2416E+00  9.0507E-01  1.6170E+00  2.3666E+00  7.0261E-01  1.3591E+00
             1.1171E+00
 PARAMETER:  8.0179E-02 -2.4244E+00  1.1527E+00  6.3889E-01  3.1643E-01  2.5349E-04  5.8060E-01  9.6147E-01 -2.5296E-01  4.0681E-01
             2.1073E-01
 GRADIENT:   1.9028E-01  5.9713E-01 -9.6871E-02 -9.8380E+00  2.4811E-01  2.3778E-01  2.3731E-04 -8.9394E-01 -1.1304E-01 -8.5936E-02
             6.8745E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1652.69530590701        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1909
 NPARAMETR:  9.7972E-01  5.1621E-02  2.8990E+00  1.7365E+00  1.2388E+00  9.0394E-01  1.3793E+00  2.4046E+00  6.9794E-01  1.3589E+00
             1.1137E+00
 PARAMETER:  7.9514E-02 -2.8638E+00  1.1644E+00  6.5185E-01  3.1417E-01 -9.9702E-04  4.2158E-01  9.7737E-01 -2.5963E-01  4.0664E-01
             2.0768E-01
 GRADIENT:  -6.6708E-01  5.3880E-01 -7.0396E-01 -2.0590E+00 -9.2344E-01 -1.5008E-01 -4.1557E-03 -2.1002E-01  1.0260E+00  9.4361E-02
            -5.9213E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1652.70470591624        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2089
 NPARAMETR:  9.7953E-01  3.9377E-02  2.9282E+00  1.7479E+00  1.2393E+00  9.0373E-01  1.1789E+00  2.4258E+00  6.9393E-01  1.3587E+00
             1.1136E+00
 PARAMETER:  7.9315E-02 -3.1346E+00  1.1744E+00  6.5842E-01  3.1454E-01 -1.2281E-03  2.6455E-01  9.8618E-01 -2.6539E-01  4.0650E-01
             2.0763E-01
 GRADIENT:  -9.5629E-01  5.3113E-01 -7.3647E-01  5.1489E+00 -1.5868E+00 -1.9710E-01 -3.5504E-03 -1.9504E-01  6.6285E-01  5.6239E-02
            -7.3052E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1652.78674147886        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2278
 NPARAMETR:  9.8027E-01  3.1790E-02  2.9327E+00  1.7393E+00  1.2418E+00  9.0426E-01  1.2172E+00  2.4312E+00  6.9277E-01  1.3576E+00
             1.1150E+00
 PARAMETER:  8.0075E-02 -3.3486E+00  1.1759E+00  6.5349E-01  3.1654E-01 -6.4037E-04  2.9655E-01  9.8841E-01 -2.6706E-01  4.0572E-01
             2.0884E-01
 GRADIENT:   1.7496E+00  9.4225E-04 -7.6484E-01 -2.8942E+01  1.4497E+00  1.7642E-01 -8.8382E-04 -9.3112E-02  1.2889E+00 -3.1607E-01
             2.3083E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1652.79461999513        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     2455
 NPARAMETR:  9.7980E-01  3.0798E-02  2.9956E+00  1.7394E+00  1.2479E+00  9.0378E-01  1.3507E+00  2.4720E+00  6.8917E-01  1.3637E+00
             1.1146E+00
 PARAMETER:  7.9590E-02 -3.3803E+00  1.1971E+00  6.5353E-01  3.2144E-01 -1.1737E-03  4.0066E-01  1.0050E+00 -2.7226E-01  4.1017E-01
             2.0848E-01
 GRADIENT:   2.5257E-01 -1.3298E-02  6.1809E-03 -3.3064E+01  5.2551E-02  9.3680E-03 -1.5723E-03 -6.4603E-02 -7.8821E-02 -7.0629E-03
             5.6129E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1652.79940248493        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2630
 NPARAMETR:  9.8103E-01  3.2598E-02  3.0525E+00  1.7399E+00  1.2572E+00  9.0437E-01  1.9677E+00  2.5131E+00  6.8934E-01  1.3703E+00
             1.1146E+00
 PARAMETER:  8.0846E-02 -3.3235E+00  1.2160E+00  6.5385E-01  3.2891E-01 -5.1186E-04  7.7686E-01  1.0215E+00 -2.7203E-01  4.1501E-01
             2.0848E-01
 GRADIENT:   3.3166E+00  8.9687E-03  7.1618E-02 -3.1653E+01  2.8011E-01  2.7355E-01 -6.0020E-06  5.0907E-02  2.2076E-01  3.5308E-03
             8.5553E-03

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1652.79993062190        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2805
 NPARAMETR:  9.8153E-01  2.9914E-02  3.0218E+00  1.7406E+00  1.2521E+00  9.0471E-01  2.9338E+00  2.4906E+00  6.8832E-01  1.3659E+00
             1.1147E+00
 PARAMETER:  8.1356E-02 -3.4094E+00  1.2059E+00  6.5425E-01  3.2479E-01 -1.4255E-04  1.1763E+00  1.0125E+00 -2.7350E-01  4.1184E-01
             2.0862E-01
 GRADIENT:   4.9169E+00  2.0007E-03 -5.6972E-03 -3.3159E+01  3.7276E-01  4.1767E-01  9.1084E-03 -4.6044E-02  1.3800E-01 -8.1534E-02
             5.9768E-02

0ITERATION NO.:   84    OBJECTIVE VALUE:  -1652.80001760541        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     2938
 NPARAMETR:  9.8144E-01  2.7609E-02  2.9996E+00  1.7412E+00  1.2480E+00  9.0468E-01  3.4984E+00  2.4747E+00  6.8749E-01  1.3629E+00
             1.1147E+00
 PARAMETER:  8.1329E-02 -3.4953E+00  1.1985E+00  6.5466E-01  3.2153E-01 -1.3764E-04  1.3660E+00  1.0061E+00 -2.7473E-01  4.0956E-01
             2.0863E-01
 GRADIENT:   3.1673E+00 -4.7398E-02  6.3292E-03  8.0283E+03  3.9075E-01  2.6533E-01  1.2894E-02 -1.8414E-01 -1.7083E-01 -1.4132E-01
             7.6849E-02
 NUMSIGDIG:         1.6         1.2         4.4         2.3         2.7         1.9         0.4         2.8         2.8         2.7
                    3.1

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2938
 NO. OF SIG. DIGITS IN FINAL EST.:  0.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.8714E-03 -2.3501E-03 -4.2238E-02 -6.2240E-03 -6.3912E-02
 SE:             2.9754E-02  1.5978E-03  1.8013E-02  2.8937E-02  1.9670E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4985E-01  1.4134E-01  1.9035E-02  8.2970E-01  1.1575E-03

 ETASHRINKSD(%)  3.2120E-01  9.4647E+01  3.9653E+01  3.0583E+00  3.4103E+01
 ETASHRINKVR(%)  6.4137E-01  9.9713E+01  6.3582E+01  6.0231E+00  5.6576E+01
 EBVSHRINKSD(%)  6.4268E-01  9.4811E+01  4.4438E+01  3.4471E+00  2.8979E+01
 EBVSHRINKVR(%)  1.2812E+00  9.9731E+01  6.9128E+01  6.7755E+00  4.9560E+01
 RELATIVEINF(%)  9.6117E+01  1.0796E-02  1.4784E+01  3.9934E+00  1.7345E+01
 EPSSHRINKSD(%)  4.4172E+01
 EPSSHRINKVR(%)  6.8832E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1652.8000176054086     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -917.64919104167041     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    38.65
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1652.800       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  2.75E-02  3.00E+00  1.74E+00  1.25E+00  9.05E-01  3.55E+00  2.47E+00  6.87E-01  1.36E+00  1.11E+00
 


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
+        1.39E+03
 
 TH 2
+       -3.06E+01  3.07E+02
 
 TH 3
+       -2.06E+00  1.29E+00  7.55E+00
 
 TH 4
+        2.94E+01  1.66E+02 -3.20E+04  1.02E+05
 
 TH 5
+       -8.30E-02 -6.66E+01 -1.96E+01  3.75E+02  2.15E+02
 
 TH 6
+       -4.18E+00 -5.12E+00  6.02E-04  3.88E+01  2.17E-01  2.37E+02
 
 TH 7
+        5.37E-03  1.38E-01  1.53E-03  4.92E-03  2.04E-03  3.19E-03  2.48E-03
 
 TH 8
+        1.58E-01  1.02E+00 -5.72E+00  4.58E+04 -1.01E+01  2.15E-01  1.70E-03  1.05E+01
 
 TH 9
+        4.59E+00 -6.69E+01  2.29E+00  6.82E+01  1.51E+00 -9.36E-01  2.11E-01  1.81E+00  3.70E+02
 
 TH10
+        1.62E+00  2.52E+00  9.01E-01 -7.20E+02 -4.16E+01  6.72E-01 -6.77E-04  1.24E+00 -1.45E+00  4.31E+01
 
 TH11
+       -1.34E+01 -1.27E+01 -1.20E+00 -5.68E+02 -2.02E+00  2.33E+00  7.12E-03  1.51E+00  1.21E+01  7.36E+00  1.78E+02
 
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
 #CPUT: Total CPU Time in Seconds,       45.140
Stop Time:
Wed Sep 29 16:28:42 CDT 2021
