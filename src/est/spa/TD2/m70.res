Sat Sep 18 14:50:54 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat70.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1725.36234841904        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -2.5921E+01 -2.0882E+01 -9.7829E+00 -3.1516E+01 -2.2757E+01  5.5830E+00 -3.2215E+00  1.1012E+01  7.9892E-01  2.1885E+01
             4.5416E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1731.59651078796        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0313E+00  1.0184E+00  1.0540E+00  1.0041E+00  1.0474E+00  9.7840E-01  1.0359E+00  9.4348E-01  9.9630E-01  9.1662E-01
             8.8170E-01
 PARAMETER:  1.3079E-01  1.1827E-01  1.5263E-01  1.0414E-01  1.4629E-01  7.8165E-02  1.3529E-01  4.1821E-02  9.6288E-02  1.2936E-02
            -2.5907E-02
 GRADIENT:   7.4991E+01 -5.2176E+00  1.1652E+00 -6.4388E+00  9.1412E+00 -4.9157E-01 -4.6390E+00  2.7700E+00 -1.1646E-01 -9.0144E-01
            -6.9360E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1734.85111588886        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0243E+00  8.5383E-01  7.7479E-01  1.1003E+00  8.2110E-01  9.8697E-01  1.4180E+00  4.8323E-01  8.5935E-01  6.8183E-01
             8.8431E-01
 PARAMETER:  1.2399E-01 -5.8024E-02 -1.5516E-01  1.9557E-01 -9.7109E-02  8.6884E-02  4.4922E-01 -6.2726E-01 -5.1583E-02 -2.8297E-01
            -2.2950E-02
 GRADIENT:   4.8712E+01  7.6994E+00 -1.8985E+01  5.3979E+01  2.8758E+01  1.6966E+00  3.1632E+00  2.1794E+00  1.7698E+00 -2.0256E+00
            -5.0243E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1735.06476991092        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.0176E+00  8.7884E-01  7.5617E-01  1.0742E+00  8.2217E-01  9.8828E-01  1.3688E+00  3.9948E-01  8.6680E-01  7.1069E-01
             8.8807E-01
 PARAMETER:  1.1742E-01 -2.9151E-02 -1.7949E-01  1.7155E-01 -9.5811E-02  8.8210E-02  4.1396E-01 -8.1759E-01 -4.2947E-02 -2.4152E-01
            -1.8710E-02
 GRADIENT:   2.8968E+01  1.5210E+00 -1.5228E+01  3.1200E+01  2.0118E+01  1.8082E+00  1.9337E+00  1.6484E+00  1.3767E+00  1.8481E+00
            -2.2145E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1735.07064502925        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  1.0152E+00  8.9111E-01  7.3034E-01  1.0607E+00  8.0969E-01  9.8817E-01  1.3500E+00  3.5742E-01  8.6998E-01  6.9073E-01
             8.8977E-01
 PARAMETER:  1.1506E-01 -1.5283E-02 -2.1424E-01  1.5894E-01 -1.1110E-01  8.8095E-02  4.0008E-01 -9.2884E-01 -3.9290E-02 -2.7000E-01
            -1.6797E-02
 GRADIENT:   2.1200E+01  8.1971E-01 -1.1849E+01  2.2923E+01  1.5023E+01  1.4416E+00  1.4827E+00  1.3893E+00  1.0438E+00  1.7136E+00
            -1.4564E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1735.07133546220        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0147E+00  8.9379E-01  7.2392E-01  1.0577E+00  8.0647E-01  9.8811E-01  1.3460E+00  3.4483E-01  8.7068E-01  6.8553E-01
             8.9011E-01
 PARAMETER:  1.1457E-01 -1.2281E-02 -2.2307E-01  1.5606E-01 -1.1509E-01  8.8039E-02  3.9711E-01 -9.6471E-01 -3.8483E-02 -2.7757E-01
            -1.6408E-02
 GRADIENT:   1.9552E+01  7.1817E-01 -1.1014E+01  2.1151E+01  1.3901E+01  1.3418E+00  1.3741E+00  1.3018E+00  9.6681E-01  1.6180E+00
            -1.3257E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1735.07161453911        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  1.0144E+00  8.9547E-01  7.1981E-01  1.0557E+00  8.0438E-01  9.8807E-01  1.3435E+00  3.3622E-01  8.7112E-01  6.8217E-01
             8.9032E-01
 PARAMETER:  1.1427E-01 -1.0404E-02 -2.2877E-01  1.5424E-01 -1.1768E-01  8.7999E-02  3.9527E-01 -9.9000E-01 -3.7973E-02 -2.8248E-01
            -1.6170E-02
 GRADIENT:   1.8533E+01  6.6654E-01 -1.0470E+01  2.0050E+01  1.3191E+01  1.2764E+00  1.3049E+00  1.2415E+00  9.1796E-01  1.5476E+00
            -1.2500E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1735.07171046837        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.0142E+00  8.9639E-01  7.1753E-01  1.0547E+00  8.0323E-01  9.8805E-01  1.3422E+00  3.3127E-01  8.7136E-01  6.8031E-01
             8.9044E-01
 PARAMETER:  1.1410E-01 -9.3839E-03 -2.3194E-01  1.5324E-01 -1.1911E-01  8.7976E-02  3.9428E-01 -1.0048E+00 -3.7694E-02 -2.8521E-01
            -1.6042E-02
 GRADIENT:   1.7980E+01  6.4187E-01 -1.0168E+01  1.9452E+01  1.2803E+01  1.2403E+00  1.2668E+00  1.2069E+00  8.9108E-01  1.5059E+00
            -1.2106E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1735.73837075741        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      671
 NPARAMETR:  1.0398E+00  8.4095E-01  7.1365E-01  1.0775E+00  7.7379E-01  1.0015E+00  1.4202E+00  2.5315E-01  8.4590E-01  6.7347E-01
             9.0050E-01
 PARAMETER:  1.3901E-01 -7.3229E-02 -2.3737E-01  1.7462E-01 -1.5646E-01  1.0149E-01  4.5077E-01 -1.2738E+00 -6.7352E-02 -2.9532E-01
            -4.8106E-03
 GRADIENT:   1.1619E+01 -3.3529E+00  3.3213E+00 -1.7489E+01 -8.5669E+00  1.4306E+00 -4.9676E-01  5.2105E-01 -1.0209E+00  2.2759E+00
             2.6862E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1735.97981571743        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      846
 NPARAMETR:  1.0337E+00  7.8409E-01  7.0580E-01  1.1130E+00  7.4846E-01  9.9814E-01  1.5175E+00  1.4481E-01  8.2926E-01  6.5848E-01
             8.9754E-01
 PARAMETER:  1.3319E-01 -1.4324E-01 -2.4842E-01  2.0709E-01 -1.8974E-01  9.8138E-02  5.1709E-01 -1.8324E+00 -8.7219E-02 -3.1781E-01
            -8.0945E-03
 GRADIENT:  -6.1779E-01 -1.7965E+00 -1.0004E+00 -2.7194E+00  3.1453E-01  2.0434E-01  2.6583E-01  8.6289E-02  2.1196E-01  4.4633E-01
             4.3423E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1736.03042509771        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1021
 NPARAMETR:  1.0350E+00  8.2531E-01  6.9808E-01  1.0912E+00  7.6009E-01  9.9769E-01  1.4558E+00  4.2300E-02  8.4332E-01  6.6285E-01
             8.9588E-01
 PARAMETER:  1.3437E-01 -9.1990E-02 -2.5942E-01  1.8728E-01 -1.7432E-01  9.7692E-02  4.7553E-01 -3.0630E+00 -7.0403E-02 -3.1121E-01
            -9.9474E-03
 GRADIENT:   1.2155E+00 -1.6307E-01 -1.3675E+00  8.9311E-01  1.5187E+00 -1.2449E-01  1.7840E-01  7.5645E-03  1.3202E-01  1.5107E-01
            -1.5626E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1736.03488723817        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1196
 NPARAMETR:  1.0344E+00  8.2282E-01  6.9895E-01  1.0925E+00  7.5931E-01  9.9798E-01  1.4584E+00  1.0000E-02  8.4210E-01  6.6315E-01
             8.9643E-01
 PARAMETER:  1.3378E-01 -9.5023E-02 -2.5817E-01  1.8844E-01 -1.7534E-01  9.7974E-02  4.7737E-01 -4.6450E+00 -7.1859E-02 -3.1075E-01
            -9.3365E-03
 GRADIENT:  -3.8732E-02  4.0681E-02  4.2978E-03 -7.0219E-04 -4.5189E-02  2.2618E-03  2.0153E-02  0.0000E+00 -1.6656E-02  1.6788E-02
            -2.3475E-03

0ITERATION NO.:   57    OBJECTIVE VALUE:  -1736.03489166877        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1253
 NPARAMETR:  1.0344E+00  8.2270E-01  6.9900E-01  1.0925E+00  7.5931E-01  9.9797E-01  1.4584E+00  1.0000E-02  8.4215E-01  6.6310E-01
             8.9644E-01
 PARAMETER:  1.3379E-01 -9.5160E-02 -2.5811E-01  1.8849E-01 -1.7534E-01  9.7968E-02  4.7735E-01 -4.6439E+00 -7.1795E-02 -3.1083E-01
            -9.3185E-03
 GRADIENT:  -6.4309E-03  3.6924E-03  3.0904E-03  2.1390E-03 -7.1622E-03  2.5407E-04 -4.2977E-04  0.0000E+00 -9.5417E-04  1.4637E-03
             5.7620E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1253
 NO. OF SIG. DIGITS IN FINAL EST.:  4.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2107E-04  9.7503E-03 -5.7867E-04 -9.3444E-03 -1.7025E-03
 SE:             2.9877E-02  2.2529E-02  2.3776E-04  2.5307E-02  2.1291E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9677E-01  6.6517E-01  1.4941E-02  7.1195E-01  9.3627E-01

 ETASHRINKSD(%)  1.0000E-10  2.4524E+01  9.9203E+01  1.5219E+01  2.8674E+01
 ETASHRINKVR(%)  1.0000E-10  4.3033E+01  9.9994E+01  2.8122E+01  4.9126E+01
 EBVSHRINKSD(%)  3.4843E-01  2.3901E+01  9.9267E+01  1.5306E+01  2.8395E+01
 EBVSHRINKVR(%)  6.9565E-01  4.2089E+01  9.9995E+01  2.8269E+01  4.8728E+01
 RELATIVEINF(%)  9.9020E+01  6.0807E+00  5.6571E-04  9.7423E+00  3.6874E+00
 EPSSHRINKSD(%)  4.4309E+01
 EPSSHRINKVR(%)  6.8985E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1736.0348916687653     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1000.8840651050272     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.82
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.81
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1736.035       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  8.23E-01  6.99E-01  1.09E+00  7.59E-01  9.98E-01  1.46E+00  1.00E-02  8.42E-01  6.63E-01  8.96E-01
 


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
+        1.06E+03
 
 TH 2
+       -6.56E+01  4.43E+02
 
 TH 3
+       -1.01E+02  3.95E+02  1.41E+03
 
 TH 4
+       -3.86E+01  3.24E+02 -4.81E+02  9.30E+02
 
 TH 5
+        8.79E+01 -6.36E+02 -1.60E+03  4.89E+02  2.23E+03
 
 TH 6
+        1.27E+01 -1.22E+01  1.79E+01 -1.87E+00  2.75E+01  2.57E+01
 
 TH 7
+        5.94E+00  6.35E+00 -2.79E+01  1.10E+01 -4.19E+00 -6.21E+00  3.71E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.37E+00  2.10E+00 -7.09E+01  1.79E+01  1.07E+01 -8.41E+00  7.16E+00  0.00E+00  1.50E+01
 
 TH10
+        4.45E+01 -1.57E+01 -1.71E+02 -1.51E+01 -8.80E+00 -2.38E+01  2.03E+01  0.00E+00  4.29E+01  1.28E+02
 
 TH11
+        8.08E+01 -4.85E+01 -1.57E+02  1.93E+00  8.90E+01  6.18E+01  3.68E+00  0.00E+00  2.46E+01  7.55E+01  3.17E+02
 
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
+        1.03E+03
 
 TH 2
+       -7.79E+00  4.63E+02
 
 TH 3
+        2.04E+01  3.67E+02  1.34E+03
 
 TH 4
+       -8.54E+00  2.80E+02 -4.80E+02  9.55E+02
 
 TH 5
+       -6.11E+00 -5.85E+02 -1.55E+03  5.33E+02  2.24E+03
 
 TH 6
+        1.88E-01 -8.69E-01  4.57E+00 -2.58E+00 -5.47E-01  1.96E+02
 
 TH 7
+        1.29E+00  3.74E+01 -2.13E+01 -1.22E+01  6.90E+00 -1.53E-01  3.68E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -3.23E-02 -2.60E+01 -3.84E+01  3.08E+01  2.84E+00 -1.64E+00  1.24E+01  0.00E+00  1.46E+02
 
 TH10
+       -1.61E+00 -1.52E+01 -1.23E+02 -3.71E+01 -4.45E+01 -2.01E-01  1.34E+01  0.00E+00  2.00E+01  1.32E+02
 
 TH11
+       -6.17E+00 -1.14E+01 -4.95E+01 -8.09E+00  2.00E+01  4.87E-01  4.65E+00  0.00E+00  1.34E+01  3.15E+01  2.57E+02
 
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
+        1.04E+03
 
 TH 2
+        5.74E+01  4.48E+02
 
 TH 3
+        9.70E+01  3.64E+02  1.28E+03
 
 TH 4
+        1.12E+01  2.87E+02 -4.85E+02  9.43E+02
 
 TH 5
+       -7.90E+01 -5.58E+02 -1.55E+03  5.98E+02  2.25E+03
 
 TH 6
+        9.37E+00 -1.01E+01  5.16E+00  3.04E+01  1.77E+01  1.37E+02
 
 TH 7
+       -9.35E-02  2.41E+01 -2.30E+01 -4.12E+00  1.56E+01 -1.06E+01  2.68E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -5.31E+01 -1.49E+01 -5.16E+00 -2.37E+01 -5.00E+01  2.42E+00  2.24E+01  0.00E+00  1.34E+02
 
 TH10
+       -3.20E+01 -1.48E+00 -1.03E+02 -4.17E+01 -4.52E+01 -2.16E+01  1.31E+01  0.00E+00  1.24E+01  1.38E+02
 
 TH11
+       -7.20E+01  2.59E+00  1.51E+01 -1.48E+01 -4.88E+01  1.27E+01 -7.67E+00  0.00E+00  3.68E+00  1.52E+01  1.96E+02
 
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
 #CPUT: Total CPU Time in Seconds,       18.700
Stop Time:
Sat Sep 18 14:51:14 CDT 2021