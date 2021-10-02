Sat Oct  2 00:24:05 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat12.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -653.678510010243        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3575E+02  6.9072E+01  4.6653E+01  3.8744E+01  2.0347E+02  6.4607E+01 -7.9311E+01 -1.9776E+01 -1.4696E+02 -1.4648E+02
            -1.6001E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1254.66326680438        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0169E+00  8.3103E-01  8.7766E-01  1.0678E+00  7.9862E-01  9.0176E-01  1.1469E+00  9.7346E-01  1.4580E+00  1.2240E+00
             1.9141E+00
 PARAMETER:  1.1677E-01 -8.5085E-02 -3.0491E-02  1.6563E-01 -1.2487E-01 -3.4099E-03  2.3705E-01  7.3099E-02  4.7707E-01  3.0209E-01
             7.4925E-01
 GRADIENT:   1.8837E+02  6.3471E+00  9.2374E+00 -1.2103E+00  2.5112E+01  8.8795E+00 -2.3165E+00  7.1533E+00  2.7138E+01  1.9174E+00
            -2.6814E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1266.17278837128        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  1.0224E+00  5.4253E-01  7.0195E-01  1.2857E+00  5.8102E-01  8.6952E-01  1.2201E+00  5.3516E-01  1.2584E+00  1.0815E+00
             1.8921E+00
 PARAMETER:  1.2213E-01 -5.1151E-01 -2.5390E-01  3.5128E-01 -4.4297E-01 -3.9811E-02  2.9891E-01 -5.2519E-01  3.2984E-01  1.7834E-01
             7.3766E-01
 GRADIENT:   7.1445E+01  2.9711E+01  4.0439E+01  2.5063E+01 -2.6927E+01 -1.4520E+01 -4.9846E+00  8.7588E-01 -8.5572E+00  4.3438E+00
            -2.8289E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1318.21300257089        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      402
 NPARAMETR:  9.9669E-01  4.2189E-01  6.8445E-01  1.4171E+00  5.4917E-01  8.8884E-01  8.1612E-01  1.8040E-01  1.1338E+00  9.8059E-01
             2.8088E+00
 PARAMETER:  9.6687E-02 -7.6300E-01 -2.7914E-01  4.4859E-01 -4.9935E-01 -1.7837E-02 -1.0319E-01 -1.6126E+00  2.2558E-01  8.0397E-02
             1.1328E+00
 GRADIENT:  -3.4707E+01  2.9693E+01  1.5048E+01  8.8417E+01 -1.3834E+01  4.9335E+00 -1.9593E+00  4.0580E-01 -2.0147E+01  1.1984E+01
            -8.3611E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1333.58849932951        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  1.0150E+00  2.3250E-01  4.7661E-01  1.4367E+00  3.9986E-01  8.7604E-01  3.0714E+00  1.4536E-02  1.0863E+00  6.7777E-01
             2.8798E+00
 PARAMETER:  1.1488E-01 -1.3588E+00 -6.4105E-01  4.6238E-01 -8.1664E-01 -3.2341E-02  1.2221E+00 -4.1311E+00  1.8276E-01 -2.8895E-01
             1.1577E+00
 GRADIENT:   1.7126E+01  1.3982E+01 -1.2068E+01  7.6763E+01  1.6474E+01  1.5740E-01  5.6194E+00  1.4850E-03 -3.4029E+00  1.6186E+00
             1.3089E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1340.21785506506        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      757
 NPARAMETR:  1.0042E+00  1.5725E-01  3.6556E-01  1.3193E+00  3.2228E-01  8.7313E-01  3.1519E+00  1.0000E-02  1.1065E+00  6.1473E-01
             2.8065E+00
 PARAMETER:  1.0424E-01 -1.7499E+00 -9.0634E-01  3.7708E-01 -1.0323E+00 -3.5670E-02  1.2480E+00 -6.0477E+00  2.0118E-01 -3.8658E-01
             1.1319E+00
 GRADIENT:  -3.6653E+00  1.3707E+00 -4.0487E+00 -2.3931E+00  4.3689E+00 -7.0592E-01 -2.5888E+00  0.0000E+00 -7.7665E-01  2.0990E+00
             1.7599E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1341.17719905588        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      932
 NPARAMETR:  1.0037E+00  1.1306E-01  3.7251E-01  1.3351E+00  3.2123E-01  8.7311E-01  4.2333E+00  1.0000E-02  1.0952E+00  5.8114E-01
             2.8223E+00
 PARAMETER:  1.0367E-01 -2.0798E+00 -8.8748E-01  3.8898E-01 -1.0356E+00 -3.5696E-02  1.5430E+00 -6.7773E+00  1.9095E-01 -4.4276E-01
             1.1376E+00
 GRADIENT:   5.8969E+00  1.2531E+01 -9.3564E-01 -1.6860E+01 -7.2648E-02 -5.1119E-01  1.4857E+01  0.0000E+00 -4.6113E+00 -4.3625E+00
            -4.6608E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1341.65122693498        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1107
 NPARAMETR:  1.0011E+00  8.1669E-02  3.6427E-01  1.3471E+00  3.1639E-01  8.7219E-01  5.2206E+00  1.0000E-02  1.0871E+00  5.6366E-01
             2.8400E+00
 PARAMETER:  1.0109E-01 -2.4051E+00 -9.0985E-01  3.9795E-01 -1.0508E+00 -3.6742E-02  1.7526E+00 -7.6942E+00  1.8352E-01 -4.7331E-01
             1.1438E+00
 GRADIENT:   2.7607E+00  6.2807E+00 -1.0552E+01 -4.8170E+00  1.1637E+01 -8.2440E-01  9.7162E+00  0.0000E+00 -3.1969E+00 -2.7456E+00
            -1.0301E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1341.75363232007        NO. OF FUNC. EVALS.: 204
 CUMULATIVE NO. OF FUNC. EVALS.:     1311
 NPARAMETR:  9.9987E-01  7.1523E-02  3.6619E-01  1.3509E+00  3.1592E-01  8.7245E-01  5.6729E+00  1.0000E-02  1.0868E+00  5.8260E-01
             2.8165E+00
 PARAMETER:  9.9865E-02 -2.5377E+00 -9.0462E-01  4.0074E-01 -1.0523E+00 -3.6455E-02  1.8357E+00 -8.0752E+00  1.8328E-01 -4.4026E-01
             1.1355E+00
 GRADIENT:  -7.4049E-02  1.6914E+00  9.0212E-01 -2.7979E-01 -2.2958E+00  1.3727E-01  2.6660E+00  0.0000E+00 -4.0880E-01  2.2340E-01
            -1.0869E+00

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1341.75363232007        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1333
 NPARAMETR:  9.9987E-01  7.1523E-02  3.6619E-01  1.3509E+00  3.1592E-01  8.7245E-01  5.6729E+00  1.0000E-02  1.0868E+00  5.8260E-01
             2.8165E+00
 PARAMETER:  9.9865E-02 -2.5377E+00 -9.0462E-01  4.0074E-01 -1.0523E+00 -3.6455E-02  1.8357E+00 -8.0752E+00  1.8328E-01 -4.4026E-01
             1.1355E+00
 GRADIENT:  -7.4049E-02  1.6914E+00  9.0212E-01 -2.7979E-01 -2.2958E+00  1.3727E-01  2.6660E+00  0.0000E+00 -4.0880E-01  2.2340E-01
            -1.0869E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1333
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3524E-04  2.0498E-02  1.9835E-05 -1.5641E-02  2.7468E-03
 SE:             2.8615E-02  9.6436E-03  2.3852E-04  2.6921E-02  1.8404E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7950E-01  3.3541E-02  9.3373E-01  5.6125E-01  8.8136E-01

 ETASHRINKSD(%)  4.1368E+00  6.7693E+01  9.9201E+01  9.8105E+00  3.8345E+01
 ETASHRINKVR(%)  8.1026E+00  8.9562E+01  9.9994E+01  1.8658E+01  6.1986E+01
 EBVSHRINKSD(%)  3.6755E+00  7.4276E+01  9.9197E+01  8.6291E+00  3.6491E+01
 EBVSHRINKVR(%)  7.2159E+00  9.3383E+01  9.9994E+01  1.6513E+01  5.9666E+01
 RELATIVEINF(%)  9.0107E+01  3.1637E+00  2.5183E-04  3.0532E+01  1.5300E+00
 EPSSHRINKSD(%)  3.1451E+01
 EPSSHRINKVR(%)  5.3011E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1341.7536323200677     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -606.60280575632953     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.76
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1341.754       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  7.15E-02  3.66E-01  1.35E+00  3.16E-01  8.72E-01  5.67E+00  1.00E-02  1.09E+00  5.83E-01  2.82E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.788
Stop Time:
Sat Oct  2 00:24:25 CDT 2021