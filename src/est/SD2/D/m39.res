Fri Oct  1 15:29:45 CDT 2021
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
$DATA ../../../../data/SD2/D/dat39.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m39.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   16861.3747548346        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.9424E+02  3.4384E+02 -2.1915E+01  1.6749E+02  7.5571E+01 -1.4949E+03 -6.2208E+02 -5.5233E+01 -1.1987E+03 -3.7626E+02
            -3.3806E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -644.298737089801        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2307E+00  9.8213E-01  9.5716E-01  1.6143E+00  1.2860E+00  2.3087E+00  1.2248E+00  9.5477E-01  1.4526E+00  1.0270E+00
             1.4059E+01
 PARAMETER:  3.0757E-01  8.1971E-02  5.6214E-02  5.7887E-01  3.5154E-01  9.3669E-01  3.0280E-01  5.3720E-02  4.7334E-01  1.2662E-01
             2.7433E+00
 GRADIENT:  -2.4158E+01  9.4390E+00 -1.0003E+01  4.1775E+00 -2.6810E+00  7.9886E+01  7.4290E-01  5.9156E+00  1.8866E+00  2.4845E+00
             2.5537E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -676.054790477307        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2590E+00  7.9462E-01  1.3997E+00  1.9904E+00  8.2908E+00  1.9628E+00  3.7726E+00  4.0016E-01  2.0142E+00  4.6065E+00
             1.2561E+01
 PARAMETER:  3.3035E-01 -1.2989E-01  4.3627E-01  7.8836E-01  2.2152E+00  7.7437E-01  1.4278E+00 -8.1590E-01  8.0021E-01  1.6275E+00
             2.6306E+00
 GRADIENT:  -2.0255E-01  2.1072E+01  8.0494E+00  6.3568E+01 -5.1202E-01  4.6656E+00  1.1052E+01 -2.3613E-01  2.6986E+01 -4.9671E-02
             2.0777E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -698.034482583423        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.1694E+00  8.3498E-01  8.7096E-01  1.4549E+00  7.4400E+00  1.7580E+00  1.2237E+00  3.5931E-02  1.6344E+00  8.9264E+00
             1.2187E+01
 PARAMETER:  2.5648E-01 -8.0343E-02 -3.8162E-02  4.7492E-01  2.1069E+00  6.6416E-01  3.0187E-01 -3.2262E+00  5.9128E-01  2.2890E+00
             2.6004E+00
 GRADIENT:  -1.2558E+01  1.3848E+01  4.9053E-01  2.9239E+00 -1.1087E+01 -2.2678E+00  4.6961E+00  2.6801E-03  1.1365E+01  1.4450E+01
             1.9885E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -779.028506972001        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  8.3478E-01  1.1981E-01  1.8595E-01  1.0834E+00  2.4708E+01  1.6468E+00  3.1173E-01  1.0000E-02  1.2201E+00  7.7953E+00
             7.7366E+00
 PARAMETER: -8.0592E-02 -2.0218E+00 -1.5823E+00  1.8010E-01  3.3071E+00  5.9882E-01 -1.0656E+00 -8.2827E+00  2.9892E-01  2.1535E+00
             2.1460E+00
 GRADIENT:   2.3964E+01  8.9385E+00 -3.0749E+00  9.8828E+01 -2.3352E-03 -1.2879E+01  3.3592E-01  0.0000E+00  1.5328E+01  8.0741E-01
            -1.6262E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -826.287424785396        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      423
 NPARAMETR:  6.1312E-01  3.4528E-02  5.5913E-02  5.3689E-01  4.4333E+01  1.4629E+00  1.0000E-02  1.0000E-02  5.6932E-01  3.4376E+00
             9.5259E+00
 PARAMETER: -3.8919E-01 -3.2660E+00 -2.7840E+00 -5.2196E-01  3.8917E+00  4.8041E-01 -6.9958E+00 -1.6353E+01 -4.6332E-01  1.3348E+00
             2.3540E+00
 GRADIENT:   2.5820E+01 -1.0909E+00 -6.6571E+01  1.1071E+02  1.4668E-01 -5.6306E+00  0.0000E+00  0.0000E+00 -1.4598E+01  5.1355E-03
            -2.5427E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -835.873707542416        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      600
 NPARAMETR:  5.2140E-01  2.2431E-02  3.6845E-02  3.9341E-01  7.7058E+01  1.4969E+00  1.0000E-02  1.0000E-02  8.3443E-01  3.3535E+00
             9.0245E+00
 PARAMETER: -5.5123E-01 -3.6973E+00 -3.2010E+00 -8.3291E-01  4.4446E+00  5.0341E-01 -9.8014E+00 -1.9101E+01 -8.1002E-02  1.3100E+00
             2.2999E+00
 GRADIENT:   1.7195E+01  6.2718E-01 -4.4368E+01  5.4698E+01  2.6689E-02  6.8848E+00  0.0000E+00  0.0000E+00  7.3256E+00  7.6522E-04
             8.2848E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -838.435980282838        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      784
 NPARAMETR:  4.7316E-01  1.3998E-02  3.0372E-02  3.2994E-01  6.8696E+01  1.4399E+00  1.0000E-02  1.0000E-02  7.7156E-01  2.4526E+00
             8.8925E+00
 PARAMETER: -6.4832E-01 -4.1688E+00 -3.3942E+00 -1.0088E+00  4.3297E+00  4.6459E-01 -1.0894E+01 -2.0234E+01 -1.5933E-01  9.9715E-01
             2.2852E+00
 GRADIENT:   1.0963E+00  2.9192E-02 -6.0036E-01  7.9926E-02  8.6551E-03 -4.1791E-02  0.0000E+00  0.0000E+00  3.6753E-01  7.0162E-05
            -6.5197E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -838.436880558901        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      961
 NPARAMETR:  4.7263E-01  1.3287E-02  3.0388E-02  3.3008E-01  5.8166E+01  1.4401E+00  1.0000E-02  1.0000E-02  7.6815E-01  1.9392E+00
             8.8992E+00
 PARAMETER: -6.4945E-01 -4.2210E+00 -3.3937E+00 -1.0084E+00  4.1633E+00  4.6474E-01 -1.0894E+01 -2.0234E+01 -1.6378E-01  7.6228E-01
             2.2860E+00
 GRADIENT:  -2.3633E-02  6.8553E-03 -8.2794E-02 -4.9309E-03  9.8863E-03 -1.8166E-03  0.0000E+00  0.0000E+00 -2.9696E-02  5.6424E-05
            -6.0078E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -838.470344323867        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1143
 NPARAMETR:  4.7324E-01  1.0000E-02  3.0357E-02  3.3042E-01  1.1332E+01  1.4419E+00  1.0000E-02  1.0000E-02  7.6257E-01  2.5071E-01
             8.9021E+00
 PARAMETER: -6.4815E-01 -4.6054E+00 -3.3947E+00 -1.0074E+00  2.5276E+00  4.6598E-01 -1.0894E+01 -2.0234E+01 -1.7106E-01 -1.2835E+00
             2.2863E+00
 GRADIENT:   9.1357E-02  0.0000E+00 -4.8322E-01  3.2422E-01 -1.5752E-02  1.2891E-02  0.0000E+00  0.0000E+00 -6.1533E-01  3.9811E-05
            -2.5310E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -838.475975740309        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1328
 NPARAMETR:  4.7353E-01  1.0000E-02  3.0291E-02  3.3035E-01  1.1635E+01  1.4424E+00  1.0000E-02  1.0000E-02  7.6707E-01  2.1799E-01
             8.8975E+00
 PARAMETER: -6.4755E-01 -4.6244E+00 -3.3969E+00 -1.0076E+00  2.5541E+00  4.6630E-01 -1.0894E+01 -2.0234E+01 -1.6518E-01 -1.4233E+00
             2.2858E+00
 GRADIENT:   1.6129E+00  0.0000E+00 -3.3119E+00  3.2699E+00  1.3536E-02  6.1901E-02  0.0000E+00  0.0000E+00 -8.7951E-02  2.4835E-05
            -7.9051E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -838.542641573213        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1496
 NPARAMETR:  4.6895E-01  1.0000E-02  2.9619E-02  3.2497E-01  1.1179E+01  1.4386E+00  1.0000E-02  1.0000E-02  7.6749E-01  1.3400E-01
             8.8959E+00
 PARAMETER: -6.5725E-01 -4.6244E+00 -3.4193E+00 -1.0240E+00  2.5141E+00  4.6364E-01 -1.0894E+01 -2.0234E+01 -1.6463E-01 -1.9099E+00
             2.2856E+00
 GRADIENT:   3.9971E-02  0.0000E+00 -3.7938E+00  4.1579E+00 -2.7776E-02 -2.7122E-01  0.0000E+00  0.0000E+00  2.3844E-02  1.3909E-05
            -5.0525E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -838.553162342171        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     1693             RESET HESSIAN, TYPE I
 NPARAMETR:  4.6882E-01  1.0000E-02  2.9568E-02  3.2371E-01  1.1361E+01  1.4395E+00  1.0000E-02  1.0000E-02  7.6743E-01  1.1375E-01
             8.9016E+00
 PARAMETER: -6.5753E-01 -4.6244E+00 -3.4211E+00 -1.0279E+00  2.5302E+00  4.6429E-01 -1.0894E+01 -2.0234E+01 -1.6470E-01 -2.0738E+00
             2.2862E+00
 GRADIENT:   6.3664E+01  0.0000E+00  8.4405E+01  2.8788E+01 -7.8089E-03  7.8211E+00  0.0000E+00  0.0000E+00  4.2911E-01  1.4042E-05
             2.3358E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -838.560306048828        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1878             RESET HESSIAN, TYPE I
 NPARAMETR:  4.6855E-01  1.0000E-02  2.9500E-02  3.2332E-01  1.1552E+01  1.4392E+00  1.0000E-02  1.0000E-02  7.6713E-01  1.0723E-01
             8.8999E+00
 PARAMETER: -6.5810E-01 -4.6244E+00 -3.4234E+00 -1.0291E+00  2.5468E+00  4.6411E-01 -1.0894E+01 -2.0234E+01 -1.6510E-01 -2.1328E+00
             2.2860E+00
 GRADIENT:   6.4121E+01  0.0000E+00  8.3526E+01  2.9996E+01  5.9303E-03  7.8021E+00  0.0000E+00  0.0000E+00  3.5350E-01  1.1438E-05
             2.3005E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -838.565224656514        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2063
 NPARAMETR:  4.6797E-01  1.0000E-02  2.9439E-02  3.2253E-01  1.1432E+01  1.4390E+00  1.0000E-02  1.0000E-02  7.6747E-01  1.0127E-01
             8.9023E+00
 PARAMETER: -6.5934E-01 -4.6244E+00 -3.4254E+00 -1.0315E+00  2.5364E+00  4.6393E-01 -1.0894E+01 -2.0234E+01 -1.6466E-01 -2.1900E+00
             2.2863E+00
 GRADIENT:   2.7173E-01  0.0000E+00  6.9464E-01 -2.0748E+00 -2.2068E-02  1.2972E-01  0.0000E+00  0.0000E+00  1.7797E-01  6.7095E-06
             7.2901E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -838.572930627126        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     2258
 NPARAMETR:  4.6773E-01  1.0000E-02  2.9369E-02  3.2219E-01  1.1509E+01  1.4387E+00  1.0000E-02  1.0000E-02  7.6716E-01  7.7208E-02
             8.9000E+00
 PARAMETER: -6.5986E-01 -4.6244E+00 -3.4278E+00 -1.0326E+00  2.5431E+00  4.6375E-01 -1.0894E+01 -2.0234E+01 -1.6506E-01 -2.4613E+00
             2.2860E+00
 GRADIENT:   6.9793E-01  0.0000E+00 -7.2865E-01 -4.4920E-01 -1.2538E-02  1.0399E-01  0.0000E+00  0.0000E+00  8.9365E-02  3.7226E-06
             2.4390E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -838.578117027264        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     2456
 NPARAMETR:  4.6726E-01  1.0000E-02  2.9316E-02  3.2172E-01  1.1739E+01  1.4383E+00  1.0000E-02  1.0000E-02  7.6661E-01  7.3212E-02
             8.8992E+00
 PARAMETER: -6.6088E-01 -4.6244E+00 -3.4296E+00 -1.0341E+00  2.5629E+00  4.6346E-01 -1.0894E+01 -2.0234E+01 -1.6577E-01 -2.5144E+00
             2.2860E+00
 GRADIENT:   4.6123E-01  0.0000E+00 -5.6855E-01 -5.7260E-01 -1.8097E-03  6.9237E-02  0.0000E+00  0.0000E+00  1.1538E-02  2.9173E-06
             1.7801E-01

0ITERATION NO.:   81    OBJECTIVE VALUE:  -838.578117027264        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2478
 NPARAMETR:  4.6726E-01  1.0000E-02  2.9316E-02  3.2172E-01  1.1739E+01  1.4383E+00  1.0000E-02  1.0000E-02  7.6661E-01  7.3212E-02
             8.8992E+00
 PARAMETER: -6.6088E-01 -4.6244E+00 -3.4296E+00 -1.0341E+00  2.5629E+00  4.6346E-01 -1.0894E+01 -2.0234E+01 -1.6577E-01 -2.5144E+00
             2.2860E+00
 GRADIENT:   4.6123E-01  0.0000E+00 -5.6855E-01 -5.7260E-01 -1.8097E-03  6.9237E-02  0.0000E+00  0.0000E+00  1.1538E-02  2.9173E-06
             1.7801E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2478
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4820E-03  1.0238E-06  9.9344E-05 -1.9455E-02 -1.4575E-06
 SE:             2.8936E-02  1.2369E-06  2.6304E-04  2.3454E-02  7.4372E-06
 N:                     100         100         100         100         100

 P VAL.:         9.3165E-01  4.0787E-01  7.0567E-01  4.0683E-01  8.4463E-01

 ETASHRINKSD(%)  3.0591E+00  9.9996E+01  9.9119E+01  2.1427E+01  9.9975E+01
 ETASHRINKVR(%)  6.0247E+00  1.0000E+02  9.9992E+01  3.8263E+01  1.0000E+02
 EBVSHRINKSD(%)  2.9231E+00  9.9995E+01  9.9197E+01  2.2631E+01  9.9973E+01
 EBVSHRINKVR(%)  5.7607E+00  1.0000E+02  9.9994E+01  4.0140E+01  1.0000E+02
 RELATIVEINF(%)  3.4564E+00  1.4823E-08  5.2182E-05  4.3542E-01  4.7544E-07
 EPSSHRINKSD(%)  1.1183E+01
 EPSSHRINKVR(%)  2.1116E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -838.57811702726372     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       80.360416177408979     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    49.64
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -838.578       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.67E-01  1.00E-02  2.93E-02  3.22E-01  1.17E+01  1.44E+00  1.00E-02  1.00E-02  7.67E-01  7.32E-02  8.90E+00
 


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
 #CPUT: Total CPU Time in Seconds,       49.669
Stop Time:
Fri Oct  1 15:30:36 CDT 2021