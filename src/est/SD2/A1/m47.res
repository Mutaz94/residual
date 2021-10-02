Fri Oct  1 09:25:27 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1930.35336143310        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2506E+02 -2.1274E+01  2.6154E+01 -5.6596E+01  4.2363E+01  6.3940E+01 -5.9024E+00 -2.3312E+00 -1.8538E+01 -3.1065E+01
            -2.8875E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1950.72713892255        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0227E+00  9.7277E-01  8.7572E-01  1.0771E+00  8.7725E-01  8.8241E-01  1.0028E+00  9.5377E-01  1.0711E+00  1.1217E+00
             1.6767E+00
 PARAMETER:  1.2246E-01  7.2390E-02 -3.2704E-02  1.7425E-01 -3.0965E-02 -2.5094E-02  1.0275E-01  5.2670E-02  1.6869E-01  2.1481E-01
             6.1684E-01
 GRADIENT:   2.5827E+02  3.5353E+00 -5.0241E+00  1.9398E+01 -2.2562E+01 -2.8096E+00  6.2270E+00  1.1391E+01  1.4646E+01  2.3061E+01
             1.7037E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1955.63334218164        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0093E+00  8.7601E-01  5.2287E-01  1.1137E+00  6.2454E-01  8.8456E-01  9.6453E-01  4.5206E-01  9.9795E-01  8.4728E-01
             1.5906E+00
 PARAMETER:  1.0922E-01 -3.2382E-02 -5.4842E-01  2.0765E-01 -3.7074E-01 -2.2660E-02  6.3887E-02 -6.9393E-01  9.7952E-02 -6.5729E-02
             5.6410E-01
 GRADIENT:   2.0530E+02  1.0550E+01 -3.6515E+01  8.1918E+01  2.9447E+01 -1.0086E+00 -2.5226E+00  4.2216E+00  3.4998E+00  1.3621E+01
             1.3870E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1978.48369261767        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  9.7604E-01  7.4791E-01  7.8197E-01  1.1880E+00  7.4279E-01  9.0516E-01  1.2275E+00  3.9914E-01  9.7324E-01  9.9828E-01
             1.3711E+00
 PARAMETER:  7.5751E-02 -1.9048E-01 -1.4594E-01  2.7229E-01 -1.9734E-01  3.5928E-04  3.0497E-01 -8.1843E-01  7.2874E-02  9.8277E-02
             4.1562E-01
 GRADIENT:  -2.8984E+01 -5.7676E+00  2.0378E+00 -3.6154E+01 -1.1143E+01 -2.9399E+00  7.2425E-01  1.1389E+00  5.8381E+00  4.6523E+00
             4.3019E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1981.12532225222        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      477
 NPARAMETR:  9.8335E-01  5.7821E-01  8.3894E-01  1.3162E+00  7.2305E-01  9.0483E-01  1.4550E+00  3.2309E-01  8.9927E-01  1.0229E+00
             1.3102E+00
 PARAMETER:  8.3207E-02 -4.4782E-01 -7.5611E-02  3.7474E-01 -2.2428E-01 -4.8033E-06  4.7502E-01 -1.0298E+00 -6.1668E-03  1.2261E-01
             3.7016E-01
 GRADIENT:  -1.2817E-01  5.0921E+00  2.3194E+00  7.4592E+00 -2.6969E+00 -2.2833E+00  1.1462E-02 -5.0949E-01 -5.2984E-01 -8.6136E-01
             3.8813E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1982.16761176827        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      662
 NPARAMETR:  9.7285E-01  3.3097E-01  9.9265E-01  1.4783E+00  7.3622E-01  9.1079E-01  1.7195E+00  7.4393E-01  8.4164E-01  1.0660E+00
             1.3022E+00
 PARAMETER:  7.2479E-02 -1.0057E+00  9.2619E-02  4.9092E-01 -2.0622E-01  6.5593E-03  6.4206E-01 -1.9581E-01 -7.2398E-02  1.6393E-01
             3.6406E-01
 GRADIENT:  -1.2727E+01  4.5593E+00 -4.3527E+00  1.3810E+01 -4.0691E+00  1.9508E+00  2.0611E-01  2.6571E+00 -1.1163E+00  5.1487E+00
             1.5855E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1982.65196984275        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      838
 NPARAMETR:  9.7697E-01  2.0771E-01  1.0665E+00  1.5532E+00  7.3840E-01  9.0051E-01  2.1223E+00  8.2424E-01  8.1151E-01  1.0310E+00
             1.3036E+00
 PARAMETER:  7.6698E-02 -1.4716E+00  1.6439E-01  5.4033E-01 -2.0327E-01 -4.7885E-03  8.5248E-01 -9.3298E-02 -1.0886E-01  1.3057E-01
             3.6516E-01
 GRADIENT:   6.2541E+00  2.4915E+00  6.1711E+00  8.0424E+00 -5.8676E+00 -1.7356E+00  1.5446E-01 -7.0175E-02 -6.8534E-01 -2.8436E+00
            -1.8126E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1983.05547077157        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1017
 NPARAMETR:  9.7152E-01  7.6574E-02  1.0814E+00  1.6258E+00  7.1979E-01  9.0270E-01  2.8516E+00  8.5436E-01  7.8405E-01  1.0559E+00
             1.3040E+00
 PARAMETER:  7.1107E-02 -2.4695E+00  1.7824E-01  5.8603E-01 -2.2880E-01 -2.3618E-03  1.1479E+00 -5.7403E-02 -1.4328E-01  1.5439E-01
             3.6541E-01
 GRADIENT:   2.3144E-01  5.8442E-01 -4.8201E-01  3.4549E+00 -7.9969E-01 -1.0004E-01  9.2759E-03  7.1582E-02 -4.6156E-01  5.5291E-01
             7.9866E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1983.08347906268        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1192
 NPARAMETR:  9.6977E-01  4.0255E-02  1.0987E+00  1.6498E+00  7.1922E-01  9.0371E-01  3.3915E+00  8.8187E-01  7.7557E-01  1.0609E+00
             1.3021E+00
 PARAMETER:  6.9305E-02 -3.1125E+00  1.9412E-01  6.0063E-01 -2.2959E-01 -1.2518E-03  1.3213E+00 -2.5708E-02 -1.5416E-01  1.5907E-01
             3.6395E-01
 GRADIENT:  -2.1200E+00  3.6094E-01 -3.0336E-01  6.2927E+00 -1.6347E+00  4.5917E-01 -1.3257E-03  1.2320E-01 -4.8669E-01  1.0588E+00
            -1.6640E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1983.11905850540        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1370
 NPARAMETR:  9.6971E-01  1.5325E-02  1.1164E+00  1.6648E+00  7.2125E-01  9.0267E-01  4.3336E+00  9.0861E-01  7.6965E-01  1.0563E+00
             1.3020E+00
 PARAMETER:  6.9243E-02 -4.0783E+00  2.1011E-01  6.0973E-01 -2.2677E-01 -2.4015E-03  1.5664E+00  4.1603E-03 -1.6181E-01  1.5473E-01
             3.6391E-01
 GRADIENT:  -6.6382E-01  1.2109E-01  4.6319E-01  3.4004E+00 -1.1470E+00  1.0611E-01 -1.3796E-03  1.6550E-02 -2.5517E-01  1.7191E-01
            -2.1921E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1983.15435307854        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1558             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7003E-01  1.0000E-02  1.1179E+00  1.6615E+00  7.2112E-01  9.0238E-01  6.8715E+00  9.0836E-01  7.6882E-01  1.0562E+00
             1.3019E+00
 PARAMETER:  6.9575E-02 -4.7556E+00  2.1144E-01  6.0772E-01 -2.2695E-01 -2.7153E-03  2.0274E+00  3.8849E-03 -1.6289E-01  1.5469E-01
             3.6386E-01
 GRADIENT:   2.2293E+02  0.0000E+00  5.3896E+00  6.5059E+02  1.2542E+01  1.8330E+01  1.5087E-01  9.6849E-02  1.4103E+01  1.1114E+00
             3.5051E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1983.15547039724        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1719
 NPARAMETR:  9.6978E-01  1.0000E-02  1.1157E+00  1.6615E+00  7.2082E-01  9.0226E-01  5.2937E+00  9.0869E-01  7.6863E-01  1.0562E+00
             1.3021E+00
 PARAMETER:  6.9311E-02 -4.7556E+00  2.0949E-01  6.0775E-01 -2.2737E-01 -2.8493E-03  1.7665E+00  4.2456E-03 -1.6315E-01  1.5466E-01
             3.6396E-01
 GRADIENT:   5.2290E-02  0.0000E+00  2.4457E-02 -1.0001E+01  1.0445E+00 -1.2787E-02  1.2270E-04  8.2142E-02 -6.6113E-02  6.0089E-02
             1.7249E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1983.15622391301        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1906
 NPARAMETR:  9.6994E-01  1.0000E-02  1.1155E+00  1.6615E+00  7.2039E-01  9.0234E-01  7.4972E+00  9.0722E-01  7.6878E-01  1.0559E+00
             1.3021E+00
 PARAMETER:  6.9474E-02 -4.7556E+00  2.0926E-01  6.0770E-01 -2.2797E-01 -2.7624E-03  2.1145E+00  2.6243E-03 -1.6295E-01  1.5440E-01
             3.6396E-01
 GRADIENT:   4.7973E-01  0.0000E+00  4.5483E-01 -1.0104E+01  5.4990E-01  2.0930E-02  5.8414E-03  2.0561E-02  1.0121E-01  5.4501E-02
            -7.7505E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1983.15918406956        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2092            RESET HESSIAN, TYPE II
 NPARAMETR:  9.6983E-01  1.0000E-02  1.1114E+00  1.6599E+00  7.1839E-01  9.0226E-01  7.8391E+00  9.0287E-01  7.6925E-01  1.0538E+00
             1.3020E+00
 PARAMETER:  6.9365E-02 -4.7556E+00  2.0559E-01  6.0674E-01 -2.3074E-01 -2.8558E-03  2.1591E+00 -2.1717E-03 -1.6234E-01  1.5238E-01
             3.6394E-01
 GRADIENT:   2.2230E+02  0.0000E+00  4.8705E+00  6.4734E+02  1.3142E+01  1.8285E+01  2.0214E-01  1.4013E-01  1.4166E+01  1.0594E+00
             3.5921E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1983.16050395708        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2278             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7001E-01  1.0000E-02  1.1101E+00  1.6604E+00  7.1779E-01  9.0235E-01  7.5160E+00  9.0119E-01  7.6903E-01  1.0537E+00
             1.3021E+00
 PARAMETER:  6.9555E-02 -4.7556E+00  2.0443E-01  6.0704E-01 -2.3157E-01 -2.7484E-03  2.1170E+00 -4.0364E-03 -1.6263E-01  1.5232E-01
             3.6398E-01
 GRADIENT:   2.2277E+02  0.0000E+00  4.7447E+00  6.4891E+02  1.3052E+01  1.8312E+01  1.8364E-01  1.2413E-01  1.4065E+01  1.1019E+00
             3.5853E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1983.16102105554        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     2444             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7001E-01  1.0000E-02  1.1090E+00  1.6602E+00  7.1725E-01  9.0235E-01  7.8435E+00  8.9984E-01  7.6911E-01  1.0533E+00
             1.3021E+00
 PARAMETER:  6.9551E-02 -4.7556E+00  2.0348E-01  6.0693E-01 -2.3233E-01 -2.7543E-03  2.1597E+00 -5.5419E-03 -1.6252E-01  1.5196E-01
             3.6398E-01
 GRADIENT:   2.2275E+02  0.0000E+00  4.7950E+00  6.4868E+02  1.2976E+01  1.8310E+01  2.0186E-01  1.0686E-01  1.4092E+01  1.0949E+00
             3.5748E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1983.16151827195        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     2605
 NPARAMETR:  9.6996E-01  1.0000E-02  1.1081E+00  1.6599E+00  7.1713E-01  9.0232E-01  7.1354E+00  9.0126E-01  7.6907E-01  1.0535E+00
             1.3022E+00
 PARAMETER:  6.9502E-02 -4.7556E+00  2.0267E-01  6.0678E-01 -2.3250E-01 -2.7881E-03  2.0651E+00 -3.9614E-03 -1.6257E-01  1.5209E-01
             3.6407E-01
 GRADIENT:   6.4001E-01  0.0000E+00  7.7375E-02 -1.1201E+01  5.5080E-01  2.8562E-02  4.1638E-03  8.0933E-02  9.1322E-02  8.8882E-02
             8.5220E-02

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1983.16194310762        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     2768
 NPARAMETR:  9.6991E-01  1.0000E-02  1.1077E+00  1.6601E+00  7.1673E-01  9.0229E-01  7.1036E+00  8.9934E-01  7.6901E-01  1.0530E+00
             1.3021E+00
 PARAMETER:  6.9446E-02 -4.7556E+00  2.0225E-01  6.0688E-01 -2.3305E-01 -2.8166E-03  2.0606E+00 -6.0931E-03 -1.6265E-01  1.5164E-01
             3.6401E-01
 GRADIENT:   2.2245E+02  0.0000E+00  4.5277E+00  6.4863E+02  1.3155E+01  1.8290E+01  1.6177E-01  1.4871E-01  1.3999E+01  1.1197E+00
             3.6025E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1983.16273361715        NO. OF FUNC. EVALS.: 142
 CUMULATIVE NO. OF FUNC. EVALS.:     2910
 NPARAMETR:  9.7000E-01  1.0000E-02  1.1061E+00  1.6598E+00  7.1595E-01  9.0233E-01  6.3365E+00  8.9763E-01  7.6899E-01  1.0524E+00
             1.3021E+00
 PARAMETER:  6.9539E-02 -4.7556E+00  2.0080E-01  6.0670E-01 -2.3415E-01 -2.7729E-03  1.9463E+00 -7.9984E-03 -1.6268E-01  1.5107E-01
             3.6401E-01
 GRADIENT:   7.4572E-01  0.0000E+00  3.6296E-01 -1.0753E+01  1.1195E-01  4.4358E-02  1.5752E-03 -2.2115E-02 -2.4415E-02 -2.3711E-03
            -6.2357E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1983.16304627568        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     3100
 NPARAMETR:  9.7001E-01  1.0000E-02  1.1050E+00  1.6597E+00  7.1568E-01  9.0233E-01  6.4179E+00  8.9802E-01  7.6923E-01  1.0523E+00
             1.3023E+00
 PARAMETER:  6.9547E-02 -4.7556E+00  1.9981E-01  6.0661E-01 -2.3453E-01 -2.7773E-03  1.9591E+00 -7.5580E-03 -1.6237E-01  1.5095E-01
             3.6410E-01
 GRADIENT:   7.7066E-01  0.0000E+00 -3.7636E-02 -1.0830E+01  4.5528E-01  4.0486E-02  1.8654E-03  6.2193E-02  7.3315E-02  5.8922E-02
             6.5659E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1983.16340121233        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     3297             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6999E-01  1.0000E-02  1.1044E+00  1.6596E+00  7.1522E-01  9.0232E-01  6.6695E+00  8.9618E-01  7.6919E-01  1.0518E+00
             1.3022E+00
 PARAMETER:  6.9536E-02 -4.7556E+00  1.9926E-01  6.0655E-01 -2.3516E-01 -2.7832E-03  1.9975E+00 -9.6136E-03 -1.6242E-01  1.5051E-01
             3.6405E-01
 GRADIENT:   2.2266E+02  0.0000E+00  4.3730E+00  6.4773E+02  1.3238E+01  1.8298E+01  1.4033E-01  1.4589E-01  1.3985E+01  1.0993E+00
             3.6122E+00

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1983.16378635387        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     3491
 NPARAMETR:  9.6999E-01  1.0000E-02  1.1031E+00  1.6594E+00  7.1464E-01  9.0231E-01  6.7364E+00  8.9487E-01  7.6924E-01  1.0513E+00
             1.3022E+00
 PARAMETER:  6.9531E-02 -4.7556E+00  1.9815E-01  6.0644E-01 -2.3597E-01 -2.7963E-03  2.0075E+00 -1.1080E-02 -1.6236E-01  1.5002E-01
             3.6406E-01
 GRADIENT:   7.5016E-01  0.0000E+00  2.2010E-01 -1.0831E+01  1.1490E-01  4.0768E-02  2.5260E-03 -2.0509E-02  6.0178E-02 -1.6050E-02
            -3.1792E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1983.16401088332        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     3687             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6998E-01  1.0000E-02  1.1007E+00  1.6591E+00  7.1380E-01  9.0228E-01  6.8426E+00  8.9529E-01  7.6932E-01  1.0508E+00
             1.3023E+00
 PARAMETER:  6.9524E-02 -4.7556E+00  1.9595E-01  6.0625E-01 -2.3715E-01 -2.8347E-03  2.0232E+00 -1.0609E-02 -1.6225E-01  1.4958E-01
             3.6417E-01
 GRADIENT:   2.2255E+02  0.0000E+00  3.7030E+00  6.4693E+02  1.3708E+01  1.8272E+01  1.4849E-01  2.8886E-01  1.3970E+01  1.2012E+00
             3.7784E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1983.16429883827        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     3880             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6998E-01  1.0000E-02  1.1008E+00  1.6590E+00  7.1361E-01  9.0230E-01  6.9416E+00  8.9335E-01  7.6932E-01  1.0507E+00
             1.3023E+00
 PARAMETER:  6.9524E-02 -4.7556E+00  1.9599E-01  6.0624E-01 -2.3742E-01 -2.8063E-03  2.0375E+00 -1.2778E-02 -1.6225E-01  1.4941E-01
             3.6412E-01
 GRADIENT:   2.2256E+02  0.0000E+00  4.1028E+00  6.4699E+02  1.3370E+01  1.8284E+01  1.5328E-01  1.8129E-01  1.3979E+01  1.1256E+00
             3.6691E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1983.16434617888        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     4075
 NPARAMETR:  9.6998E-01  1.0000E-02  1.1004E+00  1.6590E+00  7.1348E-01  9.0230E-01  6.8672E+00  8.9311E-01  7.6934E-01  1.0505E+00
             1.3023E+00
 PARAMETER:  6.9523E-02 -4.7556E+00  1.9568E-01  6.0621E-01 -2.3760E-01 -2.8079E-03  2.0268E+00 -1.3051E-02 -1.6222E-01  1.4928E-01
             3.6412E-01
 GRADIENT:   7.4887E-01  0.0000E+00 -4.2277E-02 -1.0839E+01  1.7546E-01  3.2772E-02  2.8066E-03  2.8522E-02  6.5655E-02  2.9580E-02
             2.7938E-02

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1983.16440728667        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     4272             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6998E-01  1.0000E-02  1.1002E+00  1.6589E+00  7.1327E-01  9.0230E-01  6.8087E+00  8.9221E-01  7.6934E-01  1.0503E+00
             1.3022E+00
 PARAMETER:  6.9521E-02 -4.7556E+00  1.9546E-01  6.0618E-01 -2.3790E-01 -2.8105E-03  2.0182E+00 -1.4051E-02 -1.6222E-01  1.4905E-01
             3.6409E-01
 GRADIENT:   2.2256E+02  0.0000E+00  4.2022E+00  6.4689E+02  1.3282E+01  1.8280E+01  1.4672E-01  1.4512E-01  1.3972E+01  1.0834E+00
             3.6197E+00

0ITERATION NO.:  127    OBJECTIVE VALUE:  -1983.16440728667        NO. OF FUNC. EVALS.:  66
 CUMULATIVE NO. OF FUNC. EVALS.:     4338
 NPARAMETR:  9.6998E-01  1.0000E-02  1.0994E+00  1.6589E+00  7.1315E-01  9.0229E-01  6.8279E+00  8.9311E-01  7.6935E-01  1.0505E+00
             1.3024E+00
 PARAMETER:  6.9521E-02 -4.7556E+00  1.9546E-01  6.0618E-01 -2.3790E-01 -2.8105E-03  2.0182E+00 -1.4051E-02 -1.6222E-01  1.4905E-01
             3.6409E-01
 GRADIENT:  -2.6469E-04  0.0000E+00  1.2215E-01  3.5060E-02  4.9860E-02  7.1260E-04 -9.0719E-06 -1.1073E-02 -4.4749E-04 -7.7443E-03
            -1.5684E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     4338
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.3622E-04 -1.0307E-03 -1.9754E-02 -5.2326E-03 -2.6285E-02
 SE:             2.9765E-02  1.0445E-03  1.5393E-02  2.9214E-02  2.2315E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8295E-01  3.2374E-01  1.9936E-01  8.5785E-01  2.3884E-01

 ETASHRINKSD(%)  2.8447E-01  9.6501E+01  4.8433E+01  2.1295E+00  2.5242E+01
 ETASHRINKVR(%)  5.6814E-01  9.9878E+01  7.3408E+01  4.2136E+00  4.4112E+01
 EBVSHRINKSD(%)  6.5172E-01  9.6611E+01  5.0502E+01  2.4774E+00  2.3211E+01
 EBVSHRINKVR(%)  1.2992E+00  9.9885E+01  7.5499E+01  4.8934E+00  4.1035E+01
 RELATIVEINF(%)  9.2802E+01  6.7864E-03  4.7477E+00  6.9823E+00  8.6418E+00
 EPSSHRINKSD(%)  3.2722E+01
 EPSSHRINKVR(%)  5.4736E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1983.1644072866673     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1064.2258740819946     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    66.40
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1983.164       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.70E-01  1.00E-02  1.10E+00  1.66E+00  7.13E-01  9.02E-01  6.81E+00  8.92E-01  7.69E-01  1.05E+00  1.30E+00
 


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
 #CPUT: Total CPU Time in Seconds,       66.426
Stop Time:
Fri Oct  1 09:26:35 CDT 2021