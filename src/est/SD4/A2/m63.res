Sat Oct  2 00:39:11 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat63.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -653.810127364871        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8746E+02  4.5331E+01 -1.2837E+01  6.1210E+01  2.4168E+02  3.2954E+01 -8.1533E+01 -2.4679E+00 -1.5211E+02 -9.9880E+01
            -1.6983E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1330.23072115402        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.9362E-01  9.7749E-01  1.0407E+00  1.1137E+00  9.6980E-01  8.8101E-01  1.0407E+00  9.3171E-01  1.1495E+00  8.6292E-01
             3.2265E+00
 PARAMETER:  9.3604E-02  7.7230E-02  1.3989E-01  2.0765E-01  6.9331E-02 -2.6681E-02  1.3991E-01  2.9262E-02  2.3934E-01 -4.7428E-02
             1.2714E+00
 GRADIENT:  -1.3911E+02  4.7614E+00 -3.3792E+01  4.7418E+01  3.5164E+01 -4.2864E+01  4.1385E+00  6.6956E+00  4.1434E+00  2.1338E+01
            -1.4050E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1344.42510270829        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0061E+00  6.5874E-01  7.3036E-01  1.2660E+00  6.5317E-01  9.0238E-01  1.4416E+00  3.9139E-01  1.1671E+00  3.7538E-01
             3.1214E+00
 PARAMETER:  1.0612E-01 -3.1742E-01 -2.1421E-01  3.3583E-01 -3.2591E-01 -2.7153E-03  4.6574E-01 -8.3806E-01  2.5452E-01 -8.7982E-01
             1.2383E+00
 GRADIENT:  -8.8135E+01  1.1828E+01 -3.2654E+01  7.3632E+01  4.4319E+01 -3.0031E+01  6.4385E+00  2.7058E+00  2.0697E+01  5.1714E+00
            -1.7462E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1356.99777296536        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.0364E+00  4.7437E-01  3.4602E-01  1.2540E+00  3.4049E-01  9.4169E-01  1.5887E+00  3.0638E-02  1.0814E+00  2.1174E-01
             2.9535E+00
 PARAMETER:  1.3574E-01 -6.4576E-01 -9.6127E-01  3.2637E-01 -9.7736E-01  3.9926E-02  5.6292E-01 -3.3855E+00  1.7824E-01 -1.4524E+00
             1.1830E+00
 GRADIENT:  -1.5165E+01  7.7008E+01  9.7861E+01  1.4182E+02 -1.2092E+02 -1.5153E+01 -1.2766E+01 -1.0009E-02 -2.4110E+01 -5.2536E+00
             1.1524E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1369.05100180489        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      407
 NPARAMETR:  1.1066E+00  3.7929E-01  3.7202E-01  1.2740E+00  3.4603E-01  1.0259E+00  1.7567E+00  1.0000E-02  1.1209E+00  4.5753E-01
             2.7986E+00
 PARAMETER:  2.0134E-01 -8.6944E-01 -8.8881E-01  3.4218E-01 -9.6123E-01  1.2556E-01  6.6346E-01 -5.3636E+00  2.1413E-01 -6.8191E-01
             1.1291E+00
 GRADIENT:   8.0387E+01  2.2653E+01  2.4005E+01  5.0051E+01 -3.9085E+01  1.1027E+01 -7.2488E+00  0.0000E+00 -1.2322E+01 -1.3636E+00
             2.4541E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1376.74691199205        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      583
 NPARAMETR:  1.0591E+00  2.4230E-01  3.4926E-01  1.2623E+00  3.1362E-01  9.8981E-01  2.3725E+00  1.0000E-02  1.1610E+00  5.1406E-01
             2.7275E+00
 PARAMETER:  1.5745E-01 -1.3176E+00 -9.5194E-01  3.3297E-01 -1.0596E+00  8.9762E-02  9.6394E-01 -7.3794E+00  2.4927E-01 -5.6542E-01
             1.1034E+00
 GRADIENT:   3.2646E+00  7.7937E+00  1.3726E+01  2.6728E+00 -2.4323E+01  3.4750E+00 -5.9705E-01  0.0000E+00  1.1110E+00  1.2996E+00
             1.9495E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1378.09813874836        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      759
 NPARAMETR:  1.0495E+00  1.7815E-01  3.6015E-01  1.2904E+00  3.1757E-01  9.7151E-01  3.2269E+00  1.0000E-02  1.1290E+00  4.6969E-01
             2.7250E+00
 PARAMETER:  1.4828E-01 -1.6251E+00 -9.2123E-01  3.5492E-01 -1.0470E+00  7.1095E-02  1.2715E+00 -8.4098E+00  2.2135E-01 -6.5568E-01
             1.1025E+00
 GRADIENT:  -7.1587E+00  3.0224E-01  6.9394E-01  2.9433E+00 -7.8153E-01 -2.3915E+00 -2.7642E-01  0.0000E+00 -2.0107E-02  2.2566E-01
             1.8380E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1378.13416090627        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      851
 NPARAMETR:  1.0526E+00  1.7458E-01  3.5746E-01  1.2871E+00  3.1573E-01  9.7848E-01  3.2694E+00  1.0000E-02  1.1290E+00  4.6838E-01
             2.7155E+00
 PARAMETER:  1.5126E-01 -1.6454E+00 -9.2873E-01  3.5236E-01 -1.0529E+00  7.8244E-02  1.2846E+00 -8.5347E+00  2.2130E-01 -6.5848E-01
             1.0990E+00
 GRADIENT:   9.1173E-02 -2.7271E-02  2.6286E-01  1.7271E-01 -1.2210E-01  9.1626E-02 -5.4588E-02  0.0000E+00 -1.2110E-02  1.7312E-02
            -1.2202E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      851
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2954E-03  4.0753E-02 -2.3844E-04 -2.0991E-02  1.5123E-02
 SE:             2.8914E-02  1.6358E-02  2.1313E-04  2.6625E-02  1.5202E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6426E-01  1.2728E-02  2.6324E-01  4.3046E-01  3.1984E-01

 ETASHRINKSD(%)  3.1351E+00  4.5199E+01  9.9286E+01  1.0804E+01  4.9070E+01
 ETASHRINKVR(%)  6.1719E+00  6.9968E+01  9.9995E+01  2.0441E+01  7.4062E+01
 EBVSHRINKSD(%)  2.8222E+00  5.8082E+01  9.9167E+01  8.6621E+00  4.4767E+01
 EBVSHRINKVR(%)  5.5648E+00  8.2429E+01  9.9993E+01  1.6574E+01  6.9493E+01
 RELATIVEINF(%)  9.3102E+01  8.2218E+00  2.8755E-04  3.6135E+01  1.2099E+00
 EPSSHRINKSD(%)  3.2959E+01
 EPSSHRINKVR(%)  5.5054E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1378.1341609062652     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -642.98333434252697     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1378.134       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.75E-01  3.57E-01  1.29E+00  3.16E-01  9.78E-01  3.27E+00  1.00E-02  1.13E+00  4.68E-01  2.72E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.004
Stop Time:
Sat Oct  2 00:39:23 CDT 2021