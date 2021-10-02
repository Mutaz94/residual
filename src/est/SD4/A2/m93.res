Sat Oct  2 00:48:30 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat93.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m93.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -921.023369595352        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6976E+02  3.6986E+01  3.4298E+00  6.7279E+01  1.3713E+02  4.3160E+01 -1.5934E+01 -1.3563E+01 -4.0675E+01 -4.7671E+01
            -1.3001E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1352.93132260072        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1326E+00  9.8937E-01  9.9510E-01  1.0520E+00  9.1128E-01  1.1418E+00  9.9590E-01  9.7495E-01  1.0779E+00  9.7938E-01
             2.3754E+00
 PARAMETER:  2.2450E-01  8.9318E-02  9.5090E-02  1.5066E-01  7.0952E-03  2.3258E-01  9.5890E-02  7.4632E-02  1.7505E-01  7.9164E-02
             9.6518E-01
 GRADIENT:   3.9601E+02  2.3607E+01  6.9304E+00  3.3025E+01 -6.0370E+00  3.9674E+01  4.5438E+00  4.6787E+00  6.4710E+00  6.4915E+00
            -4.7718E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1366.42741388771        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0887E+00  9.7857E-01  3.0222E-01  9.8365E-01  4.8868E-01  1.0375E+00  7.3886E-01  1.9166E-01  9.6688E-01  3.1181E-01
             2.3807E+00
 PARAMETER:  1.8495E-01  7.8339E-02 -1.0966E+00  8.3519E-02 -6.1605E-01  1.3683E-01 -2.0265E-01 -1.5521E+00  6.6320E-02 -1.0654E+00
             9.6738E-01
 GRADIENT:   3.1213E+02  1.2989E+02  2.9457E+01  1.1155E+02 -5.7758E+01  1.5723E+01 -1.4618E+01 -1.5557E-01 -8.7091E+00 -3.0331E+00
            -8.4065E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1378.39972534839        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  9.9688E-01  9.3910E-01  2.1531E-01  9.5286E-01  4.1476E-01  9.1683E-01  8.3428E-01  4.5670E-02  1.0965E+00  3.0667E-01
             2.4079E+00
 PARAMETER:  9.6875E-02  3.7170E-02 -1.4357E+00  5.1718E-02 -7.8007E-01  1.3165E-02 -8.1191E-02 -2.9863E+00  1.9211E-01 -1.0820E+00
             9.7875E-01
 GRADIENT:   1.0498E+02  1.3420E+02  1.1806E+01  1.1822E+02 -3.5845E+01 -1.3828E+01  3.1229E+00  2.6983E-03  7.2413E+00 -7.0375E-01
            -2.2009E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1388.39613825098        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      385
 NPARAMETR:  9.8169E-01  9.4245E-01  3.0088E-01  9.2462E-01  4.9211E-01  9.6807E-01  7.7511E-01  1.7327E-02  8.4219E-01  2.8500E-01
             2.7561E+00
 PARAMETER:  8.1525E-02  4.0725E-02 -1.1010E+00  2.1629E-02 -6.0906E-01  6.7554E-02 -1.5475E-01 -3.9555E+00 -7.1745E-02 -1.1553E+00
             1.1138E+00
 GRADIENT:  -1.5054E+01  8.6611E+00  7.7813E+00 -2.0061E+01 -2.8191E+01  8.1596E+00  4.7643E-01  1.4214E-03 -8.6770E+00  2.5595E+00
            -2.0668E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1398.20519974295        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      562
 NPARAMETR:  9.8335E-01  9.8779E-01  9.8800E-01  1.0505E+00  9.3864E-01  9.0653E-01  6.9398E-01  2.7933E-02  8.6979E-01  2.5271E-01
             3.0760E+00
 PARAMETER:  8.3205E-02  8.7720E-02  8.7927E-02  1.4931E-01  3.6673E-02  1.8645E-03 -2.6531E-01 -3.4779E+00 -3.9498E-02 -1.2755E+00
             1.2236E+00
 GRADIENT:  -1.6105E+01  7.8883E+00 -2.9773E+00  1.5414E+01  1.2433E+00 -2.4909E+00  2.9851E+00  5.2269E-03  4.2874E+00  1.1389E+00
             1.7324E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1398.96137091742        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      737
 NPARAMETR:  9.8736E-01  9.8707E-01  1.1467E+00  1.0429E+00  1.0023E+00  9.0813E-01  5.7944E-01  6.9805E-02  8.4464E-01  2.0151E-01
             3.0548E+00
 PARAMETER:  8.7284E-02  8.6987E-02  2.3689E-01  1.4198E-01  1.0234E-01  3.6312E-03 -4.4570E-01 -2.5620E+00 -6.8847E-02 -1.5019E+00
             1.2167E+00
 GRADIENT:   1.1465E+00 -1.3534E+00  9.9225E-01 -3.5897E+00 -1.2218E+00 -5.2715E-01  1.6665E-01  2.4992E-02 -6.3711E-02  5.2457E-01
             2.9982E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1399.11851399839        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      912
 NPARAMETR:  9.8622E-01  9.6352E-01  1.0981E+00  1.0587E+00  9.7739E-01  9.0698E-01  6.0520E-01  7.8128E-02  8.3512E-01  1.1861E-01
             3.0511E+00
 PARAMETER:  8.6125E-02  6.2839E-02  1.9355E-01  1.5701E-01  7.7131E-02  2.3704E-03 -4.0219E-01 -2.4494E+00 -8.0180E-02 -2.0319E+00
             1.2155E+00
 GRADIENT:  -2.4604E+00  1.8705E-01 -1.1339E+00  9.2843E-01  1.3344E+00 -1.2344E+00  8.1701E-02  3.4833E-02 -5.6746E-01  1.6202E-01
             1.4391E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1399.19150938565        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1088
 NPARAMETR:  9.8598E-01  8.9834E-01  1.1419E+00  1.1003E+00  9.6765E-01  9.0805E-01  6.2216E-01  8.7448E-02  8.1170E-01  2.7343E-02
             3.0514E+00
 PARAMETER:  8.5876E-02 -7.2099E-03  2.3266E-01  1.9554E-01  6.7111E-02  3.5395E-03 -3.7456E-01 -2.3367E+00 -1.0863E-01 -3.4993E+00
             1.2156E+00
 GRADIENT:  -1.1218E+00  3.4862E-01 -5.0363E-02  6.8820E-01 -1.4076E-01 -4.6338E-01  3.2367E-02  4.4218E-02 -1.2542E-01  7.6700E-03
             4.8743E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1399.21473875008        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1264
 NPARAMETR:  9.8626E-01  8.8475E-01  1.1468E+00  1.1087E+00  9.6433E-01  9.0905E-01  6.2347E-01  1.0000E-02  8.0817E-01  1.6933E-02
             3.0501E+00
 PARAMETER:  8.6160E-02 -2.2449E-02  2.3700E-01  2.0321E-01  6.3680E-02  4.6412E-03 -3.7245E-01 -4.6344E+00 -1.1298E-01 -3.9785E+00
             1.2152E+00
 GRADIENT:  -1.6832E-02  2.1353E-01  7.6871E-02  4.7418E-01 -2.1436E-01 -4.8020E-02  6.1551E-03  0.0000E+00 -4.2880E-02  2.8805E-03
            -1.4405E-03

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1399.21780435901        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1444
 NPARAMETR:  9.8646E-01  8.9833E-01  1.1424E+00  1.0999E+00  9.6788E-01  9.0938E-01  6.1667E-01  1.0000E-02  8.1414E-01  1.0000E-02
             3.0496E+00
 PARAMETER:  8.6368E-02 -7.2131E-03  2.3312E-01  1.9519E-01  6.7357E-02  5.0122E-03 -3.8343E-01 -5.0798E+00 -1.0562E-01 -4.6762E+00
             1.2150E+00
 GRADIENT:   2.9624E-01 -6.8893E-03  8.9168E-02  4.1429E-02 -1.8350E-01  5.1425E-02  1.1664E-03  0.0000E+00 -5.3117E-03  0.0000E+00
            -9.5563E-02

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1399.21781648716        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1536
 NPARAMETR:  9.8644E-01  8.9834E-01  1.1421E+00  1.0999E+00  9.6799E-01  9.0931E-01  6.1680E-01  1.0000E-02  8.1412E-01  1.0000E-02
             3.0500E+00
 PARAMETER:  8.6350E-02 -7.2111E-03  2.3288E-01  1.9523E-01  6.7471E-02  4.9341E-03 -3.8320E-01 -5.0798E+00 -1.0564E-01 -4.5580E+00
             1.2151E+00
 GRADIENT:   2.2608E-01 -9.2954E-02 -2.3319E-02  4.1708E-02  4.9085E-02  2.1749E-02  6.5472E-03  0.0000E+00  4.4013E-03  0.0000E+00
             1.3490E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1536
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.8613E-04 -9.8202E-03  8.0376E-05 -6.7976E-03 -4.5090E-05
 SE:             2.8842E-02  1.0636E-02  8.8282E-05  2.1944E-02  1.9998E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8655E-01  3.5586E-01  3.6258E-01  7.5673E-01  8.2161E-01

 ETASHRINKSD(%)  3.3762E+00  6.4368E+01  9.9704E+01  2.6486E+01  9.9330E+01
 ETASHRINKVR(%)  6.6384E+00  8.7303E+01  9.9999E+01  4.5958E+01  9.9996E+01
 EBVSHRINKSD(%)  3.4027E+00  6.4595E+01  9.9658E+01  2.6250E+01  9.9294E+01
 EBVSHRINKVR(%)  6.6897E+00  8.7465E+01  9.9999E+01  4.5609E+01  9.9995E+01
 RELATIVEINF(%)  8.9935E+01  1.3674E-01  7.1917E-05  8.8575E-01  1.8910E-04
 EPSSHRINKSD(%)  2.1084E+01
 EPSSHRINKVR(%)  3.7723E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1399.2178164871584     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -664.06698992342024     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1399.218       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  8.98E-01  1.14E+00  1.10E+00  9.68E-01  9.09E-01  6.17E-01  1.00E-02  8.14E-01  1.00E-02  3.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.842
Stop Time:
Sat Oct  2 00:48:50 CDT 2021
