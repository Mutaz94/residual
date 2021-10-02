Fri Oct  1 01:08:50 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat29.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   7.66429398773970        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9565E+02  1.6338E+02  2.8710E+02  3.1255E+01  2.7489E+02 -7.7186E-01 -2.6680E+02 -2.4159E+02 -3.3620E+01 -1.9404E+02
            -6.8636E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2318.17842538901        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7250E-01  1.0667E+00  7.2942E-01  1.0976E+00  8.8746E-01  9.1618E-01  1.1651E+00  9.5827E-01  8.0623E-01  9.6735E-01
             5.2290E+00
 PARAMETER:  7.2112E-02  1.6455E-01 -2.1550E-01  1.9311E-01 -1.9394E-02  1.2463E-02  2.5285E-01  5.7375E-02 -1.1539E-01  6.6805E-02
             1.7542E+00
 GRADIENT:  -8.5830E+01 -2.1328E+01 -3.6258E+01  1.2482E+01  2.8005E+01 -2.1670E+01  5.6733E+00  9.3751E+00  7.5832E+00  1.8340E+01
             8.5337E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2372.55197661559        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.3218E-01  5.7657E-01  3.4079E-01  1.4734E+00  4.1080E-01  9.7861E-01  1.3548E+00  2.4169E-01  9.6119E-01  4.3911E-01
             4.5995E+00
 PARAMETER:  2.9776E-02 -4.5066E-01 -9.7647E-01  4.8755E-01 -7.8964E-01  7.8381E-02  4.0369E-01 -1.3201E+00  6.0412E-02 -7.2301E-01
             1.6259E+00
 GRADIENT:  -1.4430E+02  8.8044E+01 -9.9376E+01  2.9772E+02  5.1841E+01 -2.1575E+01 -1.9853E+01  9.5793E-01 -2.7631E+01 -7.7087E+00
             7.0276E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2598.72566927769        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  9.2616E-01  7.2588E-01  4.9092E-01  1.2106E+00  5.8458E-01  9.7703E-01  1.4006E+00  1.0000E-02  9.2474E-01  1.0515E+00
             3.1410E+00
 PARAMETER:  2.3291E-02 -2.2037E-01 -6.1147E-01  2.9115E-01 -4.3686E-01  7.6763E-02  4.3690E-01 -5.6125E+00  2.1755E-02  1.5018E-01
             1.2445E+00
 GRADIENT:  -1.0892E+02  3.9690E+01 -1.1757E+02  2.5976E+01  6.0248E+01 -2.0063E+01  1.7958E+01  0.0000E+00 -6.9930E+00  2.9589E+01
             2.3229E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2638.63312649783        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      451
 NPARAMETR:  9.6486E-01  4.7363E-01  4.0851E-01  1.2770E+00  4.1656E-01  1.0306E+00  1.3525E+00  1.0000E-02  9.9307E-01  8.9454E-01
             2.7366E+00
 PARAMETER:  6.4229E-02 -6.4732E-01 -7.9524E-01  3.4450E-01 -7.7573E-01  1.3017E-01  4.0199E-01 -6.9747E+00  9.3048E-02 -1.1449E-02
             1.1067E+00
 GRADIENT:  -4.2268E+00  3.4066E+00  1.7878E+01  6.1331E+01  2.4077E+01  3.0709E+00 -3.1100E+00  0.0000E+00 -1.3003E+01  5.0505E+00
             1.4658E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2654.53428071062        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      628
 NPARAMETR:  9.6846E-01  3.5840E-01  2.5165E-01  1.2278E+00  2.8243E-01  1.0236E+00  1.4463E+00  1.0000E-02  1.0920E+00  7.1790E-01
             2.5854E+00
 PARAMETER:  6.7951E-02 -9.2610E-01 -1.2797E+00  3.0524E-01 -1.1643E+00  1.2330E-01  4.6898E-01 -8.6166E+00  1.8799E-01 -2.3142E-01
             1.0499E+00
 GRADIENT:   5.2925E+00  6.6418E+01 -1.8023E+01  6.7258E+01 -2.0460E+01 -2.4361E+00 -3.5847E+00  0.0000E+00 -2.7767E+01 -2.5494E+01
            -4.2109E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2666.95993030031        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      803
 NPARAMETR:  9.6836E-01  2.6103E-01  1.8081E-01  1.0975E+00  2.2090E-01  1.0243E+00  1.4307E+00  1.0000E-02  1.2942E+00  8.2213E-01
             2.5748E+00
 PARAMETER:  6.7849E-02 -1.2431E+00 -1.6103E+00  1.9308E-01 -1.4100E+00  1.2402E-01  4.5815E-01 -1.1731E+01  3.5791E-01 -9.5854E-02
             1.0458E+00
 GRADIENT:   3.1155E+00  4.9287E-01 -4.9452E-01  2.8589E+00 -1.5429E+00 -1.1394E+00 -9.1932E-01  0.0000E+00 -2.8249E-01  1.1319E+00
            -2.5475E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2666.96727389022        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      860
 NPARAMETR:  9.6689E-01  2.6180E-01  1.8191E-01  1.0972E+00  2.2185E-01  1.0273E+00  1.4371E+00  1.0000E-02  1.2926E+00  8.1756E-01
             2.5779E+00
 PARAMETER:  6.6331E-02 -1.2402E+00 -1.6042E+00  1.9272E-01 -1.4057E+00  1.2690E-01  4.6264E-01 -1.1722E+01  3.5666E-01 -1.0144E-01
             1.0470E+00
 GRADIENT:   5.4602E-02 -5.1297E-02  1.1950E-01  3.6105E-01 -2.0291E-01 -6.5248E-02 -3.8901E-02  0.0000E+00 -4.1236E-02  1.2703E-02
            -1.1794E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      860
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0884E-03  6.3194E-03  9.9220E-05 -7.4657E-03  2.4885E-03
 SE:             2.9251E-02  2.4201E-02  2.6381E-04  2.7344E-02  2.6278E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4308E-01  7.9400E-01  7.0684E-01  7.8483E-01  9.2455E-01

 ETASHRINKSD(%)  2.0047E+00  1.8924E+01  9.9116E+01  8.3950E+00  1.1965E+01
 ETASHRINKVR(%)  3.9693E+00  3.4267E+01  9.9992E+01  1.6085E+01  2.2498E+01
 EBVSHRINKSD(%)  1.8081E+00  1.7403E+01  9.9198E+01  6.3966E+00  1.2611E+01
 EBVSHRINKVR(%)  3.5835E+00  3.1778E+01  9.9994E+01  1.2384E+01  2.3632E+01
 RELATIVEINF(%)  9.6406E+01  1.5661E+01  5.2423E-04  4.5772E+01  6.1590E+00
 EPSSHRINKSD(%)  1.9046E+01
 EPSSHRINKVR(%)  3.4465E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2666.9672738902186     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1012.8779141218079     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.73
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2666.967       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.67E-01  2.62E-01  1.82E-01  1.10E+00  2.22E-01  1.03E+00  1.44E+00  1.00E-02  1.29E+00  8.18E-01  2.58E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.793
Stop Time:
Fri Oct  1 01:09:15 CDT 2021
