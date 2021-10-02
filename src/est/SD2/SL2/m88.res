Fri Oct  1 12:35:50 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat88.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2106.34002154578        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1296E+02 -4.2439E+01 -5.1659E+01  2.5117E+01  1.0411E+02  4.8943E+01 -1.5957E+00 -1.5552E+00  9.3634E+00  9.6589E+00
            -3.1425E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2113.56134352668        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0107E+00  1.0444E+00  1.0510E+00  1.0287E+00  9.6370E-01  9.8365E-01  1.0062E+00  1.0158E+00  9.8587E-01  9.3379E-01
             1.0608E+00
 PARAMETER:  1.1067E-01  1.4342E-01  1.4976E-01  1.2828E-01  6.3025E-02  8.3510E-02  1.0616E-01  1.1565E-01  8.5769E-02  3.1492E-02
             1.5905E-01
 GRADIENT:   8.6070E+00  3.1892E+00 -6.8899E+00  1.0764E+01  9.0252E+00 -6.8197E-01 -2.5028E+00 -5.3198E+00  1.6439E+00  9.3618E+00
             1.2498E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2115.10750669079        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0056E+00  9.6572E-01  1.1463E+00  1.0820E+00  9.5165E-01  9.9070E-01  1.2138E+00  1.2456E+00  8.8410E-01  8.0567E-01
             1.0341E+00
 PARAMETER:  1.0563E-01  6.5123E-02  2.3653E-01  1.7877E-01  5.0442E-02  9.0658E-02  2.9373E-01  3.1962E-01 -2.3189E-02 -1.1608E-01
             1.3357E-01
 GRADIENT:  -8.4511E-01  1.0802E+01 -5.7977E-01  6.4235E+00 -8.0372E-01  2.3176E+00  7.3244E-01  1.1297E+00 -5.1362E+00 -7.7863E-01
            -1.2421E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2116.00928548084        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.0041E+00  7.2937E-01  1.3428E+00  1.2426E+00  9.2864E-01  9.7906E-01  1.3348E+00  1.2868E+00  8.5136E-01  8.2677E-01
             1.0531E+00
 PARAMETER:  1.0406E-01 -2.1557E-01  3.9478E-01  3.1723E-01  2.5961E-02  7.8837E-02  3.8879E-01  3.5218E-01 -6.0919E-02 -9.0223E-02
             1.5170E-01
 GRADIENT:   1.1306E+00  1.2170E+01  5.5737E+00  1.8135E+01 -1.2358E+01 -1.1802E+00 -5.6883E-01 -1.6758E+00 -9.6319E-01 -1.3346E-01
             4.7819E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2116.57389069801        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  1.0000E+00  4.7644E-01  1.6386E+00  1.4086E+00  9.4347E-01  9.7919E-01  1.4893E+00  1.4871E+00  8.1141E-01  8.7324E-01
             1.0445E+00
 PARAMETER:  1.0002E-01 -6.4141E-01  5.9382E-01  4.4261E-01  4.1806E-02  7.8969E-02  4.9832E-01  4.9680E-01 -1.0899E-01 -3.5545E-02
             1.4354E-01
 GRADIENT:  -7.1192E-01  5.8521E+00  2.7717E+00  1.4342E+01 -5.7626E+00  1.0890E-01  4.5418E-01 -5.8602E-01  5.0678E-01  6.5099E-01
            -5.6165E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2116.72761594007        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      891
 NPARAMETR:  9.9943E-01  3.6659E-01  1.7387E+00  1.4659E+00  9.4639E-01  9.7798E-01  1.4109E+00  1.5678E+00  7.9228E-01  8.7481E-01
             1.0454E+00
 PARAMETER:  9.9430E-02 -9.0352E-01  6.5311E-01  4.8245E-01  4.4905E-02  7.7729E-02  4.4422E-01  5.4965E-01 -1.3284E-01 -3.3748E-02
             1.4440E-01
 GRADIENT:   1.2550E+00 -1.3151E+00 -1.4231E+00 -1.5735E+01  6.0912E+00  1.3975E-01  1.2132E-01 -3.6886E-02 -1.7016E+00 -8.9276E-01
             2.7525E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2116.76785378170        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1066
 NPARAMETR:  9.9857E-01  3.5215E-01  1.7461E+00  1.4815E+00  9.4106E-01  9.7752E-01  1.1646E+00  1.5682E+00  8.0262E-01  8.8570E-01
             1.0445E+00
 PARAMETER:  9.8567E-02 -9.4369E-01  6.5741E-01  4.9303E-01  3.9255E-02  7.7265E-02  2.5234E-01  5.4994E-01 -1.1988E-01 -2.1372E-02
             1.4357E-01
 GRADIENT:  -3.5685E-01  1.3972E+00  2.6305E-01  3.3012E-01 -1.5329E+00 -1.8065E-02  9.9408E-02 -1.4778E-01  5.2520E-01  1.9130E-01
             1.0752E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2116.78444951212        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1250
 NPARAMETR:  9.9885E-01  3.4496E-01  1.7485E+00  1.4834E+00  9.4100E-01  9.7759E-01  1.0233E+00  1.5710E+00  8.0247E-01  8.8635E-01
             1.0445E+00
 PARAMETER:  9.8849E-02 -9.6432E-01  6.5875E-01  4.9434E-01  3.9187E-02  7.7331E-02  1.2300E-01  5.5170E-01 -1.2006E-01 -2.0647E-02
             1.4353E-01
 GRADIENT:   5.1874E-01  6.0845E-01 -4.7560E-01 -4.2904E+00  7.6926E-02  3.8013E-02  2.7694E-02 -1.1914E-01 -5.3734E-01 -1.4336E-01
            -2.1740E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2116.79204403205        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.9893E-01  3.4230E-01  1.7517E+00  1.4839E+00  9.4112E-01  9.7759E-01  8.9223E-01  1.5733E+00  8.0556E-01  8.8918E-01
             1.0445E+00
 PARAMETER:  9.8931E-02 -9.7206E-01  6.6058E-01  4.9467E-01  3.9316E-02  7.7338E-02 -1.4026E-02  5.5318E-01 -1.1622E-01 -1.7454E-02
             1.4351E-01
 GRADIENT:   7.7816E-01  3.2676E-01 -4.1262E-01 -6.0506E+00 -3.6208E-01  4.7389E-02  2.2529E-02 -8.6405E-02 -3.1687E-01 -7.9682E-02
             3.0102E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2116.79990277538        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1620             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9929E-01  3.4166E-01  1.7576E+00  1.4828E+00  9.4249E-01  9.7772E-01  6.5821E-01  1.5781E+00  8.0851E-01  8.9206E-01
             1.0444E+00
 PARAMETER:  9.9291E-02 -9.7395E-01  6.6394E-01  4.9392E-01  4.0773E-02  7.7470E-02 -3.1824E-01  5.5622E-01 -1.1257E-01 -1.4216E-02
             1.4346E-01
 GRADIENT:   3.9189E+02  4.3481E+01  9.6548E+00  7.1938E+02  5.5069E+00  3.8264E+01  5.0279E-01  3.1442E+00  8.9756E+00  2.4752E-01
             1.3614E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2116.80356664509        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1804
 NPARAMETR:  9.9911E-01  3.4107E-01  1.7605E+00  1.4838E+00  9.4332E-01  9.7767E-01  6.1049E-01  1.5795E+00  8.1155E-01  8.9442E-01
             1.0444E+00
 PARAMETER:  9.9106E-02 -9.7567E-01  6.6557E-01  4.9460E-01  4.1652E-02  7.7415E-02 -3.9350E-01  5.5710E-01 -1.0882E-01 -1.1577E-02
             1.4349E-01
 GRADIENT:   1.1607E+00  1.6277E-01 -4.7303E-01 -6.8322E+00 -5.8369E-01  6.6944E-02  1.0611E-02 -1.0118E-01 -6.9037E-02 -9.2600E-02
             3.1622E-04

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2116.80805259737        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1970
 NPARAMETR:  9.9899E-01  3.4036E-01  1.7661E+00  1.4832E+00  9.4490E-01  9.7760E-01  4.6852E-01  1.5836E+00  8.1393E-01  8.9727E-01
             1.0445E+00
 PARAMETER:  9.8986E-02 -9.7775E-01  6.6875E-01  4.9420E-01  4.3323E-02  7.7349E-02 -6.5818E-01  5.5968E-01 -1.0588E-01 -8.3989E-03
             1.4351E-01
 GRADIENT:   3.9130E+02  4.3044E+01  9.4525E+00  7.1832E+02  5.8737E+00  3.8263E+01  5.6071E-01  3.1568E+00  9.7033E+00  4.3908E-01
             1.4738E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2116.81054519330        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     2141
 NPARAMETR:  9.9932E-01  3.4135E-01  1.7714E+00  1.4828E+00  9.4551E-01  9.7775E-01  3.2008E-01  1.5867E+00  8.1392E-01  8.9846E-01
             1.0444E+00
 PARAMETER:  9.9323E-02 -9.7483E-01  6.7176E-01  4.9393E-01  4.3969E-02  7.7499E-02 -1.0392E+00  5.6168E-01 -1.0589E-01 -7.0723E-03
             1.4347E-01
 GRADIENT:   1.5836E+00  2.0444E-01  2.9950E-02 -8.0106E+00 -1.7364E+00  8.8730E-02  2.3084E-03 -1.3571E-01 -8.3043E-01 -5.7159E-02
            -8.9865E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2116.81228597242        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     2304
 NPARAMETR:  9.9914E-01  3.4009E-01  1.7726E+00  1.4836E+00  9.4654E-01  9.7769E-01  3.2214E-01  1.5884E+00  8.1546E-01  8.9917E-01
             1.0445E+00
 PARAMETER:  9.9138E-02 -9.7853E-01  6.7246E-01  4.9449E-01  4.5060E-02  7.7442E-02 -1.0328E+00  5.6273E-01 -1.0401E-01 -6.2798E-03
             1.4355E-01
 GRADIENT:   1.2048E+00 -9.7305E-02 -5.7291E-01 -8.2352E+00 -2.6570E-01  7.0292E-02  6.7899E-03 -9.3812E-02  8.6636E-02 -6.6832E-02
             1.4549E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2116.81448720800        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     2471
 NPARAMETR:  9.9917E-01  3.4089E-01  1.7756E+00  1.4832E+00  9.4740E-01  9.7769E-01  2.6981E-01  1.5908E+00  8.1619E-01  9.0002E-01
             1.0445E+00
 PARAMETER:  9.9168E-02 -9.7621E-01  6.7414E-01  4.9420E-01  4.5968E-02  7.7442E-02 -1.2101E+00  5.6427E-01 -1.0311E-01 -5.3432E-03
             1.4356E-01
 GRADIENT:   1.2349E+00 -7.4033E-02 -5.1084E-01 -8.1715E+00 -3.9044E-01  6.4388E-02  5.9041E-03 -7.5045E-02  9.4968E-02 -5.2475E-02
            -5.3479E-03

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2116.81611170482        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2653
 NPARAMETR:  9.9921E-01  3.4069E-01  1.7790E+00  1.4836E+00  9.4792E-01  9.7774E-01  6.2220E-02  1.5929E+00  8.1681E-01  9.0149E-01
             1.0446E+00
 PARAMETER:  9.9205E-02 -9.7679E-01  6.7605E-01  4.9448E-01  4.6510E-02  7.7484E-02 -2.6771E+00  5.6555E-01 -1.0235E-01 -3.7104E-03
             1.4361E-01
 GRADIENT:   1.3008E+00  1.0895E-01 -3.2602E-01 -7.4182E+00 -9.5517E-01  7.8658E-02  1.1421E-03 -8.9794E-02 -7.6511E-02  2.1920E-02
             1.4922E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2116.81866167519        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2836
 NPARAMETR:  9.9899E-01  3.4193E-01  1.7854E+00  1.4836E+00  9.4953E-01  9.7764E-01  1.0000E-02  1.5975E+00  8.1723E-01  9.0277E-01
             1.0446E+00
 PARAMETER:  9.8988E-02 -9.7316E-01  6.7962E-01  4.9449E-01  4.8211E-02  7.7381E-02 -7.4999E+00  5.6841E-01 -1.0183E-01 -2.2827E-03
             1.4365E-01
 GRADIENT:   7.2451E-01  3.2042E-01 -1.4172E-01 -6.2337E+00 -1.2751E+00  2.6140E-02  0.0000E+00 -9.7804E-02 -6.2184E-02  7.6371E-02
            -6.8958E-03

0ITERATION NO.:   84    OBJECTIVE VALUE:  -2116.81933509398        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     2969
 NPARAMETR:  9.9910E-01  3.4170E-01  1.7873E+00  1.4841E+00  9.5040E-01  9.7771E-01  1.0000E-02  1.5993E+00  8.1732E-01  9.0286E-01
             1.0446E+00
 PARAMETER:  9.9096E-02 -9.7381E-01  6.8068E-01  4.9484E-01  4.9133E-02  7.7460E-02 -7.4999E+00  5.6957E-01 -1.0172E-01 -2.1897E-03
             1.4367E-01
 GRADIENT:   9.7257E-01  3.1781E-01 -4.3001E-01 -5.7234E+00 -5.5840E-01  5.5968E-02  0.0000E+00 -9.2008E-02  2.9912E-02  1.1500E-02
            -2.6910E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2969
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.8176E-04 -1.4149E-04 -3.6902E-02 -6.0989E-03 -3.9397E-02
 SE:             2.9875E-02  6.5306E-05  1.9089E-02  2.9489E-02  2.0246E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8713E-01  3.0269E-02  5.3215E-02  8.3615E-01  5.1668E-02

 ETASHRINKSD(%)  1.0000E-10  9.9781E+01  3.6050E+01  1.2070E+00  3.2173E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  5.9104E+01  2.3995E+00  5.3995E+01
 EBVSHRINKSD(%)  3.6463E-01  9.9803E+01  3.9096E+01  1.8023E+00  2.9750E+01
 EBVSHRINKVR(%)  7.2794E-01  1.0000E+02  6.2907E+01  3.5722E+00  5.0649E+01
 RELATIVEINF(%)  9.8028E+01  2.6097E-05  1.0523E+01  7.5560E+00  1.0968E+01
 EPSSHRINKSD(%)  3.4154E+01
 EPSSHRINKVR(%)  5.6643E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2116.8193350939823     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1197.8808018893096     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    45.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2116.819       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  3.42E-01  1.79E+00  1.48E+00  9.50E-01  9.78E-01  1.00E-02  1.60E+00  8.17E-01  9.03E-01  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       45.695
Stop Time:
Fri Oct  1 12:36:37 CDT 2021
