Fri Oct  1 10:03:00 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1189.98828264701        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0821E+02  5.6044E+01  8.4250E+01  7.8745E+01  1.3194E+02  4.3843E+01 -2.9352E+01 -1.3963E+02 -3.2319E+01 -9.3720E+01
            -1.4207E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1636.90277182827        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1146E+00  8.9639E-01  9.2478E-01  1.1087E+00  8.4820E-01  1.0435E+00  1.1423E+00  7.3348E-01  1.1800E+00  1.3442E+00
             2.2894E+00
 PARAMETER:  2.0846E-01 -9.3851E-03  2.1803E-02  2.0319E-01 -6.4642E-02  1.4262E-01  2.3305E-01 -2.0995E-01  2.6551E-01  3.9583E-01
             9.2829E-01
 GRADIENT:   4.6613E+02  3.2353E+01  4.7473E+00  6.5606E+01 -2.6955E+01  4.1934E-01  6.0364E+00  6.0864E+00  2.9078E+01  3.0012E+01
             3.4312E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1657.15578327881        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0591E+00  7.3083E-01  4.7545E-01  1.1661E+00  5.1130E-01  9.9001E-01  1.2695E+00  1.9513E-01  1.1427E+00  7.4153E-01
             2.4535E+00
 PARAMETER:  1.5739E-01 -2.1357E-01 -6.4349E-01  2.5364E-01 -5.7081E-01  8.9962E-02  3.3859E-01 -1.5341E+00  2.3340E-01 -1.9904E-01
             9.9753E-01
 GRADIENT:   3.1358E+02  6.4512E+01  3.9020E+01  9.7385E+01 -2.6806E+01  4.9862E+00  6.1366E+00  5.5988E-01  3.3376E+01  4.8340E+00
             9.4497E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1678.32053584778        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      320
 NPARAMETR:  9.4936E-01  6.5859E-01  4.8342E-01  1.1764E+00  5.0574E-01  8.5564E-01  1.2412E+00  2.3799E-01  1.0150E+00  7.4853E-01
             2.2071E+00
 PARAMETER:  4.8035E-02 -3.1765E-01 -6.2687E-01  2.6248E-01 -5.8173E-01 -5.5901E-02  3.1610E-01 -1.3355E+00  1.1485E-01 -1.8965E-01
             8.9166E-01
 GRADIENT:  -1.4014E+01  3.8631E+01  1.8452E+01  5.9764E+01 -2.3742E+01 -3.5103E+01 -4.1787E+00  6.3812E-01  2.3784E+00  2.8380E+00
             6.0366E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1689.37817767191        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      495
 NPARAMETR:  9.4267E-01  4.4491E-01  3.2875E-01  1.1615E+00  3.5585E-01  9.4614E-01  1.7257E+00  1.0369E-01  9.8673E-01  4.5435E-01
             2.1863E+00
 PARAMETER:  4.0956E-02 -7.0988E-01 -1.0125E+00  2.4975E-01 -9.3324E-01  4.4640E-02  6.4565E-01 -2.1664E+00  8.6641E-02 -6.8889E-01
             8.8220E-01
 GRADIENT:  -2.4250E+01  9.3305E+00  1.1534E+01  7.3115E+00 -1.7699E+01  3.8702E+00 -5.5227E-01 -1.9848E-01  9.0592E-01 -3.3381E+00
             8.4979E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1689.82278936401        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      670
 NPARAMETR:  9.5201E-01  4.1662E-01  3.3578E-01  1.1711E+00  3.5648E-01  9.3451E-01  1.8154E+00  1.0509E-01  9.7099E-01  4.8747E-01
             2.1799E+00
 PARAMETER:  5.0825E-02 -7.7559E-01 -9.9131E-01  2.5792E-01 -9.3149E-01  3.2262E-02  6.9633E-01 -2.1529E+00  7.0560E-02 -6.1853E-01
             8.7926E-01
 GRADIENT:   1.3677E+00  8.2110E-01  1.0466E+00  3.9610E-01 -1.3587E+00 -5.6677E-02  2.4524E-02 -1.5822E-01 -2.5325E-01  2.8647E-02
            -1.8068E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1690.54990381350        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      858
 NPARAMETR:  9.5321E-01  4.1598E-01  3.3679E-01  1.1729E+00  3.5506E-01  9.3751E-01  1.8215E+00  4.7394E-01  9.6548E-01  4.6145E-01
             2.1811E+00
 PARAMETER:  5.2078E-02 -7.7713E-01 -9.8831E-01  2.5949E-01 -9.3548E-01  3.5477E-02  6.9968E-01 -6.4668E-01  6.4867E-02 -6.7337E-01
             8.7983E-01
 GRADIENT:   3.5285E+00  3.2564E+00 -1.9179E+00  5.1307E-01  4.9574E+00  9.4642E-01  1.2433E+00  4.4166E-01  1.6898E+00  4.0356E+00
             8.3216E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1690.82789706802        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1034
 NPARAMETR:  9.5161E-01  3.9320E-01  3.4382E-01  1.1843E+00  3.5561E-01  9.3455E-01  1.9306E+00  5.5674E-01  9.4074E-01  4.1326E-01
             2.1673E+00
 PARAMETER:  5.0403E-02 -8.3343E-01 -9.6765E-01  2.6918E-01 -9.3392E-01  3.2305E-02  7.5783E-01 -4.8565E-01  3.8916E-02 -7.8368E-01
             8.7346E-01
 GRADIENT:   1.3522E+00  3.4329E-01 -1.4447E+00  8.1612E-01  1.4749E+01 -6.0046E-03  3.1157E-01  5.3410E-01 -4.4796E-01  4.0438E-01
             2.4025E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1691.32588647384        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1213
 NPARAMETR:  9.5910E-01  3.5280E-01  3.1957E-01  1.1860E+00  3.3099E-01  9.3974E-01  2.0820E+00  6.6419E-01  9.3412E-01  3.3493E-01
             2.1797E+00
 PARAMETER:  5.8241E-02 -9.4185E-01 -1.0408E+00  2.7058E-01 -1.0057E+00  3.7852E-02  8.3335E-01 -3.0919E-01  3.1851E-02 -9.9383E-01
             8.7920E-01
 GRADIENT:   2.0626E+01  2.4886E-01 -5.9842E+00  9.2478E+00  1.2106E+01  1.7710E+00  2.2706E+00  1.7350E+00 -1.5891E+00  9.0442E-01
             1.0053E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1691.94243268098        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1388
 NPARAMETR:  9.5170E-01  3.5653E-01  2.8828E-01  1.1526E+00  3.0999E-01  9.3749E-01  1.9557E+00  7.0738E-01  9.7276E-01  2.4315E-01
             2.1407E+00
 PARAMETER:  5.0495E-02 -9.3133E-01 -1.1438E+00  2.4201E-01 -1.0712E+00  3.5453E-02  7.7075E-01 -2.4618E-01  7.2377E-02 -1.3141E+00
             8.6112E-01
 GRADIENT:   8.0636E-01  9.8146E-02 -7.5564E-01 -6.3200E-01  8.1699E-01  1.5889E-01  1.5090E-01  1.3649E-01 -5.8163E-02  8.4228E-02
             3.2910E-01

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1691.94291771665        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1517
 NPARAMETR:  9.5141E-01  3.5613E-01  2.8830E-01  1.1529E+00  3.0998E-01  9.3712E-01  1.9548E+00  7.0699E-01  9.7317E-01  2.4170E-01
             2.1402E+00
 PARAMETER:  5.0192E-02 -9.3245E-01 -1.1438E+00  2.4228E-01 -1.0713E+00  3.5051E-02  7.7031E-01 -2.4673E-01  7.2798E-02 -1.3201E+00
             8.6091E-01
 GRADIENT:   1.0288E-01 -1.4490E-01 -8.4763E-01 -2.1616E-01  1.2946E+00  9.5235E-03 -5.6292E-02  3.6143E-02  3.2978E-02  1.8257E-02
             9.0433E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1517
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7700E-03  3.5659E-02 -2.4006E-02 -1.7370E-02  9.8003E-03
 SE:             2.9462E-02  1.9996E-02  1.6090E-02  2.7101E-02  8.5263E-03
 N:                     100         100         100         100         100

 P VAL.:         9.5209E-01  7.4546E-02  1.3572E-01  5.2157E-01  2.5038E-01

 ETASHRINKSD(%)  1.2992E+00  3.3009E+01  4.6095E+01  9.2086E+00  7.1436E+01
 ETASHRINKVR(%)  2.5815E+00  5.5123E+01  7.0943E+01  1.7569E+01  9.1841E+01
 EBVSHRINKSD(%)  1.6316E+00  3.4982E+01  4.4414E+01  8.9570E+00  7.0666E+01
 EBVSHRINKVR(%)  3.2365E+00  5.7727E+01  6.9102E+01  1.7112E+01  9.1395E+01
 RELATIVEINF(%)  9.6551E+01  1.1765E+01  2.4773E+00  4.9489E+01  5.0143E-01
 EPSSHRINKSD(%)  3.0030E+01
 EPSSHRINKVR(%)  5.1043E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1691.9429177166496     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -773.00438451197692     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.03
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1691.943       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.51E-01  3.56E-01  2.88E-01  1.15E+00  3.10E-01  9.37E-01  1.95E+00  7.07E-01  9.73E-01  2.42E-01  2.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.070
Stop Time:
Fri Oct  1 10:03:26 CDT 2021
