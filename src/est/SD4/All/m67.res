Sat Oct  2 06:08:28 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD4/All/dat67.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]

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
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   14232.5963926385        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   4.2164E+02 -1.9130E+02 -5.8799E+02 -1.4048E+03 -2.3946E+03 -8.2502E+02 -2.6509E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -510.025596752552        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.1926E+00  1.6373E+00  2.2654E+00  2.4730E+00  1.3926E+00  1.0591E+00  1.3666E+01
 PARAMETER:  2.7615E-01  5.9302E-01  9.1777E-01  1.0054E+00  4.3118E-01  1.5741E-01  2.7149E+00
 GRADIENT:  -3.0225E+01  4.1706E+01 -1.0624E+01  7.2580E+01 -2.0168E+01  7.4709E-01  1.1962E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -552.508487524055        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  1.3204E+00  2.0189E+00  6.4359E+00  2.3510E+00  3.0161E+00  7.1388E+00  1.0458E+01
 PARAMETER:  3.7791E-01  8.0256E-01  1.9619E+00  9.5484E-01  1.2040E+00  2.0655E+00  2.4473E+00
 GRADIENT:   2.4073E+01  4.0576E+01  8.2471E-02 -1.1800E+01  1.1868E+01  9.0256E-01  4.8832E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -557.195437802121        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      205
 NPARAMETR:  1.2350E+00  1.7817E+00  5.8815E+00  2.6467E+00  3.1460E+00  6.5237E+00  9.7852E+00
 PARAMETER:  3.1110E-01  6.7759E-01  1.8718E+00  1.0733E+00  1.2461E+00  1.9754E+00  2.3809E+00
 GRADIENT:  -7.0061E+00  1.0281E-01 -3.0171E-01  2.5584E+00  1.5266E+00  6.0833E-01  1.1215E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -557.382308347140        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      321
 NPARAMETR:  1.2615E+00  1.7736E+00  5.8130E+00  2.6358E+00  3.1424E+00  5.9101E+00  9.6569E+00
 PARAMETER:  3.3230E-01  6.7300E-01  1.8601E+00  1.0692E+00  1.2450E+00  1.8767E+00  2.3677E+00
 GRADIENT:   8.7262E-02 -1.4136E-01  1.8758E-01  5.4418E-01  5.9754E-01  4.9428E-02  4.0142E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -557.403890005058        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      436
 NPARAMETR:  1.2650E+00  1.7804E+00  4.9364E+00  2.6352E+00  3.1402E+00  4.5619E+00  9.6573E+00
 PARAMETER:  3.3510E-01  6.7687E-01  1.6966E+00  1.0689E+00  1.2443E+00  1.6177E+00  2.3677E+00
 GRADIENT:   3.0198E-01  2.8680E-01 -5.6303E-02  3.5116E-01  3.1754E-01  3.0937E-02  2.5855E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -557.412187502640        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      556
 NPARAMETR:  1.2701E+00  1.7898E+00  4.2832E+00  2.6459E+00  3.1530E+00  1.6494E+00  9.6545E+00
 PARAMETER:  3.3913E-01  6.8210E-01  1.5547E+00  1.0730E+00  1.2483E+00  6.0038E-01  2.3674E+00
 GRADIENT:   8.2122E-01  8.4041E-01 -4.9875E-02  9.5589E-01  7.4615E-01  1.7516E-02  3.5514E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -557.421843759639        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      677
 NPARAMETR:  1.2667E+00  1.7816E+00  4.1946E+00  2.6393E+00  3.1492E+00  6.5872E-01  9.6690E+00
 PARAMETER:  3.3642E-01  6.7750E-01  1.5338E+00  1.0705E+00  1.2472E+00 -3.1745E-01  2.3689E+00
 GRADIENT:  -4.1927E-02 -4.8597E-02 -2.3386E-03  5.3821E-01  8.9611E-01  3.5966E-03  1.7075E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -557.423865599588        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      793
 NPARAMETR:  1.2661E+00  1.7796E+00  4.1413E+00  2.6334E+00  3.1382E+00  3.5643E-01  9.6538E+00
 PARAMETER:  3.3597E-01  6.7637E-01  1.5210E+00  1.0683E+00  1.2437E+00 -9.3162E-01  2.3673E+00
 GRADIENT:  -2.9366E-02 -3.7756E-02 -1.1027E-02  3.2659E-02  1.0754E-01  1.2434E-03  2.8738E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -557.423898797689        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      908
 NPARAMETR:  1.2661E+00  1.7795E+00  4.1409E+00  2.6330E+00  3.1368E+00  2.6867E-01  9.6503E+00
 PARAMETER:  3.3592E-01  6.7632E-01  1.5209E+00  1.0681E+00  1.2432E+00 -1.2143E+00  2.3670E+00
 GRADIENT:  -8.6289E-03 -9.6897E-03 -6.8599E-03 -1.5502E-02 -1.3193E-02  7.0683E-04 -1.0429E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -557.424505923438        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:     1029
 NPARAMETR:  1.2662E+00  1.7796E+00  4.1440E+00  2.6335E+00  3.1381E+00  1.0736E-02  9.6530E+00
 PARAMETER:  3.3598E-01  6.7641E-01  1.5217E+00  1.0683E+00  1.2436E+00 -4.4341E+00  2.3673E+00
 GRADIENT:  -1.6852E-02 -2.2729E-02 -8.9445E-04  3.2481E-02  8.7246E-02  1.1307E-06  2.2089E-01

0ITERATION NO.:   53    OBJECTIVE VALUE:  -557.426680839296        NO. OF FUNC. EVALS.:  64
 CUMULATIVE NO. OF FUNC. EVALS.:     1093
 NPARAMETR:  1.2670E+00  1.7780E+00  4.1455E+00  2.6388E+00  3.1466E+00  1.0000E-02  9.6470E+00
 PARAMETER:  3.3664E-01  6.7549E-01  1.5220E+00  1.0703E+00  1.2463E+00 -4.5228E+00  2.3666E+00
 GRADIENT:   1.9414E-01 -2.8627E-01  3.2323E-03  4.1163E-01  5.8320E-01  3.5651E-07  1.4273E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1093
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2257E-03 -1.9438E-02 -4.4399E-06
 SE:             2.8106E-02  2.7947E-02  2.7761E-06
 N:                     100         100         100

 P VAL.:         9.6521E-01  4.8672E-01  1.0975E-01

 ETASHRINKSD(%)  5.8416E+00  6.3746E+00  9.9991E+01
 ETASHRINKVR(%)  1.1342E+01  1.2343E+01  1.0000E+02
 EBVSHRINKSD(%)  4.8393E+00  4.9705E+00  9.9989E+01
 EBVSHRINKVR(%)  9.4444E+00  9.6939E+00  1.0000E+02
 RELATIVEINF(%)  7.2975E+01  8.7205E+01  9.9461E-07
 EPSSHRINKSD(%)  1.6406E+01
 EPSSHRINKVR(%)  3.0120E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -557.42668083929630     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       177.72414572444188     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    10.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -557.427       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.27E+00  1.78E+00  4.15E+00  2.64E+00  3.15E+00  1.00E-02  9.65E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       10.238
Stop Time:
Sat Oct  2 06:08:40 CDT 2021
