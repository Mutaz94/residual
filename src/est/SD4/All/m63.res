Sat Oct  2 06:08:08 CDT 2021
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
$DATA ../../../../data/SD4/All/dat63.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:   13566.6213985368        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   5.0262E+02 -9.6978E+00 -3.2732E+02 -1.3376E+03 -2.7541E+03 -1.0070E+03 -2.4540E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -564.698487337428        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.2013E+00  1.4822E+00  2.7528E+00  2.0419E+00  1.1626E+00  1.0922E+00  1.4749E+01
 PARAMETER:  2.8338E-01  4.9355E-01  1.1126E+00  8.1387E-01  2.5067E-01  1.8816E-01  2.7912E+00
 GRADIENT:  -6.2864E+01  3.3736E+01 -3.9801E+00  6.8889E+01  1.1774E+01  3.0250E-01  1.4231E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -587.905402504852        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      110
 NPARAMETR:  1.3106E+00  1.3533E+00  6.1643E+00  1.3817E+00  8.6816E-01  1.1137E+01  1.4569E+01
 PARAMETER:  3.7048E-01  4.0255E-01  1.9188E+00  4.2335E-01 -4.1381E-02  2.5103E+00  2.7789E+00
 GRADIENT:   1.0994E+01  1.4156E+01 -7.4078E+00  3.6688E+00  2.1865E+01  1.6105E+01  8.8673E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -602.314690674313        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      163
 NPARAMETR:  1.1395E+00  1.1288E+00  5.3806E+01  1.2093E+00  3.3659E-01  1.9144E+01  1.2664E+01
 PARAMETER:  2.3061E-01  2.2114E-01  4.0854E+00  2.9008E-01 -9.8890E-01  3.0520E+00  2.6387E+00
 GRADIENT:  -9.3301E+00  3.1269E+01  1.8128E-01 -2.9645E+00  8.2140E-01 -8.2363E-02 -1.5412E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -603.149023719742        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      214
 NPARAMETR:  1.1274E+00  1.0935E+00  1.0292E+02  1.1878E+00  1.7772E-01  2.4518E+01  1.2882E+01
 PARAMETER:  2.1996E-01  1.8934E-01  4.7339E+00  2.7208E-01 -1.6275E+00  3.2994E+00  2.6559E+00
 GRADIENT:  -5.0729E+00  2.1660E+00  9.3934E-02  1.2098E-01  3.5053E-01  8.1308E-01  4.1892E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -603.819260497563        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:      319
 NPARAMETR:  1.1686E+00  1.1232E+00  1.0240E+02  1.1988E+00  1.4503E-01  2.4561E+01  1.3373E+01
 PARAMETER:  2.5578E-01  2.1622E-01  4.7289E+00  2.8130E-01 -1.8308E+00  3.3012E+00  2.6932E+00
 GRADIENT:   1.2887E+00 -4.7846E-01  2.4052E-02  6.4840E-01  3.6311E-02  5.9878E-02  7.5205E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -603.827733329579        NO. OF FUNC. EVALS.: 122
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  1.1670E+00  1.1226E+00  9.7905E+01  1.1963E+00  1.1757E-01  2.4799E+01  1.3360E+01
 PARAMETER:  2.5445E-01  2.1564E-01  4.6840E+00  2.7923E-01 -2.0407E+00  3.3108E+00  2.6922E+00
 GRADIENT:   4.7346E-01  1.8824E+00  1.5583E-02  2.0418E-01 -2.6126E-03  8.0874E-02 -1.2014E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -603.828922678174        NO. OF FUNC. EVALS.:  89
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.1667E+00  1.1216E+00  9.4081E+01  1.1953E+00  1.1478E-01  2.4610E+01  1.3372E+01
 PARAMETER:  2.5427E-01  2.1484E-01  4.6394E+00  2.7854E-01 -2.0443E+00  3.3049E+00  2.6932E+00
 GRADIENT:   3.0095E-01  4.5719E-01 -2.4247E-01  1.9894E-01  5.5167E-03  1.9120E-01  1.5221E-02
 NUMSIGDIG:         3.0         2.9         2.3         2.6         1.4         2.6         5.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      530
 NO. OF SIG. DIGITS IN FINAL EST.:  1.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1692E-02 -4.7176E-03 -1.7593E-03
 SE:             2.7364E-02  3.2091E-03  1.5508E-03
 N:                     100         100         100

 P VAL.:         6.6917E-01  1.4155E-01  2.5659E-01

 ETASHRINKSD(%)  8.3270E+00  8.9249E+01  9.4805E+01
 ETASHRINKVR(%)  1.5961E+01  9.8844E+01  9.9730E+01
 EBVSHRINKSD(%)  8.1288E+00  8.9727E+01  9.6789E+01
 EBVSHRINKVR(%)  1.5597E+01  9.8945E+01  9.9897E+01
 RELATIVEINF(%)  4.2821E+01  5.0049E-01  5.6556E-02
 EPSSHRINKSD(%)  3.7773E+00
 EPSSHRINKVR(%)  7.4119E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -603.82892267817363     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       131.32190388556455     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     4.58
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -603.829       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.17E+00  1.12E+00  9.36E+01  1.20E+00  1.17E-01  2.47E+01  1.34E+01
 


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
 #CPUT: Total CPU Time in Seconds,        4.624
Stop Time:
Sat Oct  2 06:08:14 CDT 2021
