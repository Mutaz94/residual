Fri Oct  1 14:27:31 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat83.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m83.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2133.14752442359        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3187E+02  2.9084E+01  2.8839E+00  3.9782E+01 -3.8313E+01  2.7323E+01  1.3200E+01  9.8806E+00  1.6041E+01  2.7034E+01
            -7.8882E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2136.81857674705        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      196
 NPARAMETR:  1.0079E+00  9.9699E-01  1.1175E+00  1.0236E+00  1.0854E+00  1.0736E+00  9.2456E-01  9.3233E-01  9.4966E-01  8.3575E-01
             1.0237E+00
 PARAMETER:  1.0791E-01  9.6981E-02  2.1107E-01  1.2336E-01  1.8195E-01  1.7101E-01  2.1563E-02  2.9928E-02  4.8352E-02 -7.9426E-02
             1.2344E-01
 GRADIENT:   5.5157E+00 -4.2305E+00  6.7656E+00 -1.5352E+01  2.4571E+01  1.1758E+01  4.0979E-02 -5.0074E+00 -7.4655E+00 -1.1407E+01
            -5.0081E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2137.43065516503        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  9.9480E-01  8.4942E-01  1.1399E+00  1.1314E+00  1.0074E+00  1.0629E+00  8.0060E-01  8.9232E-01  9.3162E-01  8.0770E-01
             1.0332E+00
 PARAMETER:  9.4786E-02 -6.3207E-02  2.3093E-01  2.2345E-01  1.0742E-01  1.6100E-01 -1.2239E-01 -1.3932E-02  2.9171E-02 -1.1357E-01
             1.3266E-01
 GRADIENT:  -1.8176E+01  1.8870E+01  1.5248E+01  1.7361E+01 -6.0418E+00  8.2329E+00 -3.2368E+00 -6.3305E+00 -6.5794E+00 -1.1706E+01
             7.6340E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2138.84523557134        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      548
 NPARAMETR:  1.0032E+00  7.2486E-01  1.1657E+00  1.2034E+00  9.7286E-01  1.0388E+00  9.4486E-01  9.1689E-01  8.9184E-01  8.7669E-01
             1.0163E+00
 PARAMETER:  1.0321E-01 -2.2178E-01  2.5333E-01  2.8516E-01  7.2486E-02  1.3804E-01  4.3285E-02  1.3235E-02 -1.4470E-02 -3.1603E-02
             1.1620E-01
 GRADIENT:   1.9852E+00  7.9155E+00  5.3569E+00  7.5597E+00 -1.1658E+01 -1.0131E-01  2.2656E-01 -7.2845E-01 -3.7169E-01  2.5497E+00
            -4.1083E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2139.12246185333        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      723
 NPARAMETR:  9.9877E-01  5.4626E-01  1.2855E+00  1.3166E+00  9.6502E-01  1.0394E+00  9.6827E-01  1.0113E+00  8.4081E-01  8.7706E-01
             1.0185E+00
 PARAMETER:  9.8770E-02 -5.0466E-01  3.5117E-01  3.7503E-01  6.4389E-02  1.3867E-01  6.7755E-02  1.1121E-01 -7.3385E-02 -3.1186E-02
             1.1832E-01
 GRADIENT:  -1.4844E+00  3.6624E+00  2.2760E+00  6.2684E+00 -4.0397E+00  9.7237E-01  1.7410E-01 -1.0003E-01  1.6550E-01  6.5654E-01
             1.2283E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2139.14799640622        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  9.9912E-01  4.8541E-01  1.3096E+00  1.3469E+00  9.6002E-01  1.0369E+00  9.5966E-01  1.0332E+00  8.2542E-01  8.7426E-01
             1.0173E+00
 PARAMETER:  9.9119E-02 -6.2276E-01  3.6973E-01  3.9782E-01  5.9200E-02  1.3625E-01  5.8823E-02  1.3264E-01 -9.1869E-02 -3.4381E-02
             1.1713E-01
 GRADIENT:   1.3989E+00 -1.9313E+00 -2.1111E+00 -1.0038E+01  4.7274E+00  3.1316E-01  9.9843E-02  2.3281E-01  3.4863E-01 -3.1408E-01
             3.2306E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2139.16063030731        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1087
 NPARAMETR:  9.9926E-01  4.8732E-01  1.3106E+00  1.3483E+00  9.5828E-01  1.0366E+00  9.4520E-01  1.0319E+00  8.2602E-01  8.7534E-01
             1.0169E+00
 PARAMETER:  9.9257E-02 -6.1884E-01  3.7049E-01  3.9887E-01  5.7385E-02  1.3595E-01  4.3638E-02  1.3136E-01 -9.1132E-02 -3.3139E-02
             1.1677E-01
 GRADIENT:   1.5770E+00  8.5309E-02  2.6629E-01 -4.2678E+00  9.6738E-02  1.7927E-01  2.1827E-02  3.6328E-02  1.3747E-01  4.6677E-02
             8.7041E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2139.16086982217        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1268
 NPARAMETR:  9.9914E-01  4.8745E-01  1.3098E+00  1.3482E+00  9.5794E-01  1.0365E+00  9.4557E-01  1.0309E+00  8.2621E-01  8.7522E-01
             1.0169E+00
 PARAMETER:  9.9145E-02 -6.1857E-01  3.6984E-01  3.9878E-01  5.7034E-02  1.3588E-01  4.4030E-02  1.3046E-01 -9.0908E-02 -3.3275E-02
             1.1677E-01
 GRADIENT:   1.3421E+00  8.7328E-02  2.7370E-01 -4.2401E+00  3.2713E-02  1.5128E-01  2.5603E-02  2.7486E-02  1.9610E-01  6.0854E-02
             1.3397E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2139.16098785392        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1453
 NPARAMETR:  9.9927E-01  4.8736E-01  1.3090E+00  1.3479E+00  9.5764E-01  1.0366E+00  9.4822E-01  1.0302E+00  8.2638E-01  8.7508E-01
             1.0169E+00
 PARAMETER:  9.9268E-02 -6.1874E-01  3.6930E-01  3.9856E-01  5.6714E-02  1.3596E-01  4.6836E-02  1.2975E-01 -9.0701E-02 -3.3440E-02
             1.1678E-01
 GRADIENT:   1.6022E+00 -8.8903E-02  2.7588E-01 -4.9161E+00  5.8750E-02  1.8377E-01  4.3616E-02  2.6523E-02  3.2068E-01  7.5099E-02
             2.6717E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2139.16135369527        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1636             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9923E-01  4.8738E-01  1.3084E+00  1.3480E+00  9.5746E-01  1.0366E+00  9.4337E-01  1.0297E+00  8.2610E-01  8.7474E-01
             1.0169E+00
 PARAMETER:  9.9229E-02 -6.1872E-01  3.6879E-01  3.9863E-01  5.6533E-02  1.3594E-01  4.1700E-02  1.2928E-01 -9.1042E-02 -3.3824E-02
             1.1677E-01
 GRADIENT:   4.2680E+02  6.1195E+01  7.7775E+00  5.4838E+02  6.4215E+00  5.6113E+01  7.4455E-01  3.5862E-01  1.0859E+01  5.5648E-01
             1.1730E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2139.16152407202        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1823
 NPARAMETR:  9.9927E-01  4.8759E-01  1.3077E+00  1.3478E+00  9.5725E-01  1.0366E+00  9.4588E-01  1.0292E+00  8.2620E-01  8.7458E-01
             1.0169E+00
 PARAMETER:  9.9272E-02 -6.1827E-01  3.6824E-01  3.9844E-01  5.6312E-02  1.3596E-01  4.4363E-02  1.2877E-01 -9.0915E-02 -3.4017E-02
             1.1677E-01
 GRADIENT:   1.5965E+00 -7.5009E-02  9.0430E-02 -4.7677E+00  2.5390E-01  1.8280E-01  2.1833E-02  3.7877E-02  1.5723E-01  3.2380E-02
             1.3203E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2139.16178805285        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2007             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9928E-01  4.8811E-01  1.3069E+00  1.3476E+00  9.5697E-01  1.0366E+00  9.3978E-01  1.0283E+00  8.2603E-01  8.7428E-01
             1.0169E+00
 PARAMETER:  9.9275E-02 -6.1721E-01  3.6768E-01  3.9830E-01  5.6013E-02  1.3596E-01  3.7887E-02  1.2794E-01 -9.1121E-02 -3.4358E-02
             1.1676E-01
 GRADIENT:   4.2686E+02  6.1327E+01  7.8210E+00  5.4766E+02  6.2326E+00  5.6126E+01  7.1416E-01  3.3956E-01  1.0655E+01  5.3303E-01
             1.1530E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2139.16196066236        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2186            RESET HESSIAN, TYPE II
 NPARAMETR:  9.9928E-01  4.8821E-01  1.3064E+00  1.3474E+00  9.5676E-01  1.0366E+00  9.4196E-01  1.0277E+00  8.2601E-01  8.7410E-01
             1.0169E+00
 PARAMETER:  9.9280E-02 -6.1702E-01  3.6727E-01  3.9817E-01  5.5802E-02  1.3597E-01  4.0209E-02  1.2735E-01 -9.1147E-02 -3.4559E-02
             1.1676E-01
 GRADIENT:   4.2686E+02  6.1276E+01  7.8308E+00  5.4726E+02  6.2301E+00  5.6127E+01  7.2527E-01  3.2767E-01  1.0677E+01  5.3259E-01
             1.1520E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2139.16206285066        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2369
 NPARAMETR:  9.9928E-01  4.8857E-01  1.3058E+00  1.3473E+00  9.5659E-01  1.0366E+00  9.4010E-01  1.0272E+00  8.2609E-01  8.7396E-01
             1.0169E+00
 PARAMETER:  9.9283E-02 -6.1627E-01  3.6685E-01  3.9807E-01  5.5620E-02  1.3597E-01  3.8228E-02  1.2686E-01 -9.1049E-02 -3.4725E-02
             1.1676E-01
 GRADIENT:   1.5741E+00  1.2209E-01  2.2373E-01 -4.2668E+00 -8.2187E-02  1.8159E-01 -2.1094E-02 -3.2965E-03 -1.4172E-01 -7.3214E-03
            -2.1096E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2139.16235687027        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2561             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9929E-01  4.8885E-01  1.3049E+00  1.3469E+00  9.5645E-01  1.0366E+00  9.4453E-01  1.0267E+00  8.2639E-01  8.7383E-01
             1.0169E+00
 PARAMETER:  9.9294E-02 -6.1569E-01  3.6615E-01  3.9780E-01  5.5471E-02  1.3597E-01  4.2929E-02  1.2631E-01 -9.0688E-02 -3.4871E-02
             1.1677E-01
 GRADIENT:   4.2684E+02  6.1229E+01  7.6926E+00  5.4633E+02  6.3487E+00  5.6125E+01  7.4584E-01  3.4671E-01  1.0795E+01  5.4524E-01
             1.1703E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2139.16251903583        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2748
 NPARAMETR:  9.9930E-01  4.8920E-01  1.3043E+00  1.3466E+00  9.5630E-01  1.0366E+00  9.4481E-01  1.0261E+00  8.2649E-01  8.7369E-01
             1.0169E+00
 PARAMETER:  9.9301E-02 -6.1498E-01  3.6569E-01  3.9762E-01  5.5316E-02  1.3598E-01  4.3231E-02  1.2578E-01 -9.0566E-02 -3.5027E-02
             1.1677E-01
 GRADIENT:   1.5892E+00 -1.8255E-02  6.4312E-02 -4.6010E+00  1.1992E-01  1.8232E-01  5.5172E-03  2.1558E-02  3.8441E-02  9.8587E-03
             3.0022E-03

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2139.16271926695        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2936             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9931E-01  4.8997E-01  1.3035E+00  1.3463E+00  9.5603E-01  1.0366E+00  9.4156E-01  1.0251E+00  8.2652E-01  8.7345E-01
             1.0169E+00
 PARAMETER:  9.9309E-02 -6.1341E-01  3.6502E-01  3.9734E-01  5.5033E-02  1.3598E-01  3.9787E-02  1.2481E-01 -9.0537E-02 -3.5300E-02
             1.1676E-01
 GRADIENT:   4.2682E+02  6.1404E+01  7.7906E+00  5.4536E+02  6.0870E+00  5.6130E+01  7.2286E-01  3.1482E-01  1.0639E+01  5.3168E-01
             1.1512E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2139.16285430003        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3123
 NPARAMETR:  9.9932E-01  4.9031E-01  1.3030E+00  1.3460E+00  9.5593E-01  1.0366E+00  9.4199E-01  1.0247E+00  8.2663E-01  8.7336E-01
             1.0169E+00
 PARAMETER:  9.9315E-02 -6.1271E-01  3.6465E-01  3.9717E-01  5.4931E-02  1.3599E-01  4.0235E-02  1.2437E-01 -9.0392E-02 -3.5406E-02
             1.1676E-01
 GRADIENT:   1.5756E+00  1.1813E-01  1.7706E-01 -4.2413E+00 -1.4317E-01  1.8187E-01 -1.5266E-02 -5.1196E-03 -1.0186E-01 -1.4448E-03
            -1.6085E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2139.16301031014        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3311             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9933E-01  4.9048E-01  1.3024E+00  1.3457E+00  9.5592E-01  1.0366E+00  9.4573E-01  1.0244E+00  8.2692E-01  8.7331E-01
             1.0169E+00
 PARAMETER:  9.9325E-02 -6.1237E-01  3.6420E-01  3.9694E-01  5.4923E-02  1.3599E-01  4.4197E-02  1.2412E-01 -9.0053E-02 -3.5467E-02
             1.1677E-01
 GRADIENT:   4.2682E+02  6.1245E+01  7.6053E+00  5.4414E+02  6.3594E+00  5.6131E+01  7.5685E-01  3.3974E-01  1.0816E+01  5.4362E-01
             1.1756E+00

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2139.16304090196        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     3494
 NPARAMETR:  9.9933E-01  4.9068E-01  1.3020E+00  1.3455E+00  9.5590E-01  1.0367E+00  9.4711E-01  1.0242E+00  8.2707E-01  8.7326E-01
             1.0169E+00
 PARAMETER:  9.9332E-02 -6.1196E-01  3.6389E-01  3.9678E-01  5.4898E-02  1.3600E-01  4.5661E-02  1.2389E-01 -8.9864E-02 -3.5523E-02
             1.1678E-01
 GRADIENT:   1.6009E+00 -1.1953E-01 -7.4223E-02 -4.8409E+00  2.6036E-01  1.8368E-01  1.8948E-02  3.4629E-02  1.3451E-01  1.1826E-02
             1.6910E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2139.16319977489        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     3680             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9933E-01  4.9122E-01  1.3018E+00  1.3454E+00  9.5575E-01  1.0367E+00  9.4287E-01  1.0236E+00  8.2698E-01  8.7316E-01
             1.0169E+00
 PARAMETER:  9.9333E-02 -6.1086E-01  3.6371E-01  3.9668E-01  5.4746E-02  1.3600E-01  4.1174E-02  1.2337E-01 -8.9972E-02 -3.5632E-02
             1.1676E-01
 GRADIENT:   4.2681E+02  6.1400E+01  7.7190E+00  5.4366E+02  6.1238E+00  5.6136E+01  7.3632E-01  3.1358E-01  1.0691E+01  5.3552E-01
             1.1575E+00

0ITERATION NO.:  105    OBJECTIVE VALUE:  -2139.16327802840        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3861
 NPARAMETR:  9.9934E-01  4.9138E-01  1.3015E+00  1.3452E+00  9.5574E-01  1.0367E+00  9.4382E-01  1.0235E+00  8.2708E-01  8.7313E-01
             1.0169E+00
 PARAMETER:  9.9338E-02 -6.1054E-01  3.6351E-01  3.9656E-01  5.4735E-02  1.3600E-01  4.2184E-02  1.2322E-01 -8.9854E-02 -3.5672E-02
             1.1677E-01
 GRADIENT:   1.5829E+00  3.4255E-02  7.4899E-02 -4.4459E+00 -2.2033E-02  1.8174E-01 -3.2883E-03  6.6603E-03 -1.5806E-02  2.6420E-03
            -4.0434E-03

0ITERATION NO.:  110    OBJECTIVE VALUE:  -2139.16337084378        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4045             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9935E-01  4.9167E-01  1.3010E+00  1.3449E+00  9.5574E-01  1.0367E+00  9.4595E-01  1.0232E+00  8.2729E-01  8.7307E-01
             1.0169E+00
 PARAMETER:  9.9347E-02 -6.0994E-01  3.6312E-01  3.9633E-01  5.4729E-02  1.3601E-01  4.4435E-02  1.2293E-01 -8.9601E-02 -3.5742E-02
             1.1678E-01
 GRADIENT:   4.2681E+02  6.1268E+01  7.5524E+00  5.4261E+02  6.3784E+00  5.6138E+01  7.6206E-01  3.3638E-01  1.0817E+01  5.4127E-01
             1.1771E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -2139.16344665415        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4228
 NPARAMETR:  9.9935E-01  4.9192E-01  1.3008E+00  1.3448E+00  9.5569E-01  1.0367E+00  9.4504E-01  1.0230E+00  8.2731E-01  8.7303E-01
             1.0169E+00
 PARAMETER:  9.9350E-02 -6.0944E-01  3.6300E-01  3.9625E-01  5.4682E-02  1.3601E-01  4.3471E-02  1.2272E-01 -8.9577E-02 -3.5781E-02
             1.1677E-01
 GRADIENT:   1.5911E+00 -1.6512E-02  1.5554E-02 -4.5699E+00  5.9372E-02  1.8310E-01  4.5973E-03  1.4457E-02  3.6356E-02  5.1332E-03
             3.0360E-03

0ITERATION NO.:  120    OBJECTIVE VALUE:  -2139.16353324629        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4412             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9935E-01  4.9241E-01  1.3005E+00  1.3446E+00  9.5561E-01  1.0367E+00  9.4323E-01  1.0225E+00  8.2734E-01  8.7297E-01
             1.0169E+00
 PARAMETER:  9.9354E-02 -6.0844E-01  3.6277E-01  3.9610E-01  5.4593E-02  1.3601E-01  4.1556E-02  1.2229E-01 -8.9540E-02 -3.5853E-02
             1.1676E-01
 GRADIENT:   4.2681E+02  6.1443E+01  7.7075E+00  5.4222E+02  6.0856E+00  5.6142E+01  7.4206E-01  3.0675E-01  1.0692E+01  5.3726E-01
             1.1579E+00

0ITERATION NO.:  125    OBJECTIVE VALUE:  -2139.16360068040        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     4593
 NPARAMETR:  9.9936E-01  4.9255E-01  1.3003E+00  1.3445E+00  9.5562E-01  1.0367E+00  9.4371E-01  1.0224E+00  8.2744E-01  8.7294E-01
             1.0169E+00
 PARAMETER:  9.9359E-02 -6.0815E-01  3.6259E-01  3.9599E-01  5.4605E-02  1.3602E-01  4.2061E-02  1.2218E-01 -8.9425E-02 -3.5884E-02
             1.1677E-01
 GRADIENT:   1.5843E+00  3.6233E-02  6.2610E-02 -4.4348E+00 -4.1056E-02  1.8254E-01 -3.6897E-03  4.3682E-03 -1.7870E-02  1.0411E-03
            -3.8398E-03

0ITERATION NO.:  130    OBJECTIVE VALUE:  -2139.16367505286        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     4777             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9937E-01  4.9283E-01  1.2999E+00  1.3442E+00  9.5565E-01  1.0367E+00  9.4565E-01  1.0222E+00  8.2765E-01  8.7291E-01
             1.0169E+00
 PARAMETER:  9.9368E-02 -6.0760E-01  3.6226E-01  3.9577E-01  5.4632E-02  1.3602E-01  4.4117E-02  1.2197E-01 -8.9161E-02 -3.5921E-02
             1.1677E-01
 GRADIENT:   4.2681E+02  6.1304E+01  7.5244E+00  5.4118E+02  6.3721E+00  5.6145E+01  7.6466E-01  3.3215E-01  1.0810E+01  5.3989E-01
             1.1775E+00

0ITERATION NO.:  135    OBJECTIVE VALUE:  -2139.16374191930        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4960
 NPARAMETR:  9.9937E-01  4.9307E-01  1.2997E+00  1.3441E+00  9.5561E-01  1.0367E+00  9.4494E-01  1.0220E+00  8.2767E-01  8.7289E-01
             1.0169E+00
 PARAMETER:  9.9370E-02 -6.0711E-01  3.6216E-01  3.9569E-01  5.4598E-02  1.3602E-01  4.3362E-02  1.2179E-01 -8.9139E-02 -3.5947E-02
             1.1677E-01
 GRADIENT:   1.5894E+00 -1.6434E-02  3.3324E-03 -4.5602E+00  4.6806E-02  1.8292E-01  5.0440E-03  1.2819E-02  4.1493E-02  4.8697E-03
             3.1897E-03

0ITERATION NO.:  140    OBJECTIVE VALUE:  -2139.16381182586        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     5144             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9937E-01  4.9355E-01  1.2995E+00  1.3439E+00  9.5555E-01  1.0367E+00  9.4308E-01  1.0217E+00  8.2769E-01  8.7284E-01
             1.0169E+00
 PARAMETER:  9.9374E-02 -6.0613E-01  3.6199E-01  3.9555E-01  5.4532E-02  1.3603E-01  4.1391E-02  1.2143E-01 -8.9118E-02 -3.6002E-02
             1.1676E-01
 GRADIENT:   4.2681E+02  6.1484E+01  7.6900E+00  5.4086E+02  6.0702E+00  5.6150E+01  7.4531E-01  3.0199E-01  1.0686E+01  5.3675E-01
             1.1574E+00

0ITERATION NO.:  145    OBJECTIVE VALUE:  -2139.16387292328        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     5325
 NPARAMETR:  9.9938E-01  4.9368E-01  1.2993E+00  1.3437E+00  9.5557E-01  1.0367E+00  9.4351E-01  1.0216E+00  8.2778E-01  8.7282E-01
             1.0169E+00
 PARAMETER:  9.9379E-02 -6.0588E-01  3.6184E-01  3.9544E-01  5.4556E-02  1.3603E-01  4.1850E-02  1.2134E-01 -8.9007E-02 -3.6025E-02
             1.1677E-01
 GRADIENT:   1.5838E+00  3.8637E-02  5.3884E-02 -4.4223E+00 -5.3499E-02  1.8257E-01 -3.8063E-03  2.6480E-03 -1.8120E-02  2.1168E-04
            -3.8534E-03

0ITERATION NO.:  150    OBJECTIVE VALUE:  -2139.16392874186        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     5509             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9939E-01  4.9392E-01  1.2989E+00  1.3434E+00  9.5562E-01  1.0367E+00  9.4575E-01  1.0214E+00  8.2800E-01  8.7280E-01
             1.0169E+00
 PARAMETER:  9.9387E-02 -6.0537E-01  3.6154E-01  3.9523E-01  5.4605E-02  1.3604E-01  4.4221E-02  1.2119E-01 -8.8747E-02 -3.6046E-02
             1.1677E-01
 GRADIENT:   4.2682E+02  6.1334E+01  7.5006E+00  5.3984E+02  6.3735E+00  5.6152E+01  7.6983E-01  3.2957E-01  1.0812E+01  5.4024E-01
             1.1786E+00

0ITERATION NO.:  154    OBJECTIVE VALUE:  -2139.16397062078        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     5643
 NPARAMETR:  9.9939E-01  4.9409E-01  1.2990E+00  1.3434E+00  9.5557E-01  1.0367E+00  9.4372E-01  1.0213E+00  8.2792E-01  8.7279E-01
             1.0169E+00
 PARAMETER:  9.9386E-02 -6.0504E-01  3.6157E-01  3.9524E-01  5.4555E-02  1.3604E-01  4.2077E-02  1.2106E-01 -8.8839E-02 -3.6064E-02
             1.1677E-01
 GRADIENT:  -6.1699E-03 -2.7811E-02  6.7931E-02  2.1490E-01 -3.6159E-02 -7.1263E-04 -1.7070E-03  3.0703E-03 -3.2913E-02  4.1041E-04
            -2.2919E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     5643
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9550E-04 -1.0749E-02 -2.8141E-02 -7.5930E-04 -3.2510E-02
 SE:             2.9883E-02  8.3993E-03  1.6966E-02  2.8505E-02  2.1089E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8944E-01  2.0064E-01  9.7169E-02  9.7875E-01  1.2317E-01

 ETASHRINKSD(%)  1.0000E-10  7.1861E+01  4.3163E+01  4.5055E+00  2.9351E+01
 ETASHRINKVR(%)  1.0000E-10  9.2082E+01  6.7696E+01  8.8080E+00  5.0087E+01
 EBVSHRINKSD(%)  3.1560E-01  7.2482E+01  4.5695E+01  4.6841E+00  2.7720E+01
 EBVSHRINKVR(%)  6.3021E-01  9.2427E+01  7.0510E+01  9.1489E+00  4.7756E+01
 RELATIVEINF(%)  9.7354E+01  3.0621E-01  6.3971E+00  4.6110E+00  7.5906E+00
 EPSSHRINKSD(%)  3.3551E+01
 EPSSHRINKVR(%)  5.5845E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2139.1639706207839     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1220.2254374161112     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    93.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2139.164       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  4.94E-01  1.30E+00  1.34E+00  9.56E-01  1.04E+00  9.44E-01  1.02E+00  8.28E-01  8.73E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       93.296
Stop Time:
Fri Oct  1 14:29:05 CDT 2021