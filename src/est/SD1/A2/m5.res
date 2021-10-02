Fri Oct  1 00:22:14 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat5.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m5.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2352.68912689991        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1839E+02  2.1052E+02  1.8952E+02  7.6930E+01  2.0659E+02  3.1437E+01 -1.4843E+02 -4.9280E+01  7.5296E-01 -1.4372E+02
            -2.5339E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3090.67817467566        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.7279E-01  6.0836E-01  5.8061E-01  1.1747E+00  5.2094E-01  9.1133E-01  1.2002E+00  6.9174E-01  9.8108E-01  1.2261E+00
             1.6864E+00
 PARAMETER:  7.2412E-02 -3.9698E-01 -4.4368E-01  2.6102E-01 -5.5212E-01  7.1510E-03  2.8251E-01 -2.6854E-01  8.0897E-02  3.0385E-01
             6.2262E-01
 GRADIENT:   1.9981E+02  1.4266E+02  8.1801E+01  1.2390E+02  7.9215E+01 -1.4497E+01 -5.5397E+00  1.9161E+01 -2.1301E+01  5.5319E+01
            -1.1132E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3102.18174550948        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      249
 NPARAMETR:  9.8511E-01  5.2748E-01  5.0921E-01  1.2285E+00  4.9443E-01  9.1746E-01  1.3055E+00  5.3957E-01  1.1430E+00  1.1891E+00
             1.6648E+00
 PARAMETER:  8.4999E-02 -5.3965E-01 -5.7489E-01  3.0580E-01 -6.0435E-01  1.3850E-02  3.6656E-01 -5.1699E-01  2.3368E-01  2.7322E-01
             6.0970E-01
 GRADIENT:   9.8354E+01  2.8974E+01  1.4576E+01  7.2425E+01 -6.1361E-02 -2.4769E+01  8.4518E+00  1.1651E+01  2.0063E+01  5.5641E+01
            -1.2996E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3130.21846938845        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      428
 NPARAMETR:  9.3596E-01  4.2124E-01  4.0611E-01  1.2705E+00  4.0748E-01  9.5726E-01  1.2250E+00  1.8286E-01  1.1234E+00  8.2744E-01
             1.7104E+00
 PARAMETER:  3.3820E-02 -7.6455E-01 -8.0113E-01  3.3941E-01 -7.9777E-01  5.6318E-02  3.0294E-01 -1.5990E+00  2.1640E-01 -8.9414E-02
             6.3673E-01
 GRADIENT:  -3.2720E+01 -2.9944E+00 -6.7920E+00  1.2529E+02  4.7003E+01 -5.3730E+00  1.9321E+00  1.1371E+00  2.7781E+00  4.3803E+00
            -6.3011E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3141.97606079938        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      603
 NPARAMETR:  9.4916E-01  3.4570E-01  3.1435E-01  1.1526E+00  3.2460E-01  9.6793E-01  1.2190E+00  8.5269E-02  1.1283E+00  7.3989E-01
             1.7485E+00
 PARAMETER:  4.7823E-02 -9.6217E-01 -1.0573E+00  2.4204E-01 -1.0252E+00  6.7407E-02  2.9804E-01 -2.3619E+00  2.2068E-01 -2.0126E-01
             6.5875E-01
 GRADIENT:   1.2897E-01 -7.5485E-01 -8.8820E-01  8.7874E-01  5.8717E-01  1.2347E-02 -2.8711E-01  1.3345E-01  1.2543E-01  1.5327E-01
             1.1977E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3142.03493995412        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      781
 NPARAMETR:  9.4904E-01  3.4579E-01  3.1455E-01  1.1523E+00  3.2470E-01  9.6790E-01  1.2209E+00  2.5757E-02  1.1279E+00  7.4121E-01
             1.7481E+00
 PARAMETER:  4.7699E-02 -9.6193E-01 -1.0566E+00  2.4172E-01 -1.0248E+00  6.7377E-02  2.9957E-01 -3.5591E+00  2.2039E-01 -1.9947E-01
             6.5852E-01
 GRADIENT:  -1.3323E-01 -8.3836E-01 -4.0443E-01  2.9545E-01  3.7407E-03 -2.3007E-03 -3.6747E-02  1.2149E-02  3.9881E-02  9.1726E-02
             2.9832E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3142.03963343510        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      962
 NPARAMETR:  9.4923E-01  3.4712E-01  3.1552E-01  1.1522E+00  3.2510E-01  9.6795E-01  1.2208E+00  1.0000E-02  1.1275E+00  7.4168E-01
             1.7480E+00
 PARAMETER:  4.7891E-02 -9.5807E-01 -1.0535E+00  2.4168E-01 -1.0236E+00  6.7422E-02  2.9953E-01 -5.1865E+00  2.1998E-01 -1.9884E-01
             6.5846E-01
 GRADIENT:   3.3403E-01  1.4602E+00  2.0660E+00 -4.1895E-01 -4.5738E+00  2.1791E-02  8.2497E-02  0.0000E+00  7.0896E-02 -1.9173E-02
            -1.5124E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -3142.03963343510        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      984
 NPARAMETR:  9.4923E-01  3.4712E-01  3.1552E-01  1.1522E+00  3.2510E-01  9.6795E-01  1.2208E+00  1.0000E-02  1.1275E+00  7.4168E-01
             1.7480E+00
 PARAMETER:  4.7891E-02 -9.5807E-01 -1.0535E+00  2.4168E-01 -1.0236E+00  6.7422E-02  2.9953E-01 -5.1865E+00  2.1998E-01 -1.9884E-01
             6.5846E-01
 GRADIENT:   3.3403E-01  1.4602E+00  2.0660E+00 -4.1895E-01 -4.5738E+00  2.1791E-02  8.2497E-02  0.0000E+00  7.0896E-02 -1.9173E-02
            -1.5124E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      984
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0568E-03  4.5336E-04 -1.0335E-04 -2.3418E-03 -2.8023E-04
 SE:             2.9635E-02  2.4149E-02  2.9066E-04  2.8988E-02  2.6215E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7155E-01  9.8502E-01  7.2217E-01  9.3561E-01  9.9147E-01

 ETASHRINKSD(%)  7.1848E-01  1.9099E+01  9.9026E+01  2.8860E+00  1.2178E+01
 ETASHRINKVR(%)  1.4318E+00  3.4550E+01  9.9991E+01  5.6887E+00  2.2873E+01
 EBVSHRINKSD(%)  8.9669E-01  1.7604E+01  9.9000E+01  2.4592E+00  1.2356E+01
 EBVSHRINKVR(%)  1.7853E+00  3.2110E+01  9.9990E+01  4.8578E+00  2.3185E+01
 RELATIVEINF(%)  9.8208E+01  1.6723E+01  9.4059E-04  8.0827E+01  6.9545E+00
 EPSSHRINKSD(%)  2.0208E+01
 EPSSHRINKVR(%)  3.6333E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3142.0396334351040     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1487.9502736666932     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3142.040       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.49E-01  3.47E-01  3.16E-01  1.15E+00  3.25E-01  9.68E-01  1.22E+00  1.00E-02  1.13E+00  7.42E-01  1.75E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.273
Stop Time:
Fri Oct  1 00:22:43 CDT 2021
