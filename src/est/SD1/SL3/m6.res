Fri Oct  1 03:32:33 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat6.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      986
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

 TOT. NO. OF OBS RECS:      886
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -836.783777254212        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4372E+02  1.4078E+02  4.1147E+00  1.2736E+02  3.0047E+02  6.1499E+01 -1.4614E+02 -2.2036E+02 -1.0269E+02 -7.6864E+01
            -5.4485E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2590.62361438587        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0810E+00  1.0191E+00  1.4659E+00  1.1057E+00  8.9920E-01  8.3879E-01  1.3469E+00  1.0297E+00  1.0026E+00  1.1516E+00
             3.9492E+00
 PARAMETER:  1.7786E-01  1.1891E-01  4.8246E-01  2.0046E-01 -6.2546E-03 -7.5793E-02  3.9781E-01  1.2928E-01  1.0257E-01  2.4112E-01
             1.4735E+00
 GRADIENT:   1.6079E+02  5.5688E+01  3.2509E+01  2.5224E+01 -1.0780E+02 -4.2227E+01  2.2104E+01  4.7325E+00  2.8965E+01  1.4667E+01
             6.5392E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2653.00371494557        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0505E+00  1.2197E+00  1.2609E+01  1.0127E+00  2.0832E+00  1.2175E+00  7.5155E-01  4.6380E+00  1.0964E+00  2.3136E+00
             3.4793E+00
 PARAMETER:  1.4923E-01  2.9862E-01  2.6344E+00  1.1266E-01  8.3390E-01  2.9681E-01 -1.8562E-01  1.6343E+00  1.9199E-01  9.3881E-01
             1.3468E+00
 GRADIENT:   8.1444E+01  6.4027E-01 -8.8536E+00  1.8784E+01  5.8971E+01  8.5736E+01  6.3595E+00  2.3876E+01  2.3503E+01  5.1711E+01
             5.3631E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2770.60646252818        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.9398E-01  1.0054E+00  2.7047E+00  1.0984E+00  1.1806E+00  9.5726E-01  1.2112E+00  2.6634E+00  7.4694E-01  1.2545E+00
             2.5493E+00
 PARAMETER:  9.3958E-02  1.0541E-01  1.0950E+00  1.9381E-01  2.6600E-01  5.6318E-02  2.9157E-01  1.0796E+00 -1.9176E-01  3.2677E-01
             1.0358E+00
 GRADIENT:   1.3345E+01  3.1919E+01  1.9103E+00  4.7785E+01 -1.6662E+01  6.3962E+00  1.9733E+00  5.3460E-01 -8.1663E+00  7.8718E+00
             3.4812E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2774.84195591958        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      387
 NPARAMETR:  1.0206E+00  9.2737E-01  4.9387E+00  1.1677E+00  1.3827E+00  9.6318E-01  1.2312E+00  3.2998E+00  7.7414E-01  1.3539E+00
             2.5321E+00
 PARAMETER:  1.2044E-01  2.4602E-02  1.6971E+00  2.5502E-01  4.2404E-01  6.2487E-02  3.0802E-01  1.2939E+00 -1.5601E-01  4.0301E-01
             1.0290E+00
 GRADIENT:   5.3083E+00  1.1468E+01  3.6276E+00  1.2644E+01  1.2469E+01  1.5745E+00  9.0739E-01 -2.3723E+00  1.5594E+00  3.4475E+00
             2.1991E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2776.41229476803        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      563
 NPARAMETR:  1.0170E+00  7.2105E-01  5.0663E+00  1.2934E+00  1.2602E+00  9.5948E-01  1.3468E+00  3.4651E+00  7.4241E-01  1.1749E+00
             2.5105E+00
 PARAMETER:  1.1682E-01 -2.2704E-01  1.7226E+00  3.5731E-01  3.3124E-01  5.8635E-02  3.9775E-01  1.3427E+00 -1.9785E-01  2.6118E-01
             1.0205E+00
 GRADIENT:  -1.2626E+00  1.5034E+00  2.5192E+00  1.8642E+00 -3.8024E+00  1.8320E-01 -1.4605E+00 -1.2812E+00 -7.5632E-01 -5.2282E-01
            -4.8867E+00

0ITERATION NO.:   29    OBJECTIVE VALUE:  -2776.49016529982        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      690
 NPARAMETR:  1.0176E+00  7.1907E-01  4.9129E+00  1.2924E+00  1.2617E+00  9.5948E-01  1.4172E+00  3.4357E+00  7.2969E-01  1.1803E+00
             2.5159E+00
 PARAMETER:  1.1748E-01 -2.2980E-01  1.6919E+00  3.5646E-01  3.3243E-01  5.8637E-02  4.4865E-01  1.3342E+00 -2.1514E-01  2.6579E-01
             1.0226E+00
 GRADIENT:   1.9186E-01 -3.0733E-01 -2.7496E-01  1.7607E-02  6.5660E-01  2.3701E-01 -1.3563E-01  1.2577E-02 -1.1333E-02  4.9439E-02
            -1.0053E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      690
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7667E-03 -7.3853E-03 -4.2465E-02 -3.4947E-03 -4.1346E-02
 SE:             2.9424E-02  1.7900E-02  2.0989E-02  2.3449E-02  2.1390E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5212E-01  6.7991E-01  4.3049E-02  8.8153E-01  5.3236E-02

 ETASHRINKSD(%)  1.4264E+00  4.0033E+01  2.9686E+01  2.1443E+01  2.8342E+01
 ETASHRINKVR(%)  2.8325E+00  6.4039E+01  5.0559E+01  3.8288E+01  4.8651E+01
 EBVSHRINKSD(%)  1.5819E+00  4.1179E+01  3.1192E+01  2.2385E+01  2.6023E+01
 EBVSHRINKVR(%)  3.1388E+00  6.5401E+01  5.2654E+01  3.9759E+01  4.5274E+01
 RELATIVEINF(%)  9.6789E+01  4.8410E+00  2.4321E+01  8.7360E+00  3.3162E+01
 EPSSHRINKSD(%)  1.7766E+01
 EPSSHRINKVR(%)  3.2375E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2776.4901652998246     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1148.1310844611446     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.75
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2776.490       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  7.19E-01  4.91E+00  1.29E+00  1.26E+00  9.59E-01  1.42E+00  3.44E+00  7.30E-01  1.18E+00  2.52E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.819
Stop Time:
Fri Oct  1 03:32:51 CDT 2021