Sat Oct  2 00:20:36 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat1.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m1.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -881.097345639856        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6229E+02  8.7121E+01  7.3091E+01  5.7084E+01  6.6370E+01  4.8293E+01 -2.8752E+01 -2.6420E+01 -5.1737E+01 -7.1077E+01
            -1.3660E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1351.80782499314        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.1040E+00  9.5155E-01  9.3097E-01  1.0422E+00  9.1531E-01  1.0684E+00  1.0274E+00  1.0072E+00  1.1164E+00  1.0563E+00
             2.2670E+00
 PARAMETER:  1.9895E-01  5.0334E-02  2.8476E-02  1.4138E-01  1.1510E-02  1.6612E-01  1.2699E-01  1.0722E-01  2.1010E-01  1.5477E-01
             9.1844E-01
 GRADIENT:   3.5607E+02  1.6494E+01  1.6596E+01  1.0147E+01 -8.0362E+00  3.3629E+01  7.8921E-01  1.4435E+00  1.0696E+00  1.3493E+00
            -8.7393E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1358.38715050095        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      204
 NPARAMETR:  1.0854E+00  6.3393E-01  6.4184E-01  1.2631E+00  6.1493E-01  1.0215E+00  8.9541E-01  5.6401E-01  1.0410E+00  7.4892E-01
             2.2351E+00
 PARAMETER:  1.8196E-01 -3.5581E-01 -3.4341E-01  3.3353E-01 -3.8625E-01  1.2127E-01 -1.0474E-02 -4.7268E-01  1.4020E-01 -1.8912E-01
             9.0428E-01
 GRADIENT:   1.6149E+02  3.8440E+01  1.7524E+01  8.8221E+01 -1.8997E+01  1.4551E+01 -7.0037E+00 -6.4791E-02 -4.3441E+00 -9.2868E+00
            -1.0745E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1375.38134385652        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      385
 NPARAMETR:  9.9519E-01  6.6401E-01  6.3260E-01  1.1989E+00  6.3968E-01  9.3594E-01  1.1063E+00  4.4450E-01  9.6677E-01  7.9991E-01
             2.4561E+00
 PARAMETER:  9.5182E-02 -3.0945E-01 -3.5792E-01  2.8142E-01 -3.4680E-01  3.3800E-02  2.0100E-01 -7.1079E-01  6.6200E-02 -1.2326E-01
             9.9857E-01
 GRADIENT:  -2.4637E+01  8.4043E+00 -1.5458E+01  3.1780E+01  2.4428E+01 -1.1703E+00 -5.5491E+00  1.3773E+00 -1.1516E+01  2.9117E+00
            -3.7300E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1382.22317792346        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      560
 NPARAMETR:  1.0114E+00  3.6267E-01  4.7527E-01  1.3026E+00  4.4435E-01  9.1147E-01  2.0321E+00  2.7966E-01  8.8782E-01  6.2288E-01
             2.4988E+00
 PARAMETER:  1.1132E-01 -9.1427E-01 -6.4387E-01  3.6432E-01 -7.1114E-01  7.3068E-03  8.0908E-01 -1.1742E+00 -1.8989E-02 -3.7341E-01
             1.0158E+00
 GRADIENT:   1.5562E+01  7.1439E+00 -2.8682E+00  3.1124E+01  3.4460E+00 -1.0884E+01  2.3772E+00  1.2158E-01 -8.1143E+00 -2.1916E+00
            -1.5242E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1383.56992953716        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      735
 NPARAMETR:  1.0063E+00  3.1405E-01  4.1203E-01  1.2743E+00  3.9081E-01  9.3938E-01  2.0099E+00  1.7139E-01  9.2311E-01  6.3925E-01
             2.5263E+00
 PARAMETER:  1.0624E-01 -1.0582E+00 -7.8666E-01  3.4243E-01 -8.3953E-01  3.7463E-02  7.9809E-01 -1.6638E+00  1.9995E-02 -3.4747E-01
             1.0268E+00
 GRADIENT:   5.3323E-01  2.0216E+00  3.9585E+00 -1.3680E+00 -6.6843E+00 -9.9553E-02  2.4205E-01  1.0490E-01  3.4205E-01  5.6116E-01
             3.9837E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1383.92351748458        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      911
 NPARAMETR:  1.0008E+00  2.0547E-01  4.5011E-01  1.3428E+00  3.9956E-01  9.3340E-01  2.7810E+00  3.9772E-02  8.9578E-01  6.8649E-01
             2.5391E+00
 PARAMETER:  1.0079E-01 -1.4824E+00 -6.9826E-01  3.9475E-01 -8.1738E-01  3.1083E-02  1.1228E+00 -3.1246E+00 -1.0065E-02 -2.7616E-01
             1.0318E+00
 GRADIENT:   4.8563E-02  1.5991E-01  4.8240E+00  4.1128E+00 -6.6759E+00 -3.5613E-01 -1.2132E+00  5.1069E-03  1.8940E-01  1.3489E+00
             1.1004E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1383.97299841134        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1089             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9918E-01  1.7390E-01  4.4594E-01  1.3505E+00  3.9405E-01  9.3389E-01  3.1279E+00  1.0000E-02  8.8899E-01  6.7965E-01
             2.5351E+00
 PARAMETER:  9.9185E-02 -1.6493E+00 -7.0756E-01  4.0047E-01 -8.3128E-01  3.1605E-02  1.2404E+00 -4.8228E+00 -1.7664E-02 -2.8618E-01
             1.0302E+00
 GRADIENT:   5.7721E+01  5.1471E+00  1.1625E+01  8.4407E+01  3.6674E+01  4.3671E+00  4.3802E+00  0.0000E+00  2.3939E+00  4.5994E-01
             8.0662E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1383.97299841134        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1147
 NPARAMETR:  9.9918E-01  1.7390E-01  4.4594E-01  1.3505E+00  3.9405E-01  9.3389E-01  3.1279E+00  1.0000E-02  8.8899E-01  6.7965E-01
             2.5351E+00
 PARAMETER:  9.9185E-02 -1.6493E+00 -7.0756E-01  4.0047E-01 -8.3128E-01  3.1605E-02  1.2404E+00 -4.8228E+00 -1.7664E-02 -2.8618E-01
             1.0302E+00
 GRADIENT:   2.4958E-01  1.6473E-01 -1.2895E-01 -1.1153E+00  3.3799E-01  5.8056E-03  3.2030E-01  0.0000E+00 -7.4598E-02 -1.3873E-01
            -1.7730E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1147
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.0873E-04  2.8925E-02 -1.3523E-04 -2.0584E-02  2.9040E-03
 SE:             2.8972E-02  1.3998E-02  2.1772E-04  2.6049E-02  1.9295E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7773E-01  3.8797E-02  5.3452E-01  4.2941E-01  8.8036E-01

 ETASHRINKSD(%)  2.9396E+00  5.3104E+01  9.9271E+01  1.2733E+01  3.5360E+01
 ETASHRINKVR(%)  5.7928E+00  7.8008E+01  9.9995E+01  2.3845E+01  5.8217E+01
 EBVSHRINKSD(%)  2.6932E+00  6.5278E+01  9.9229E+01  1.1362E+01  3.1268E+01
 EBVSHRINKVR(%)  5.3138E+00  8.7944E+01  9.9994E+01  2.1434E+01  5.2759E+01
 RELATIVEINF(%)  9.2609E+01  4.1815E+00  2.3474E-04  2.7430E+01  1.7980E+00
 EPSSHRINKSD(%)  3.3853E+01
 EPSSHRINKVR(%)  5.6246E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1383.9729984113440     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -648.82217184760577     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1383.973       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  1.74E-01  4.46E-01  1.35E+00  3.94E-01  9.34E-01  3.13E+00  1.00E-02  8.89E-01  6.80E-01  2.54E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.355
Stop Time:
Sat Oct  2 00:20:53 CDT 2021