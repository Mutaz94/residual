Sat Oct  2 03:08:23 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat12.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1618.35334236459        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1141E+02 -5.2110E+01 -3.1959E+01  2.8989E+00  1.0091E+02  5.3324E+01 -2.4542E+01 -4.5657E+00 -9.9910E+00 -2.1932E+01
            -2.0305E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1626.77358208952        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0054E+00  1.0536E+00  9.8897E-01  1.0194E+00  9.5579E-01  1.0183E+00  1.1083E+00  1.0291E+00  1.0505E+00  1.0516E+00
             1.0688E+00
 PARAMETER:  1.0541E-01  1.5226E-01  8.8904E-02  1.1925E-01  5.4785E-02  1.1812E-01  2.0282E-01  1.2872E-01  1.4922E-01  1.5036E-01
             1.6651E-01
 GRADIENT:   1.8180E+00 -1.2738E+01 -6.4751E+00  2.5723E+00  8.4696E+00  2.0516E+00 -1.1868E+01 -1.1188E+00  4.3605E+00  1.3376E+00
             9.9867E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1628.24320770875        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  1.0062E+00  1.0399E+00  9.4952E-01  1.0206E+00  9.2553E-01  1.0160E+00  1.3599E+00  1.1026E+00  9.9103E-01  9.5731E-01
             1.0436E+00
 PARAMETER:  1.0622E-01  1.3915E-01  4.8198E-02  1.2036E-01  2.2609E-02  1.1586E-01  4.0744E-01  1.9766E-01  9.0992E-02  5.6370E-02
             1.4270E-01
 GRADIENT:   3.7919E+00 -3.9581E+00 -5.3309E+00 -4.3800E+00  7.6526E+00  8.8437E-01  4.3362E+00  2.9271E+00  6.4001E+00 -2.5380E-01
             5.4707E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1628.95271981852        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  1.0018E+00  8.8247E-01  9.8874E-01  1.1287E+00  8.7088E-01  1.0118E+00  1.5091E+00  1.0179E+00  8.8237E-01  9.2598E-01
             1.0478E+00
 PARAMETER:  1.0179E-01 -2.5030E-02  8.8675E-02  2.2110E-01 -3.8252E-02  1.1176E-01  5.1152E-01  1.1774E-01 -2.5145E-02  2.3097E-02
             1.4671E-01
 GRADIENT:  -4.0841E+00  6.7559E+00  1.3324E+00  8.1990E+00 -2.2166E+00 -2.5925E-01 -2.3457E+00 -4.9687E-02 -1.6705E+00 -1.3960E+00
             9.9336E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1629.73545485873        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  1.0020E+00  6.0123E-01  1.1355E+00  1.3045E+00  8.3885E-01  1.0062E+00  2.0646E+00  1.0748E+00  8.0855E-01  9.6209E-01
             1.0379E+00
 PARAMETER:  1.0200E-01 -4.0878E-01  2.2704E-01  3.6585E-01 -7.5729E-02  1.0614E-01  8.2492E-01  1.7215E-01 -1.1251E-01  6.1352E-02
             1.3722E-01
 GRADIENT:   4.4242E+00  6.6540E+00  1.5732E+00  6.7534E+00 -6.3434E+00 -1.1788E+00  2.5935E+00 -7.7545E-02  1.3904E+00  1.3854E+00
            -2.1701E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1630.12166814678        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.9630E-01  3.8455E-01  1.4459E+00  1.4539E+00  8.9100E-01  1.0087E+00  2.6430E+00  1.3333E+00  7.5963E-01  1.0449E+00
             1.0475E+00
 PARAMETER:  9.6293E-02 -8.5569E-01  4.6871E-01  4.7425E-01 -1.5408E-02  1.0864E-01  1.0719E+00  3.8768E-01 -1.7493E-01  1.4394E-01
             1.4645E-01
 GRADIENT:   3.8367E-01  4.3760E+00  2.7682E+00  1.0620E+01 -4.6072E+00  1.5592E+00 -1.0375E-01 -4.0017E-01 -1.6290E+00  6.8213E-01
             5.6143E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1630.32951978095        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  9.9305E-01  2.1733E-01  1.6572E+00  1.5626E+00  9.1177E-01  1.0034E+00  3.4897E+00  1.5355E+00  7.4511E-01  1.0673E+00
             1.0485E+00
 PARAMETER:  9.3023E-02 -1.4263E+00  6.0513E-01  5.4638E-01  7.6335E-03  1.0338E-01  1.3498E+00  5.2886E-01 -1.9423E-01  1.6515E-01
             1.4738E-01
 GRADIENT:  -8.4212E-01  1.9223E+00  1.0858E+00  5.2932E+00 -1.2247E+00  5.1072E-01 -2.8092E-03 -1.6070E-01 -7.1810E-01 -1.2571E-01
             5.6331E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1630.40564111433        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1247             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9390E-01  2.1143E-01  1.6485E+00  1.5560E+00  9.1079E-01  1.0025E+00  3.5336E+00  1.5329E+00  7.4754E-01  1.0653E+00
             1.0464E+00
 PARAMETER:  9.3886E-02 -1.4539E+00  5.9987E-01  5.4210E-01  6.5618E-03  1.0249E-01  1.3623E+00  5.2715E-01 -1.9097E-01  1.6327E-01
             1.4535E-01
 GRADIENT:   3.7981E+02  3.8772E+01  9.5199E+00  8.1258E+02  8.6836E+00  5.2322E+01  5.3483E+01  2.7432E+00  1.4367E+01  1.0072E+00
             1.1885E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1630.41484356587        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1427             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9387E-01  2.0986E-01  1.6399E+00  1.5567E+00  9.0835E-01  1.0025E+00  3.5527E+00  1.5276E+00  7.4704E-01  1.0622E+00
             1.0463E+00
 PARAMETER:  9.3855E-02 -1.4613E+00  5.9465E-01  5.4258E-01  3.8764E-03  1.0251E-01  1.3677E+00  5.2372E-01 -1.9164E-01  1.6036E-01
             1.4522E-01
 GRADIENT:   3.7975E+02  3.8811E+01  9.0717E+00  8.1445E+02  9.1469E+00  5.2316E+01  5.4495E+01  2.8071E+00  1.4127E+01  9.0178E-01
             1.1480E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1630.42305158928        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1610             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9383E-01  2.0791E-01  1.6342E+00  1.5576E+00  9.0590E-01  1.0025E+00  3.5667E+00  1.5220E+00  7.4730E-01  1.0601E+00
             1.0462E+00
 PARAMETER:  9.3808E-02 -1.4706E+00  5.9115E-01  5.4317E-01  1.1777E-03  1.0248E-01  1.3716E+00  5.2005E-01 -1.9129E-01  1.5837E-01
             1.4514E-01
 GRADIENT:   3.7965E+02  3.8615E+01  9.2245E+00  8.1655E+02  8.7364E+00  5.2271E+01  5.4684E+01  2.6926E+00  1.4271E+01  8.8395E-01
             1.1377E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1630.42835928543        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1790             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9381E-01  2.0659E-01  1.6282E+00  1.5582E+00  9.0413E-01  1.0025E+00  3.5827E+00  1.5177E+00  7.4693E-01  1.0579E+00
             1.0461E+00
 PARAMETER:  9.3791E-02 -1.4770E+00  5.8749E-01  5.4353E-01 -7.8689E-04  1.0249E-01  1.3761E+00  5.1722E-01 -1.9178E-01  1.5632E-01
             1.4505E-01
 GRADIENT:   3.7963E+02  3.8627E+01  8.9557E+00  8.1777E+02  9.0650E+00  5.2268E+01  5.5520E+01  2.6918E+00  1.4088E+01  8.0294E-01
             1.1070E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1630.43460613119        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1973             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9377E-01  2.0478E-01  1.6247E+00  1.5590E+00  9.0202E-01  1.0025E+00  3.5939E+00  1.5135E+00  7.4726E-01  1.0570E+00
             1.0460E+00
 PARAMETER:  9.3750E-02 -1.4858E+00  5.8529E-01  5.4407E-01 -3.1155E-03  1.0246E-01  1.3792E+00  5.1445E-01 -1.9135E-01  1.5541E-01
             1.4501E-01
 GRADIENT:   3.7954E+02  3.8395E+01  9.3267E+00  8.1954E+02  8.2353E+00  5.2227E+01  5.5478E+01  2.5801E+00  1.4286E+01  8.9321E-01
             1.1213E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1630.43875228490        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     2150             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9376E-01  2.0365E-01  1.6203E+00  1.5596E+00  9.0040E-01  1.0025E+00  3.6091E+00  1.5105E+00  7.4682E-01  1.0559E+00
             1.0460E+00
 PARAMETER:  9.3737E-02 -1.4913E+00  5.8262E-01  5.4440E-01 -4.9111E-03  1.0248E-01  1.3835E+00  5.1245E-01 -1.9193E-01  1.5443E-01
             1.4495E-01
 GRADIENT:   3.7952E+02  3.8447E+01  9.2537E+00  8.2063E+02  8.0804E+00  5.2229E+01  5.6273E+01  2.6132E+00  1.4072E+01  9.5003E-01
             1.1163E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1630.44160674830        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2330
 NPARAMETR:  9.9373E-01  2.0268E-01  1.6177E+00  1.5599E+00  8.9911E-01  1.0025E+00  3.6130E+00  1.5080E+00  7.4721E-01  1.0553E+00
             1.0460E+00
 PARAMETER:  9.3713E-02 -1.4961E+00  5.8103E-01  5.4463E-01 -6.3448E-03  1.0246E-01  1.3845E+00  5.1080E-01 -1.9141E-01  1.5386E-01
             1.4496E-01
 GRADIENT:   1.4262E+00  4.5096E-01 -5.2482E-03 -1.4627E+01  1.1198E+00  2.0704E-01  1.2292E+00  1.2552E-01  5.8807E-02 -1.0445E-01
            -7.9157E-03

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1630.44493482051        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2513             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9371E-01  2.0156E-01  1.6146E+00  1.5604E+00  8.9702E-01  1.0025E+00  3.6239E+00  1.5046E+00  7.4719E-01  1.0552E+00
             1.0460E+00
 PARAMETER:  9.3691E-02 -1.5017E+00  5.7906E-01  5.4495E-01 -8.6761E-03  1.0246E-01  1.3876E+00  5.0855E-01 -1.9144E-01  1.5377E-01
             1.4494E-01
 GRADIENT:   3.7937E+02  3.8218E+01  9.8969E+00  8.2238E+02  6.4189E+00  5.2184E+01  5.6323E+01  2.5420E+00  1.4273E+01  1.2369E+00
             1.1803E+00

0ITERATION NO.:   72    OBJECTIVE VALUE:  -1630.44493482051        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     2572
 NPARAMETR:  9.9371E-01  2.0156E-01  1.6146E+00  1.5604E+00  8.9702E-01  1.0025E+00  3.6239E+00  1.5046E+00  7.4719E-01  1.0552E+00
             1.0460E+00
 PARAMETER:  9.3691E-02 -1.5017E+00  5.7906E-01  5.4495E-01 -8.6761E-03  1.0246E-01  1.3876E+00  5.0855E-01 -1.9144E-01  1.5377E-01
             1.4494E-01
 GRADIENT:   1.6584E-02  1.4203E-01  4.9606E-01 -3.8535E-01 -9.7282E-02  1.0855E-03 -1.7671E-01  9.0079E-02 -5.1748E-03  7.6916E-02
             2.1754E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2572
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9338E-04  3.4179E-02 -4.0198E-02 -2.8564E-02 -3.4532E-02
 SE:             2.9851E-02  1.6294E-02  1.8130E-02  2.4804E-02  1.9913E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7612E-01  3.5943E-02  2.6607E-02  2.4949E-01  8.2896E-02

 ETASHRINKSD(%)  1.0000E-10  4.5412E+01  3.9264E+01  1.6902E+01  3.3288E+01
 ETASHRINKVR(%)  1.0000E-10  7.0201E+01  6.3111E+01  3.0948E+01  5.5496E+01
 EBVSHRINKSD(%)  4.7802E-01  5.5730E+01  4.2860E+01  1.1630E+01  2.8191E+01
 EBVSHRINKVR(%)  9.5375E-01  8.0402E+01  6.7351E+01  2.1907E+01  4.8434E+01
 RELATIVEINF(%)  9.8696E+01  4.7311E+00  8.2592E+00  2.0059E+01  1.2769E+01
 EPSSHRINKSD(%)  4.5440E+01
 EPSSHRINKVR(%)  7.0232E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1630.4449348205117     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -895.29410825677348     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    38.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1630.445       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  2.02E-01  1.61E+00  1.56E+00  8.97E-01  1.00E+00  3.62E+00  1.50E+00  7.47E-01  1.06E+00  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       38.469
Stop Time:
Sat Oct  2 03:09:03 CDT 2021