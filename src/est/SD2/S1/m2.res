Fri Oct  1 10:52:55 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat2.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m2.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2117.08551476220        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4305E+02 -2.6292E+01 -1.9557E+01 -4.0019E+00 -1.8830E+01  3.4229E+01  1.6281E+01  2.2087E+01  4.0017E+01  1.4965E+01
            -4.6733E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2130.70448530701        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.8001E-01  1.0991E+00  1.1748E+00  1.0072E+00  1.1206E+00  1.0079E+00  9.1886E-01  8.7796E-01  8.2647E-01  9.4970E-01
             1.0864E+00
 PARAMETER:  7.9809E-02  1.9453E-01  2.6106E-01  1.0715E-01  2.1390E-01  1.0788E-01  1.5383E-02 -3.0158E-02 -9.0593E-02  4.8387E-02
             1.8284E-01
 GRADIENT:  -4.3028E+00  1.6429E+01  6.5158E+00  9.7507E-01 -1.7900E+01  1.7247E+00  2.5970E+00  7.2992E+00 -7.0998E+00 -1.5626E+01
             1.4827E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2134.98312937763        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.7979E-01  9.4442E-01  1.3732E+00  1.1144E+00  1.1616E+00  9.5407E-01  6.9753E-01  5.6917E-01  9.0100E-01  1.1602E+00
             1.0775E+00
 PARAMETER:  7.9587E-02  4.2811E-02  4.1716E-01  2.0831E-01  2.4983E-01  5.2980E-02 -2.6020E-01 -4.6357E-01 -4.2460E-03  2.4863E-01
             1.7461E-01
 GRADIENT:  -4.2223E-01  1.6608E+01  1.1674E+01  2.4858E+01 -9.6555E+00 -1.9791E+01  2.4626E+00 -7.8963E-02  6.5908E+00 -3.4709E+00
             1.1698E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2136.75398039104        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.8198E-01  1.1064E+00  1.2636E+00  9.9757E-01  1.2077E+00  1.0111E+00  4.0417E-01  4.5927E-01  1.0213E+00  1.2358E+00
             1.0567E+00
 PARAMETER:  8.1813E-02  2.0109E-01  3.3394E-01  9.7563E-02  2.8875E-01  1.1100E-01 -8.0593E-01 -6.7812E-01  1.2109E-01  3.1176E-01
             1.5511E-01
 GRADIENT:   2.0355E+00  1.2537E+01  3.5345E+00  1.6366E+01 -2.2005E+00  3.4097E+00  3.7562E-01  1.5608E-01 -7.4793E-02  1.5828E+00
            -1.9727E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2137.10002904469        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.8186E-01  1.2000E+00  1.1606E+00  9.2094E-01  1.2124E+00  1.0029E+00  2.7597E-01  2.9379E-01  1.1175E+00  1.2375E+00
             1.0571E+00
 PARAMETER:  8.1691E-02  2.8233E-01  2.4892E-01  1.7635E-02  2.9257E-01  1.0294E-01 -1.1875E+00 -1.1249E+00  2.1112E-01  3.1312E-01
             1.5555E-01
 GRADIENT:  -7.4707E-02 -5.9852E-01 -2.6542E-01 -2.2962E-01  8.0310E-02 -5.6738E-02 -1.1178E-01  7.6080E-02 -1.1615E-01  7.9244E-02
            -1.4573E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2137.14829446819        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  9.8319E-01  1.2950E+00  1.0862E+00  8.6654E-01  1.2267E+00  1.0022E+00  3.9395E-01  1.7768E-01  1.1526E+00  1.2235E+00
             1.0564E+00
 PARAMETER:  8.3049E-02  3.5850E-01  1.8273E-01 -4.3243E-02  3.0435E-01  1.0221E-01 -8.3154E-01 -1.6277E+00  2.4204E-01  3.0175E-01
             1.5489E-01
 GRADIENT:   1.2203E+00  8.4330E+00  7.2625E-02  8.3873E+00 -1.4955E+00 -7.5199E-01 -1.9127E-01  5.5316E-02  3.6191E-01 -3.0032E-01
            -8.7445E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2137.19152083829        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1041
 NPARAMETR:  9.8302E-01  1.3212E+00  1.0689E+00  8.4460E-01  1.2359E+00  1.0043E+00  4.2301E-01  7.0492E-02  1.1623E+00  1.2240E+00
             1.0573E+00
 PARAMETER:  8.2876E-02  3.7853E-01  1.6658E-01 -6.8887E-02  3.1181E-01  1.0433E-01 -7.6036E-01 -2.5523E+00  2.5038E-01  3.0216E-01
             1.5569E-01
 GRADIENT:   3.6399E+02  2.0430E+02  2.0537E+00  3.9985E+01  1.4541E+01  3.6896E+01  6.6212E+00  1.5029E-02  1.1971E+01  2.6805E+00
             1.3481E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2137.19527348484        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1218
 NPARAMETR:  9.8260E-01  1.3212E+00  1.0640E+00  8.4509E-01  1.2335E+00  1.0042E+00  4.1570E-01  3.7989E-02  1.1631E+00  1.2251E+00
             1.0573E+00
 PARAMETER:  8.2451E-02  3.7856E-01  1.6202E-01 -6.8315E-02  3.0989E-01  1.0420E-01 -7.7780E-01 -3.1705E+00  2.5106E-01  3.0304E-01
             1.5572E-01
 GRADIENT:  -4.2516E-01  2.0586E-01 -1.7461E-01  4.3322E-01  9.1951E-02 -3.7919E-02 -4.6879E-02  2.4833E-03 -3.5086E-02  1.4294E-01
             4.6761E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2137.19841741538        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1392
 NPARAMETR:  9.8340E-01  1.3216E+00  1.0623E+00  8.4489E-01  1.2323E+00  1.0046E+00  4.2688E-01  1.0000E-02  1.1596E+00  1.2220E+00
             1.0573E+00
 PARAMETER:  8.3261E-02  3.7882E-01  1.6046E-01 -6.8550E-02  3.0888E-01  1.0458E-01 -7.5125E-01 -4.5492E+00  2.4808E-01  3.0049E-01
             1.5568E-01
 GRADIENT:   1.3352E+00 -3.5239E-01  1.9457E-01 -2.6215E-01 -3.8066E-01  1.0095E-01  6.9064E-02  2.8763E-06  1.8152E-01  7.8225E-02
            -2.8280E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2137.19841741538        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1414
 NPARAMETR:  9.8340E-01  1.3216E+00  1.0623E+00  8.4489E-01  1.2323E+00  1.0046E+00  4.2688E-01  1.0000E-02  1.1596E+00  1.2220E+00
             1.0573E+00
 PARAMETER:  8.3261E-02  3.7882E-01  1.6046E-01 -6.8550E-02  3.0888E-01  1.0458E-01 -7.5125E-01 -4.5492E+00  2.4808E-01  3.0049E-01
             1.5568E-01
 GRADIENT:   1.3352E+00 -3.5239E-01  1.9457E-01 -2.6215E-01 -3.8066E-01  1.0095E-01  6.9064E-02  2.8763E-06  1.8152E-01  7.8225E-02
            -2.8280E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1414
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3336E-04 -3.0560E-02 -2.6488E-04  8.1425E-03 -3.0862E-02
 SE:             2.9863E-02  1.1913E-02  1.2930E-04  2.7298E-02  2.4602E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8041E-01  1.0313E-02  4.0499E-02  7.6549E-01  2.0968E-01

 ETASHRINKSD(%)  1.0000E-10  6.0089E+01  9.9567E+01  8.5496E+00  1.7579E+01
 ETASHRINKVR(%)  1.0000E-10  8.4071E+01  9.9998E+01  1.6368E+01  3.2067E+01
 EBVSHRINKSD(%)  3.6595E-01  6.1067E+01  9.9595E+01  8.2158E+00  1.4218E+01
 EBVSHRINKVR(%)  7.3056E-01  8.4842E+01  9.9998E+01  1.5757E+01  2.6414E+01
 RELATIVEINF(%)  9.9091E+01  9.8639E-01  4.3820E-04  6.6972E+00  2.0148E+01
 EPSSHRINKSD(%)  3.1466E+01
 EPSSHRINKVR(%)  5.3031E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2137.1984174153822     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1218.2598842107095     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2137.198       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.83E-01  1.32E+00  1.06E+00  8.45E-01  1.23E+00  1.00E+00  4.27E-01  1.00E-02  1.16E+00  1.22E+00  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.394
Stop Time:
Fri Oct  1 10:53:17 CDT 2021
