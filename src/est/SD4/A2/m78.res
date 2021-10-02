Sat Oct  2 00:43:29 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat78.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1044.88594683570        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7121E+02 -1.6806E+01 -5.7846E+00 -4.1821E+00  1.0292E+02  4.4658E+01 -2.6904E+01  4.6820E+00 -2.9034E+01 -4.8846E+01
            -1.1214E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1385.76093040101        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1954E+00  1.1248E+00  1.2531E+00  1.0552E+00  1.1032E+00  1.0646E+00  1.0498E+00  8.5395E-01  1.0371E+00  7.7628E-01
             2.7471E+00
 PARAMETER:  2.7851E-01  2.1761E-01  3.2562E-01  1.5369E-01  1.9820E-01  1.6259E-01  1.4858E-01 -5.7883E-02  1.3638E-01 -1.5324E-01
             1.1106E+00
 GRADIENT:   4.9792E+02  2.6099E+01 -6.2989E+00  4.5313E+01  1.1040E+01 -1.5876E+01  5.2322E+00  2.2571E+00  5.7434E+00  3.7564E+00
             3.8741E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1402.53146757714        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.1248E+00  9.1306E-01  3.6686E+00  1.1442E+00  1.3788E+00  1.0242E+00  5.1682E-01  5.1489E-01  9.8921E-01  9.5579E-01
             2.7408E+00
 PARAMETER:  2.1760E-01  9.0494E-03  1.3998E+00  2.3467E-01  4.2120E-01  1.2392E-01 -5.6006E-01 -5.6381E-01  8.9149E-02  5.4782E-02
             1.1082E+00
 GRADIENT:   3.7923E+02 -2.4568E+01  3.3279E-01 -2.9663E+01  1.7401E+01  1.2658E+00  8.3827E-01  3.7764E-02 -5.5144E+00  3.3442E+00
             3.1985E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1422.97940815290        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  9.6970E-01  1.0404E+00  1.5202E+00  1.0296E+00  1.1016E+00  9.0081E-01  4.1287E-01  2.1896E-01  1.2175E+00  9.1574E-01
             2.4417E+00
 PARAMETER:  6.9234E-02  1.3958E-01  5.1882E-01  1.2921E-01  1.9678E-01 -4.4604E-03 -7.8463E-01 -1.4189E+00  2.9677E-01  1.1981E-02
             9.9270E-01
 GRADIENT:   2.5418E+01  1.1803E+01  5.5091E+00  3.9157E+00 -8.4883E+00 -1.2120E+01  7.7014E-01  6.3928E-02  1.3498E+00 -2.4071E+00
            -9.4960E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1424.30190477469        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  9.8524E-01  9.9664E-01  1.5105E+00  1.0747E+00  1.1013E+00  9.5057E-01  4.7010E-01  1.9429E-01  1.1723E+00  9.1943E-01
             2.4990E+00
 PARAMETER:  8.5132E-02  9.6632E-02  5.1241E-01  1.7200E-01  1.9649E-01  4.9310E-02 -6.5481E-01 -1.5384E+00  2.5895E-01  1.6004E-02
             1.0159E+00
 GRADIENT:  -6.4884E+00  3.4845E+00  9.6729E-01  5.4620E-01 -1.9114E+00  2.2077E+00  2.6703E-03  6.0112E-02 -1.4783E+00 -5.2395E-01
            -2.9430E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1424.70517131745        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  9.8564E-01  7.4771E-01  1.5662E+00  1.2429E+00  1.0313E+00  9.4162E-01  3.0107E-01  5.2980E-02  1.0592E+00  9.1995E-01
             2.5017E+00
 PARAMETER:  8.5540E-02 -1.9073E-01  5.4867E-01  3.1748E-01  1.3080E-01  3.9847E-02 -1.1004E+00 -2.8378E+00  1.5750E-01  1.6564E-02
             1.0170E+00
 GRADIENT:  -2.1357E+00  6.0432E+00  2.3114E+00  1.0863E+01 -5.6216E+00 -6.7823E-01  1.2491E-01  4.7429E-03  6.8021E-01 -4.5141E-02
             1.3591E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1424.92861096244        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      724
 NPARAMETR:  9.8566E-01  5.5936E-01  1.4946E+00  1.3532E+00  9.5606E-01  9.4050E-01  9.9177E-02  1.0000E-02  9.7122E-01  9.2462E-01
             2.4726E+00
 PARAMETER:  8.5553E-02 -4.8096E-01  5.0184E-01  4.0246E-01  5.5060E-02  3.8655E-02 -2.2108E+00 -4.8635E+00  7.0795E-02  2.1623E-02
             1.0053E+00
 GRADIENT:   2.7093E+00  1.3163E+00  1.3037E-01  1.1515E+00 -1.9242E+00 -6.0140E-01  1.0750E-02  0.0000E+00 -1.2205E+00  6.2655E-03
             5.2487E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1424.96573232997        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      900
 NPARAMETR:  9.8299E-01  4.5625E-01  1.5369E+00  1.4220E+00  9.4120E-01  9.4118E-01  3.5109E-02  1.0000E-02  9.2808E-01  9.3603E-01
             2.4607E+00
 PARAMETER:  8.2848E-02 -6.8471E-01  5.2977E-01  4.5205E-01  3.9399E-02  3.9376E-02 -3.2493E+00 -6.4066E+00  2.5366E-02  3.3896E-02
             1.0004E+00
 GRADIENT:  -9.5880E-01  1.0661E+00  1.7224E-01  3.5659E+00 -1.1048E-01 -1.7653E-01  1.2150E-03  0.0000E+00 -3.5419E-01  4.7228E-03
            -1.4835E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1424.97441408166        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1076
 NPARAMETR:  9.8222E-01  3.7424E-01  1.5175E+00  1.4733E+00  9.1302E-01  9.4196E-01  1.1099E-02  1.0000E-02  8.9592E-01  9.3697E-01
             2.4490E+00
 PARAMETER:  8.2056E-02 -8.8285E-01  5.1706E-01  4.8749E-01  8.9974E-03  4.0206E-02 -4.4009E+00 -8.0703E+00 -9.9091E-03  3.4892E-02
             9.9570E-01
 GRADIENT:  -4.9864E-01  1.0770E+00 -1.3604E-01  4.8024E+00  4.4853E-01  2.8463E-01  9.0964E-05  0.0000E+00 -6.8194E-01 -5.7520E-02
            -7.3791E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1425.00719486177        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1254
 NPARAMETR:  9.8073E-01  2.4394E-01  1.4396E+00  1.5495E+00  8.5265E-01  9.4222E-01  1.0000E-02  1.0000E-02  8.5307E-01  9.3221E-01
             2.4276E+00
 PARAMETER:  8.0541E-02 -1.3108E+00  4.6439E-01  5.3794E-01 -5.9401E-02  4.0484E-02 -7.2856E+00 -1.2007E+01 -5.8918E-02  2.9805E-02
             9.8688E-01
 GRADIENT:   2.6660E-01  9.8922E-01 -3.8897E-02  5.7127E+00 -4.8530E-01  7.3575E-01  0.0000E+00  0.0000E+00 -9.7776E-01 -7.8756E-02
            -1.2092E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1425.06236956834        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.7879E-01  1.4459E-01  1.3474E+00  1.6017E+00  7.9398E-01  9.3882E-01  1.0000E-02  1.0000E-02  8.2800E-01  9.2205E-01
             2.4124E+00
 PARAMETER:  7.8564E-02 -1.8339E+00  3.9819E-01  5.7105E-01 -1.3070E-01  3.6871E-02 -1.1287E+01 -1.7185E+01 -8.8737E-02  1.8850E-02
             9.8063E-01
 GRADIENT:  -4.9667E-01  7.4501E-01  1.4342E+00  4.6543E+00 -3.7445E+00 -1.6281E-01  0.0000E+00  0.0000E+00 -4.1507E-01  8.7072E-02
            -1.4935E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1425.11902851976        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1608
 NPARAMETR:  9.7749E-01  7.7414E-02  1.2627E+00  1.6331E+00  7.4797E-01  9.3757E-01  1.0000E-02  1.0000E-02  8.1377E-01  9.1345E-01
             2.3968E+00
 PARAMETER:  7.7235E-02 -2.4586E+00  3.3321E-01  5.9049E-01 -1.9039E-01  3.5534E-02 -1.6422E+01 -2.3651E+01 -1.0608E-01  9.4782E-03
             9.7412E-01
 GRADIENT:  -4.9236E-01  4.2027E-01  1.2628E+00  3.2464E+00 -3.9225E+00 -3.9807E-01  0.0000E+00  0.0000E+00 -1.5130E-01  8.7195E-02
             2.4101E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1425.21783647559        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1786
 NPARAMETR:  9.7664E-01  2.2440E-02  1.2858E+00  1.6656E+00  7.4698E-01  9.3849E-01  1.0000E-02  1.0000E-02  7.9773E-01  9.2046E-01
             2.3911E+00
 PARAMETER:  7.6366E-02 -3.6969E+00  3.5135E-01  6.1020E-01 -1.9172E-01  3.6515E-02 -2.7149E+01 -3.6733E+01 -1.2599E-01  1.7124E-02
             9.7175E-01
 GRADIENT:   2.2983E-01  5.0736E-02 -5.3383E-01 -1.1306E+00  9.8846E-01  1.8398E-01  0.0000E+00  0.0000E+00  9.5763E-02 -1.1957E-01
            -2.3611E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1425.22044954363        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1961
 NPARAMETR:  9.7642E-01  1.3273E-02  1.3055E+00  1.6747E+00  7.5155E-01  9.3811E-01  1.0000E-02  1.0000E-02  7.9317E-01  9.2448E-01
             2.3927E+00
 PARAMETER:  7.6133E-02 -4.2220E+00  3.6658E-01  6.1565E-01 -1.8561E-01  3.6112E-02 -3.1760E+01 -4.2318E+01 -1.3172E-01  2.1474E-02
             9.7242E-01
 GRADIENT:  -1.9943E-01  4.8611E-02 -4.8511E-02  2.2252E+00  1.7028E-01  4.2812E-02  0.0000E+00  0.0000E+00 -2.5014E-01 -2.4621E-02
            -2.0851E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1425.22980024706        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2145
 NPARAMETR:  9.7656E-01  1.0000E-02  1.3083E+00  1.6734E+00  7.5178E-01  9.3801E-01  1.0000E-02  1.0000E-02  7.9329E-01  9.2532E-01
             2.3932E+00
 PARAMETER:  7.6281E-02 -4.5604E+00  3.6874E-01  6.1484E-01 -1.8531E-01  3.6001E-02 -3.4108E+01 -4.5164E+01 -1.3156E-01  2.2381E-02
             9.7262E-01
 GRADIENT:   5.9528E-01  0.0000E+00  2.1629E-01 -4.1131E+00  6.2818E-01  1.0996E-01  0.0000E+00  0.0000E+00  2.4445E-01  4.1407E-02
             1.3788E-01

0ITERATION NO.:   73    OBJECTIVE VALUE:  -1425.23043087026        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:     2247
 NPARAMETR:  9.7638E-01  1.0000E-02  1.3074E+00  1.6736E+00  7.5122E-01  9.3768E-01  1.0000E-02  1.0000E-02  7.9225E-01  9.2450E-01
             2.3923E+00
 PARAMETER:  7.6098E-02 -4.5604E+00  3.6805E-01  6.1495E-01 -1.8605E-01  3.5652E-02 -3.4108E+01 -4.5164E+01 -1.3288E-01  2.1502E-02
             9.7224E-01
 GRADIENT:   1.3583E-01  0.0000E+00  3.5511E-01 -3.4470E+00  2.9692E-01 -3.0810E-02  0.0000E+00  0.0000E+00 -1.6116E-01 -2.8122E-02
            -1.8565E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2247
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.0187E-05 -2.8872E-06  7.0893E-05 -1.2541E-02 -2.6318E-02
 SE:             2.9069E-02  1.5383E-06  1.1605E-04  2.7215E-02  1.9756E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9780E-01  6.0532E-02  5.4129E-01  6.4494E-01  1.8281E-01

 ETASHRINKSD(%)  2.6148E+00  9.9995E+01  9.9611E+01  8.8248E+00  3.3815E+01
 ETASHRINKVR(%)  5.1612E+00  1.0000E+02  9.9998E+01  1.6871E+01  5.6195E+01
 EBVSHRINKSD(%)  2.4227E+00  9.9995E+01  9.9575E+01  8.4382E+00  3.4447E+01
 EBVSHRINKVR(%)  4.7867E+00  1.0000E+02  9.9998E+01  1.6164E+01  5.7028E+01
 RELATIVEINF(%)  9.0237E+01  8.6184E-09  1.2490E-04  4.2328E+00  1.8995E+00
 EPSSHRINKSD(%)  3.1798E+01
 EPSSHRINKVR(%)  5.3485E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1425.2304308702578     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -690.07960430651963     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1425.230       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.76E-01  1.00E-02  1.31E+00  1.67E+00  7.51E-01  9.38E-01  1.00E-02  1.00E-02  7.92E-01  9.25E-01  2.39E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.237
Stop Time:
Sat Oct  2 00:43:58 CDT 2021