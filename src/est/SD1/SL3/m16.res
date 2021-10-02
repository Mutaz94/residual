Fri Oct  1 03:37:03 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat16.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      989
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

 TOT. NO. OF OBS RECS:      889
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   543.507561059846        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7461E+02 -5.4474E+01  4.3761E+01  2.5469E+02  2.3456E+02  8.0669E+01 -1.5481E+02 -1.6357E+02 -1.4007E+02 -4.4189E+01
            -8.3725E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2383.68626932711        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0727E+00  1.4087E+00  9.7351E-01  9.2216E-01  1.0068E+00  7.0542E-01  1.2633E+00  9.9595E-01  8.5286E-01  1.1495E+00
             5.1923E+00
 PARAMETER:  1.7013E-01  4.4267E-01  7.3155E-02  1.8963E-02  1.0682E-01 -2.4897E-01  3.3376E-01  9.5941E-02 -5.9161E-02  2.3934E-01
             1.7472E+00
 GRADIENT:  -8.1827E+01  7.8278E+01 -2.0790E+00  3.2423E+01 -3.4323E+01 -5.9129E+01  3.1587E+01  4.4720E+00  1.6815E+01  6.5011E+00
             7.9244E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2450.77947189779        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0692E+00  1.1380E+00  2.3141E+00  1.0615E+00  1.1339E+00  8.9947E-01  1.2443E+00  7.9571E-01  1.5101E-01  1.5593E+00
             4.7630E+00
 PARAMETER:  1.6687E-01  2.2927E-01  9.3901E-01  1.5965E-01  2.2565E-01 -5.9483E-03  3.1861E-01 -1.2853E-01 -1.7904E+00  5.4421E-01
             1.6609E+00
 GRADIENT:  -1.5939E+01  3.3124E+01  7.7450E+00  8.4252E+01 -5.7895E+01  2.1024E+01 -1.3270E+01 -1.6453E-01 -3.2926E+00  2.0995E+01
             6.8853E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2665.66662207742        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0338E+00  1.1813E+00  6.8580E+00  9.6578E-01  1.6023E+00  8.4955E-01  1.1372E+00  2.2825E+00  5.6247E-01  1.8141E+00
             2.8916E+00
 PARAMETER:  1.3328E-01  2.6659E-01  2.0254E+00  6.5183E-02  5.7146E-01 -6.3043E-02  2.2858E-01  9.2529E-01 -4.7542E-01  6.9558E-01
             1.1618E+00
 GRADIENT:   1.8022E+01 -2.9836E+01  8.7564E-01 -3.6542E+01  6.9234E+00 -2.5613E+00 -6.4182E+00 -5.7528E+00 -2.6416E+00 -5.7838E-02
            -1.2154E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2668.33666721498        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  1.0332E+00  1.2210E+00  4.5435E+00  9.4851E-01  1.4531E+00  8.6085E-01  1.1086E+00  3.6716E+00  5.9601E-01  1.5917E+00
             2.9039E+00
 PARAMETER:  1.3269E-01  2.9967E-01  1.6137E+00  4.7139E-02  4.7373E-01 -4.9831E-02  2.0311E-01  1.4006E+00 -4.1750E-01  5.6483E-01
             1.1661E+00
 GRADIENT:   1.3533E+01 -7.9743E+00 -1.2374E+00 -1.0637E+01  8.0054E+00  2.0646E+00 -5.0110E+00  4.2829E+00 -6.1179E-01  1.5090E+01
             1.1634E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2671.78939750138        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      476
 NPARAMETR:  1.0632E+00  1.5157E+00  5.2299E+00  8.0033E-01  1.6224E+00  8.7547E-01  9.6081E-01  4.2168E+00  6.9426E-01  1.6831E+00
             2.9174E+00
 PARAMETER:  1.6125E-01  5.1589E-01  1.7544E+00 -1.2273E-01  5.8388E-01 -3.2998E-02  6.0019E-02  1.5391E+00 -2.6490E-01  6.2065E-01
             1.1707E+00
 GRADIENT:   1.6029E+01  2.3041E+01  5.6086E-01  2.6706E+01  1.7444E+00  4.2085E+00 -2.8919E+00  1.9569E+00 -3.9931E-01 -1.6469E+00
            -2.7736E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2674.59428331177        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      651
 NPARAMETR:  1.0547E+00  1.9462E+00  4.1002E+00  4.9804E-01  1.7884E+00  8.6161E-01  8.2105E-01  4.2483E+00  6.8354E-01  1.9540E+00
             2.9149E+00
 PARAMETER:  1.5328E-01  7.6590E-01  1.5110E+00 -5.9707E-01  6.8131E-01 -4.8958E-02 -9.7171E-02  1.5465E+00 -2.8048E-01  7.6988E-01
             1.1698E+00
 GRADIENT:  -6.4250E+00  1.7090E+01  3.9419E-02  1.0714E+01  2.2711E+00 -1.8926E+00 -1.8580E-01 -8.7257E-01 -8.0013E-01  1.0672E+00
            -2.4408E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2676.13578650744        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      828
 NPARAMETR:  1.0586E+00  2.2947E+00  1.8998E+00  2.6713E-01  1.8240E+00  8.6908E-01  7.0889E-01  5.1090E+00  8.4246E-01  1.9947E+00
             2.9101E+00
 PARAMETER:  1.5691E-01  9.3062E-01  7.4177E-01 -1.2200E+00  7.0101E-01 -4.0320E-02 -2.4406E-01  1.7310E+00 -7.1432E-02  7.9052E-01
             1.1682E+00
 GRADIENT:   3.0971E+00  3.9097E+01  3.3735E-01  7.9534E+00 -1.8985E+00  1.0679E+00 -4.8529E+00 -2.4373E+00 -5.9928E-01 -1.6799E+00
            -5.3441E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2677.04467605955        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1004
 NPARAMETR:  1.0597E+00  2.3904E+00  1.3431E+00  1.9176E-01  1.8711E+00  8.6723E-01  6.8575E-01  6.9568E+00  1.0043E+00  2.0258E+00
             2.9087E+00
 PARAMETER:  1.5798E-01  9.7147E-01  3.9500E-01 -1.5515E+00  7.2652E-01 -4.2446E-02 -2.7724E-01  2.0397E+00  1.0426E-01  8.0596E-01
             1.1677E+00
 GRADIENT:   6.7049E+00  1.2575E+01 -7.5225E-01  4.5566E+00  4.7360E+00  4.6030E-01 -2.1450E+00  1.1179E+00  4.6365E-03 -1.6517E+00
            -3.0221E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2677.60417236976        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1183
 NPARAMETR:  1.0561E+00  2.5629E+00  4.5967E-01  7.2396E-02  1.8895E+00  8.6512E-01  6.5094E-01  1.0069E+01  1.2804E+00  2.0872E+00
             2.9111E+00
 PARAMETER:  1.5459E-01  1.0411E+00 -6.7724E-01 -2.5256E+00  7.3633E-01 -4.4887E-02 -3.2933E-01  2.4095E+00  3.4714E-01  8.3583E-01
             1.1685E+00
 GRADIENT:  -2.8954E+00  1.1298E+01 -2.2059E-01  1.0179E+00 -4.2316E-01 -5.7631E-01 -5.6295E-02 -4.7511E-01 -4.9030E-02  7.2319E-01
             1.7040E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2677.79768945419        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1361
 NPARAMETR:  1.0572E+00  2.6363E+00  1.4467E-01  2.2778E-02  1.9129E+00  8.6652E-01  6.3331E-01  1.8584E+01  1.7792E+00  2.1064E+00
             2.9106E+00
 PARAMETER:  1.5558E-01  1.0694E+00 -1.8333E+00 -3.6820E+00  7.4864E-01 -4.3274E-02 -3.5680E-01  3.0223E+00  6.7615E-01  8.4500E-01
             1.1683E+00
 GRADIENT:  -7.2747E-02  1.2050E+01 -1.4809E-01  5.5146E-01  5.3933E-01 -4.4739E-02 -7.2778E-01  1.0833E-01  2.2524E-03  1.7984E-01
            -6.9997E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2677.88023512198        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1542             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0572E+00  2.6449E+00  8.6448E-02  1.0000E-02  1.9133E+00  8.6650E-01  6.3043E-01  2.7534E+01  1.6608E+00  2.1115E+00
             2.9106E+00
 PARAMETER:  1.5565E-01  1.0726E+00 -2.3482E+00 -4.5314E+00  7.4880E-01 -4.3299E-02 -3.6135E-01  3.4154E+00  6.0729E-01  8.4738E-01
             1.1684E+00
 GRADIENT:   8.7197E+01  4.3263E+02  5.3302E-02  7.3821E-03  2.5728E+01  4.3066E+00  5.7150E+00 -5.5283E-02  2.8959E-04  1.0735E+01
             2.1009E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2677.88811157740        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1703
 NPARAMETR:  1.0569E+00  2.6448E+00  7.4934E-02  1.0000E-02  1.9132E+00  8.6641E-01  6.3036E-01  2.8901E+01  2.4602E+00  2.1106E+00
             2.9103E+00
 PARAMETER:  1.5534E-01  1.0726E+00 -2.4911E+00 -4.5471E+00  7.4880E-01 -4.3395E-02 -3.6147E-01  3.4639E+00  1.0002E+00  8.4695E-01
             1.1683E+00
 GRADIENT:   8.6186E+01  4.3269E+02  1.0715E-02  4.6509E-03  2.5843E+01  4.2751E+00  5.7213E+00  7.9212E-02  1.0673E-02  1.0656E+01
             2.0810E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2677.88846609038        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1891             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0572E+00  2.6448E+00  7.5294E-02  1.0000E-02  1.9131E+00  8.6643E-01  6.3038E-01  2.8893E+01  2.1944E+00  2.1115E+00
             2.9102E+00
 PARAMETER:  1.5559E-01  1.0726E+00 -2.4864E+00 -4.5702E+00  7.4874E-01 -4.3374E-02 -3.6143E-01  3.4636E+00  8.8592E-01  8.4738E-01
             1.1682E+00
 GRADIENT:   8.7048E+01  4.3268E+02  1.4307E-02  0.0000E+00  2.5797E+01  4.2827E+00  5.7182E+00  5.9241E-02  5.7368E-03  1.0783E+01
             2.0737E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2677.88850247852        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2080             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0572E+00  2.6448E+00  7.5388E-02  1.0000E-02  1.9131E+00  8.6642E-01  6.3039E-01  2.8941E+01  2.1141E+00  2.1115E+00
             2.9102E+00
 PARAMETER:  1.5559E-01  1.0726E+00 -2.4851E+00 -4.5702E+00  7.4873E-01 -4.3385E-02 -3.6142E-01  3.4653E+00  8.4862E-01  8.4738E-01
             1.1682E+00
 GRADIENT:   8.7030E+01  4.3268E+02  1.4073E-02  0.0000E+00  2.5793E+01  4.2786E+00  5.7158E+00  5.9356E-02  4.7623E-03  1.0781E+01
             2.0719E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2677.88850447794        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2269
 NPARAMETR:  1.0572E+00  2.6448E+00  7.5521E-02  1.0000E-02  1.9131E+00  8.6642E-01  6.3039E-01  2.8935E+01  2.0579E+00  2.1115E+00
             2.9102E+00
 PARAMETER:  1.5559E-01  1.0726E+00 -2.4833E+00 -4.5702E+00  7.4873E-01 -4.3387E-02 -3.6142E-01  3.4651E+00  8.2167E-01  8.4738E-01
             1.1682E+00
 GRADIENT:   5.0905E-01 -6.5471E+00 -2.5771E-04  0.0000E+00 -2.2801E-01  9.7467E-03  2.8096E-02 -8.1227E-03 -3.5935E-05  1.3433E-01
            -5.4145E-02

0ITERATION NO.:   78    OBJECTIVE VALUE:  -2677.88852063656        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:     2374
 NPARAMETR:  1.0572E+00  2.6448E+00  7.5666E-02  1.0000E-02  1.9131E+00  8.6642E-01  6.3039E-01  2.8973E+01  2.0776E+00  2.1115E+00
             2.9102E+00
 PARAMETER:  1.5559E-01  1.0726E+00 -2.4820E+00 -4.5702E+00  7.4873E-01 -4.3388E-02 -3.6141E-01  3.4667E+00  8.3959E-01  8.4738E-01
             1.1682E+00
 GRADIENT:  -6.1958E-04 -5.3823E-03 -9.9026E-04  0.0000E+00 -1.3935E-03 -2.4761E-04  3.9286E-03  3.1974E-03  2.4528E-04 -7.2518E-04
            -2.8959E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2374
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.3587E-04 -1.0130E-02 -4.0839E-03 -7.2606E-05 -1.4010E-02
 SE:             2.9148E-02  2.7808E-02  1.8625E-03  6.8383E-04  2.7262E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8533E-01  7.1564E-01  2.8329E-02  9.1544E-01  6.0733E-01

 ETASHRINKSD(%)  2.3501E+00  6.8405E+00  9.3760E+01  9.7709E+01  8.6686E+00
 ETASHRINKVR(%)  4.6449E+00  1.3213E+01  9.9611E+01  9.9948E+01  1.6586E+01
 EBVSHRINKSD(%)  2.3068E+00  7.0021E+00  9.5390E+01  9.8110E+01  6.5483E+00
 EBVSHRINKVR(%)  4.5605E+00  1.3514E+01  9.9787E+01  9.9964E+01  1.2668E+01
 RELATIVEINF(%)  9.5291E+01  4.3218E+00  5.1558E-02  1.5408E-03  6.5356E+01
 EPSSHRINKSD(%)  1.5373E+01
 EPSSHRINKVR(%)  2.8383E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          889
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1633.8727120379081     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2677.8885206365612     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1044.0158085986532     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    61.19
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2677.889       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  2.64E+00  7.56E-02  1.00E-02  1.91E+00  8.66E-01  6.30E-01  2.90E+01  2.10E+00  2.11E+00  2.91E+00
 


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
 #CPUT: Total CPU Time in Seconds,       61.239
Stop Time:
Fri Oct  1 03:38:06 CDT 2021
