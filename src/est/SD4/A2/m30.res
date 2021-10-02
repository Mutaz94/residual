Sat Oct  2 00:29:49 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat30.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -877.986215826924        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1373E+02  2.1895E+01  9.2477E+01 -3.3939E+01 -1.7690E+01  4.0006E+01 -4.8443E+00 -3.8151E+01 -7.5961E+00 -7.8711E+00
            -1.4907E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1385.39643413189        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0267E+00  1.1238E+00  9.1486E-01  1.0010E+00  1.0195E+00  1.0770E+00  9.4850E-01  1.0804E+00  8.3906E-01  7.1683E-01
             2.0649E+00
 PARAMETER:  1.2634E-01  2.1668E-01  1.1021E-02  1.0101E-01  1.1933E-01  1.7414E-01  4.7129E-02  1.7732E-01 -7.5472E-02 -2.3292E-01
             8.2507E-01
 GRADIENT:   1.5002E+02  4.0090E+01  2.8471E+01  8.1914E+00 -1.4954E+01  4.3073E+01 -9.4171E+00 -1.2425E+01 -1.9818E+01  3.2559E+00
            -1.9211E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1396.09689407310        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0231E+00  8.8439E-01  6.8104E-01  1.1144E+00  7.2395E-01  9.8669E-01  1.3491E+00  1.0257E+00  7.8497E-01  2.1913E-01
             2.1231E+00
 PARAMETER:  1.2283E-01 -2.2862E-02 -2.8413E-01  2.0832E-01 -2.2303E-01  8.6603E-02  3.9940E-01  1.2541E-01 -1.4211E-01 -1.4181E+00
             8.5289E-01
 GRADIENT:   1.3017E+02  4.4108E+01  5.8975E+01  2.7429E+01 -8.3146E+01  2.0540E+00  5.0183E+00 -2.6269E+00 -1.6600E+00  1.0829E+00
            -1.4367E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1411.22244796747        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      273
 NPARAMETR:  9.8082E-01  1.0048E+00  5.4381E-01  1.0096E+00  7.4013E-01  9.7762E-01  1.1783E+00  8.2350E-01  7.8589E-01  2.0563E-01
             2.4227E+00
 PARAMETER:  8.0629E-02  1.0478E-01 -5.0915E-01  1.0956E-01 -2.0092E-01  7.7370E-02  2.6411E-01 -9.4192E-02 -1.4094E-01 -1.4817E+00
             9.8490E-01
 GRADIENT:  -8.0168E+01 -1.7499E+01 -7.9785E+00 -1.3423E+01  1.4393E+01 -1.1509E+01  4.0588E+00  1.9176E+00 -3.2696E+00  1.3272E+00
            -5.1460E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1416.97139636490        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      451
 NPARAMETR:  1.0152E+00  1.2334E+00  7.6256E-01  9.3058E-01  1.0145E+00  9.8953E-01  9.3166E-01  1.0996E+00  8.9022E-01  1.4498E-01
             2.7268E+00
 PARAMETER:  1.1509E-01  3.0974E-01 -1.7107E-01  2.8054E-02  1.1443E-01  8.9471E-02  2.9215E-02  1.9495E-01 -1.6292E-02 -1.8312E+00
             1.1031E+00
 GRADIENT:  -8.6755E+00  9.5802E-01  1.0531E+00  8.7403E-01 -1.6339E-01 -6.4420E-01  4.7891E-01 -8.8758E-01 -1.0197E+00  3.0752E-01
             1.2062E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1417.25346676943        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      627
 NPARAMETR:  1.0192E+00  1.3014E+00  7.2887E-01  8.8817E-01  1.0320E+00  9.8963E-01  8.6499E-01  1.2592E+00  9.3557E-01  7.3360E-02
             2.7099E+00
 PARAMETER:  1.1902E-01  3.6345E-01 -2.1626E-01 -1.8596E-02  1.3149E-01  8.9581E-02 -4.5042E-02  3.3045E-01  3.3401E-02 -2.5124E+00
             1.0969E+00
 GRADIENT:  -1.1046E+00 -1.2696E+00 -1.8240E+00  4.3845E+00  2.0889E+00 -1.3833E+00 -1.1319E+00  6.1727E-01 -9.5633E-01  8.3601E-02
             2.3331E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1417.83684392284        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      802
 NPARAMETR:  1.0204E+00  1.6155E+00  6.1612E-01  6.8580E-01  1.1456E+00  9.9824E-01  7.3476E-01  1.6316E+00  1.1547E+00  1.0000E-02
             2.7016E+00
 PARAMETER:  1.2017E-01  5.7967E-01 -3.8431E-01 -2.7717E-01  2.3593E-01  9.8243E-02 -2.0821E-01  5.8959E-01  2.4388E-01 -5.4311E+00
             1.0938E+00
 GRADIENT:   6.6206E-01  1.0984E+01  6.3857E+00  7.3735E-01 -1.1168E+01  1.3483E+00 -1.5973E-01 -7.4341E-01  5.6585E-01  0.0000E+00
             7.2537E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1430.67785429696        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      987
 NPARAMETR:  1.0191E+00  2.0501E+00  3.6310E-01  4.5512E-01  1.1681E+00  9.8811E-01  6.2943E-01  2.7809E+00  1.4064E+00  1.0000E-02
             2.6155E+00
 PARAMETER:  1.1895E-01  8.1789E-01 -9.1308E-01 -6.8719E-01  2.5541E-01  8.8043E-02 -3.6295E-01  1.1228E+00  4.4101E-01 -1.0892E+01
             1.0615E+00
 GRADIENT:  -6.0636E+00  2.0622E+02  3.4455E+01  2.9720E+01 -6.2712E+01 -3.0753E+00 -1.6060E+01 -4.2508E+01 -5.0336E+00  0.0000E+00
             6.0611E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1437.29286049512        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1163             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0197E+00  1.9857E+00  3.5823E-01  4.5559E-01  1.1711E+00  9.8837E-01  6.6327E-01  2.8085E+00  1.4110E+00  1.0000E-02
             2.5950E+00
 PARAMETER:  1.1955E-01  7.8597E-01 -9.2659E-01 -6.8617E-01  2.5797E-01  8.8302E-02 -3.1057E-01  1.1327E+00  4.4429E-01 -1.0881E+01
             1.0536E+00
 GRADIENT:   7.6034E+01  2.2388E+02  2.8323E+01  2.6072E+01 -2.2652E+01  5.2046E+00  6.3553E-01 -3.3084E+01  7.0347E-01  0.0000E+00
             7.4270E+01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1437.94028276659        NO. OF FUNC. EVALS.:  81
 CUMULATIVE NO. OF FUNC. EVALS.:     1244
 NPARAMETR:  1.0181E+00  1.9700E+00  3.5854E-01  4.5527E-01  1.1708E+00  9.8938E-01  6.6836E-01  2.8056E+00  1.4104E+00  1.0000E-02
             2.5975E+00
 PARAMETER:  1.1789E-01  7.7747E-01 -9.2640E-01 -6.8634E-01  2.5791E-01  8.8324E-02 -3.0253E-01  1.1324E+00  4.4419E-01 -1.0881E+01
             1.0538E+00
 GRADIENT:  -2.4712E-01 -1.6536E+03 -1.4080E+03  4.1550E+02  5.1520E+03 -1.1948E+00  1.8708E-01  1.5957E+03  2.9998E+03  0.0000E+00
            -1.7282E+03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1244
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4673E-03 -3.8943E-02 -5.2175E-02  1.8264E-02 -2.0158E-04
 SE:             2.9366E-02  2.2776E-02  1.8819E-02  1.7349E-02  1.4925E-04
 N:                     100         100         100         100         100

 P VAL.:         9.3304E-01  8.7302E-02  5.5638E-03  2.9247E-01  1.7682E-01

 ETASHRINKSD(%)  1.6189E+00  2.3697E+01  3.6953E+01  4.1878E+01  9.9500E+01
 ETASHRINKVR(%)  3.2116E+00  4.1779E+01  6.0251E+01  6.6218E+01  9.9997E+01
 EBVSHRINKSD(%)  2.3426E+00  2.3175E+01  5.0935E+01  4.2788E+01  9.9395E+01
 EBVSHRINKVR(%)  4.6302E+00  4.0979E+01  7.5926E+01  6.7268E+01  9.9996E+01
 RELATIVEINF(%)  9.4356E+01  8.6134E+00  6.3246E+00  6.0262E+00  6.9241E-04
 EPSSHRINKSD(%)  3.6382E+01
 EPSSHRINKVR(%)  5.9528E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1437.9402827665938     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -702.78945620285560     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1437.940       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.97E+00  3.58E-01  4.56E-01  1.17E+00  9.88E-01  6.69E-01  2.81E+00  1.41E+00  1.00E-02  2.60E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.808
Stop Time:
Sat Oct  2 00:30:07 CDT 2021