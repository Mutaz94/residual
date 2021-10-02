Fri Oct  1 23:13:16 CDT 2021
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
$DATA ../../../../data/SD4/B/dat16.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m16.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1671.24330389023        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4060E+02 -7.8654E+01 -5.7228E+01 -4.6285E+00  1.0894E+02  6.9389E+01 -5.5399E+00  7.2932E+00  2.9575E+01 -1.4954E+01
            -6.3726E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1686.34308518062        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0462E+00  1.1140E+00  1.0777E+00  9.8823E-01  1.0063E+00  8.5852E-01  1.0144E+00  9.6406E-01  8.6144E-01  1.0316E+00
             1.3160E+00
 PARAMETER:  1.4520E-01  2.0797E-01  1.7483E-01  8.8159E-02  1.0626E-01 -5.2543E-02  1.1427E-01  6.3403E-02 -4.9145E-02  1.3107E-01
             3.7460E-01
 GRADIENT:   9.7323E+00 -2.6132E+01 -9.4671E+00 -1.7954E+01  3.8273E+00 -2.3636E+01 -5.5808E+00  4.7576E+00  5.1710E+00 -2.5678E-01
             5.0314E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1688.86761138674        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  1.0435E+00  1.2500E+00  1.1589E+00  9.1416E-01  1.1211E+00  9.0355E-01  1.1173E+00  8.5643E-01  6.9037E-01  1.2508E+00
             1.2649E+00
 PARAMETER:  1.4260E-01  3.2313E-01  2.4745E-01  1.0248E-02  2.1435E-01 -1.4276E-03  2.1094E-01 -5.4979E-02 -2.7053E-01  3.2375E-01
             3.3499E-01
 GRADIENT:   3.1217E+00 -3.0458E+00 -1.6748E+00 -7.3369E+00  4.1212E-01 -2.7252E+00  9.1876E-01  9.0100E-01 -6.8658E+00  8.4044E+00
             3.2578E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1692.38917675803        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  1.0399E+00  9.4763E-01  1.0853E+00  1.1030E+00  9.5393E-01  9.1002E-01  1.2831E+00  3.5315E-01  7.5632E-01  1.1094E+00
             1.1566E+00
 PARAMETER:  1.3913E-01  4.6211E-02  1.8184E-01  1.9805E-01  5.2832E-02  5.7086E-03  3.4928E-01 -9.4087E-01 -1.7929E-01  2.0381E-01
             2.4551E-01
 GRADIENT:  -2.1111E+00 -3.4371E-01 -4.0672E+00  3.3532E+00  3.7208E+00 -4.1546E-01  2.2553E-01  3.2721E-01  6.1609E-01  1.0811E+00
             4.4210E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1692.46865458939        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  1.0401E+00  8.8727E-01  1.1161E+00  1.1405E+00  9.4246E-01  9.1014E-01  1.3396E+00  1.8875E-01  7.4218E-01  1.1186E+00
             1.1591E+00
 PARAMETER:  1.3933E-01 -1.9608E-02  2.0988E-01  2.3148E-01  4.0742E-02  5.8441E-03  3.9240E-01 -1.5673E+00 -1.9816E-01  2.1208E-01
             2.4760E-01
 GRADIENT:  -2.1819E-02  5.1344E-02 -5.6635E-01  1.1711E+00  3.2331E-01 -9.6207E-02 -1.8941E-01  5.0079E-02  9.6129E-02  3.2260E-01
             4.7193E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1692.47039116102        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  1.0400E+00  8.7154E-01  1.1200E+00  1.1494E+00  9.3834E-01  9.1029E-01  1.3598E+00  1.4407E-01  7.3804E-01  1.1186E+00
             1.1583E+00
 PARAMETER:  1.3922E-01 -3.7494E-02  2.1335E-01  2.3920E-01  3.6358E-02  6.0106E-03  4.0731E-01 -1.8375E+00 -2.0376E-01  2.1204E-01
             2.4698E-01
 GRADIENT:   6.3040E-02 -4.8882E-01 -1.3602E-01 -4.0663E-01  8.4347E-02  2.3459E-02 -4.3607E-02  2.4858E-02  1.1505E-01  1.4089E-01
             1.2514E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1692.47467487637        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1056
 NPARAMETR:  1.0399E+00  8.6447E-01  1.1185E+00  1.1530E+00  9.3551E-01  9.1012E-01  1.3706E+00  6.8060E-02  7.3535E-01  1.1180E+00
             1.1581E+00
 PARAMETER:  1.3915E-01 -4.5642E-02  2.1195E-01  2.4236E-01  3.3334E-02  5.8253E-03  4.1528E-01 -2.5874E+00 -2.0741E-01  2.1152E-01
             2.4677E-01
 GRADIENT:  -1.9305E-02 -8.5108E-01 -1.0667E-01 -1.2438E+00  3.4346E-01 -3.1241E-02  7.5051E-02  5.0821E-03  3.1879E-02  1.9214E-02
             5.1190E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1692.51180984678        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1235
 NPARAMETR:  1.0406E+00  9.3573E-01  1.0857E+00  1.1092E+00  9.4814E-01  9.1085E-01  1.2890E+00  1.0000E-02  7.5471E-01  1.1144E+00
             1.1581E+00
 PARAMETER:  1.3980E-01  3.3576E-02  1.8226E-01  2.0362E-01  4.6748E-02  6.6184E-03  3.5388E-01 -8.0461E+00 -1.8142E-01  2.0830E-01
             2.4677E-01
 GRADIENT:   7.2065E-03  4.2383E-02  2.4054E-02  6.4157E-02 -2.9191E-02  3.4030E-03 -7.2643E-03  0.0000E+00 -7.0379E-03 -9.5240E-03
            -6.9749E-03

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1692.51180984678        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1257
 NPARAMETR:  1.0406E+00  9.3573E-01  1.0857E+00  1.1092E+00  9.4814E-01  9.1085E-01  1.2890E+00  1.0000E-02  7.5471E-01  1.1144E+00
             1.1581E+00
 PARAMETER:  1.3980E-01  3.3576E-02  1.8226E-01  2.0362E-01  4.6748E-02  6.6184E-03  3.5388E-01 -8.0461E+00 -1.8142E-01  2.0830E-01
             2.4677E-01
 GRADIENT:   7.2065E-03  4.2383E-02  2.4054E-02  6.4157E-02 -2.9191E-02  3.4030E-03 -7.2643E-03  0.0000E+00 -7.0379E-03 -9.5240E-03
            -6.9749E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1257
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1287E-04  2.6545E-03 -2.7014E-04 -1.1960E-02 -1.9899E-02
 SE:             2.9759E-02  2.0742E-02  1.3065E-04  2.1935E-02  2.3937E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8893E-01  8.9817E-01  3.8673E-02  5.8559E-01  4.0580E-01

 ETASHRINKSD(%)  3.0338E-01  3.0512E+01  9.9562E+01  2.6514E+01  1.9807E+01
 ETASHRINKVR(%)  6.0584E-01  5.1714E+01  9.9998E+01  4.5999E+01  3.5691E+01
 EBVSHRINKSD(%)  6.5267E-01  3.0865E+01  9.9582E+01  2.6375E+01  1.6917E+01
 EBVSHRINKVR(%)  1.3011E+00  5.2204E+01  9.9998E+01  4.5793E+01  3.0973E+01
 RELATIVEINF(%)  9.7699E+01  1.8268E+00  1.8395E-04  2.1430E+00  8.0075E+00
 EPSSHRINKSD(%)  4.1227E+01
 EPSSHRINKVR(%)  6.5458E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1692.5118098467781     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -957.36098328303990     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1692.512       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  9.36E-01  1.09E+00  1.11E+00  9.48E-01  9.11E-01  1.29E+00  1.00E-02  7.55E-01  1.11E+00  1.16E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       15.513
Stop Time:
Fri Oct  1 23:13:33 CDT 2021
