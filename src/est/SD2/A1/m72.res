Fri Oct  1 09:34:29 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat72.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m72.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1869.55864279370        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7646E+02  4.5656E+01  3.8863E+01  4.9275E+01  4.8913E+00  6.5860E+01 -1.0419E+01 -5.6570E-01  1.9975E+01 -5.4039E+00
            -5.4773E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1911.82797228410        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1091E+00  1.0103E+00  8.9918E-01  1.0347E+00  9.8326E-01  1.1132E+00  1.0884E+00  8.9172E-01  8.1916E-01  8.2416E-01
             2.3548E+00
 PARAMETER:  2.0355E-01  1.1023E-01 -6.2682E-03  1.3408E-01  8.3118E-02  2.0724E-01  1.8470E-01 -1.4607E-02 -9.9473E-02 -9.3388E-02
             9.5646E-01
 GRADIENT:   2.5655E+02 -4.9464E+00 -2.4476E+01  3.0090E+01  2.4656E+01  6.2955E+01 -2.2726E+00  7.3912E+00 -2.7141E+00  1.4840E+01
             2.5898E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1934.76434348156        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0749E+00  7.0008E-01  4.4785E-01  1.1786E+00  5.0765E-01  1.0659E+00  1.8100E+00  3.1159E-01  9.7553E-01  2.2387E-01
             2.1174E+00
 PARAMETER:  1.7225E-01 -2.5656E-01 -7.0329E-01  2.6436E-01 -5.7797E-01  1.6387E-01  6.9334E-01 -1.0661E+00  7.5221E-02 -1.3967E+00
             8.5020E-01
 GRADIENT:   1.9449E+02  7.2165E+01  2.1663E+01  1.4897E+02 -3.8850E+01  4.9209E+01  3.0942E+01  1.1037E+00  5.1524E+01  3.5659E-01
             2.2253E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1986.09948974609        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      317
 NPARAMETR:  1.0241E+00  5.3203E-01  4.8102E-01  1.2174E+00  4.9484E-01  9.5955E-01  1.9594E+00  7.4594E-02  7.0067E-01  7.1394E-01
             1.4160E+00
 PARAMETER:  1.2380E-01 -5.3106E-01 -6.3186E-01  2.9673E-01 -6.0353E-01  5.8713E-02  7.7265E-01 -2.4957E+00 -2.5572E-01 -2.3695E-01
             4.4786E-01
 GRADIENT:  -5.0880E+01  2.8920E+01 -1.9374E+01  5.3787E+01 -2.1581E+01 -3.7005E+00  6.6669E+00  1.5864E-01 -3.0577E+01  2.8188E+01
            -3.1655E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1993.58212329160        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      493
 NPARAMETR:  1.0462E+00  5.4779E-01  5.0598E-01  1.1934E+00  5.2514E-01  9.6620E-01  1.8210E+00  1.0200E-01  7.7248E-01  5.5184E-01
             1.4836E+00
 PARAMETER:  1.4515E-01 -5.0187E-01 -5.8126E-01  2.7680E-01 -5.4409E-01  6.5615E-02  6.9940E-01 -2.1827E+00 -1.5815E-01 -4.9449E-01
             4.9446E-01
 GRADIENT:  -5.4645E-01  5.0735E+00  1.2038E+00  3.1671E+00 -1.0770E+00  1.5929E-01 -1.9589E-01  2.9445E-02 -1.0822E+00  1.7545E-01
            -7.1069E-03

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1993.86309604380        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      671             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0458E+00  4.7990E-01  4.9444E-01  1.2164E+00  5.0011E-01  9.6465E-01  1.9831E+00  3.2296E-02  7.6901E-01  5.5589E-01
             1.4799E+00
 PARAMETER:  1.4474E-01 -6.3419E-01 -6.0432E-01  2.9593E-01 -5.9293E-01  6.4010E-02  7.8466E-01 -3.3328E+00 -1.6265E-01 -4.8718E-01
             4.9195E-01
 GRADIENT:   2.7894E+02  3.1198E+01  2.3968E+01  1.8899E+02  5.5920E+01  1.9849E+01  1.5210E+01  1.3076E-02  8.9515E+00  1.2572E+00
             4.8370E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1993.86367593944        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      829
 NPARAMETR:  1.0458E+00  4.8025E-01  4.9448E-01  1.2163E+00  5.0006E-01  9.6464E-01  1.9840E+00  1.2693E-02  7.6894E-01  5.5673E-01
             1.4800E+00
 PARAMETER:  1.4474E-01 -6.3346E-01 -6.0426E-01  2.9584E-01 -5.9303E-01  6.4004E-02  7.8514E-01 -4.2667E+00 -1.6275E-01 -4.8568E-01
             4.9203E-01
 GRADIENT:   1.3638E+00  1.8532E-01  5.2711E-01 -1.6051E+00 -9.8804E-01  4.8966E-02  2.3549E-01  2.5262E-04  4.5168E-02 -3.3438E-02
             2.7971E-03

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1993.86380283989        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:      960
 NPARAMETR:  1.0458E+00  4.8019E-01  4.9441E-01  1.2163E+00  5.0012E-01  9.6464E-01  1.9831E+00  1.0000E-02  7.6893E-01  5.5700E-01
             1.4800E+00
 PARAMETER:  1.4474E-01 -6.3357E-01 -6.0440E-01  2.9581E-01 -5.9291E-01  6.4003E-02  7.8465E-01 -4.8085E+00 -1.6275E-01 -4.8519E-01
             4.9202E-01
 GRADIENT:   1.3677E+00 -1.5993E-02 -4.2918E-02 -1.5148E+00 -2.1862E-01  4.7971E-02  1.7523E-01  0.0000E+00  3.7065E-02  1.9786E-02
             2.2270E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      960
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3492E-03  3.3250E-02 -5.2504E-04 -2.0941E-02  1.7165E-02
 SE:             2.9770E-02  2.1043E-02  2.5405E-04  2.6501E-02  1.8839E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6385E-01  1.1408E-01  3.8768E-02  4.2940E-01  3.6223E-01

 ETASHRINKSD(%)  2.6733E-01  2.9505E+01  9.9149E+01  1.1220E+01  3.6886E+01
 ETASHRINKVR(%)  5.3394E-01  5.0304E+01  9.9993E+01  2.1181E+01  6.0166E+01
 EBVSHRINKSD(%)  7.5066E-01  3.0934E+01  9.9139E+01  1.0619E+01  3.5058E+01
 EBVSHRINKVR(%)  1.4957E+00  5.2299E+01  9.9993E+01  2.0111E+01  5.7826E+01
 RELATIVEINF(%)  9.8052E+01  1.1461E+01  5.9705E-04  3.0299E+01  2.9007E+00
 EPSSHRINKSD(%)  3.1239E+01
 EPSSHRINKVR(%)  5.2719E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1993.8638028398889     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1074.9252696352162     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.07
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1993.864       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  4.80E-01  4.94E-01  1.22E+00  5.00E-01  9.65E-01  1.98E+00  1.00E-02  7.69E-01  5.57E-01  1.48E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.116
Stop Time:
Fri Oct  1 09:34:45 CDT 2021
