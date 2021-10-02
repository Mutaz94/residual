Fri Oct  1 01:22:35 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat63.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1291.96588139419        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6939E+02  1.9938E+02  2.2428E+02 -2.2185E+01  3.5838E+02  3.2140E+01 -2.1910E+02 -2.1966E+02 -7.7125E+01 -1.7470E+02
            -4.4822E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2774.64717806738        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0528E+00  8.1687E-01  7.5616E-01  1.3576E+00  6.7708E-01  9.1104E-01  1.0316E+00  9.5132E-01  1.2185E+00  7.8453E-01
             3.3976E+00
 PARAMETER:  1.5145E-01 -1.0228E-01 -1.7950E-01  4.0574E-01 -2.8996E-01  6.8354E-03  1.3109E-01  5.0096E-02  2.9765E-01 -1.4267E-01
             1.3231E+00
 GRADIENT:   4.8543E+01  8.0434E+01  1.3760E+01  1.8946E+02 -4.3149E+01 -1.7586E+01  3.1680E+00  1.5247E+01  3.4825E+01  9.7889E+00
             5.6478E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2785.26356151796        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:      184
 NPARAMETR:  1.0607E+00  5.6106E-01  4.2982E-01  1.4675E+00  3.9460E-01  9.6899E-01  1.1587E+00  7.6851E-01  1.1630E+00  6.1187E-01
             3.2331E+00
 PARAMETER:  1.5895E-01 -4.7793E-01 -7.4438E-01  4.8354E-01 -8.2987E-01  6.8501E-02  2.4730E-01 -1.6331E-01  2.5101E-01 -3.9124E-01
             1.2734E+00
 GRADIENT:   1.7271E+01  1.9273E+02  6.6224E+01  2.3094E+02 -2.4335E+02 -2.0397E-01 -1.9040E+01  1.7321E+01 -7.4645E+00 -1.1060E+01
             5.1595E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2856.54793150941        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      361
 NPARAMETR:  1.0443E+00  3.7638E-01  2.7895E-01  1.5306E+00  2.5307E-01  9.8673E-01  1.3134E+00  8.1878E-02  1.4030E+00  7.9064E-01
             2.6479E+00
 PARAMETER:  1.4330E-01 -8.7717E-01 -1.1767E+00  5.2565E-01 -1.2741E+00  8.6637E-02  3.7261E-01 -2.4025E+00  4.3862E-01 -1.3491E-01
             1.0738E+00
 GRADIENT:   6.4559E+00  1.4894E+02  2.0455E+02  2.6851E+02 -4.2891E+02  4.1717E+00  7.0707E+00  5.3384E-02 -1.3229E+01 -3.2682E+01
             3.0516E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2985.09474516084        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      537
 NPARAMETR:  1.0350E+00  2.4441E-01  1.6806E-01  1.0829E+00  2.0510E-01  9.8470E-01  1.3134E+00  1.2022E-01  1.3581E+00  7.9870E-01
             2.1241E+00
 PARAMETER:  1.3444E-01 -1.3089E+00 -1.6834E+00  1.7967E-01 -1.4842E+00  8.4582E-02  3.7260E-01 -2.0185E+00  4.0612E-01 -1.2477E-01
             8.5333E-01
 GRADIENT:   2.4865E-01 -1.1652E+01  4.1292E+01  3.7850E+01 -4.3982E+01  2.9178E+00  3.5635E+00 -5.8733E-01 -5.2638E+00  5.9381E+00
             6.0498E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2994.63079774197        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      715
 NPARAMETR:  1.0391E+00  2.1694E-01  1.3471E-01  9.5692E-01  1.8211E-01  9.8185E-01  1.4009E+00  5.8876E-01  1.5485E+00  7.4536E-01
             2.0714E+00
 PARAMETER:  1.3839E-01 -1.4281E+00 -1.9046E+00  5.5967E-02 -1.6032E+00  8.1683E-02  4.3713E-01 -4.2973E-01  5.3729E-01 -1.9389E-01
             8.2823E-01
 GRADIENT:   1.2472E+01 -4.3523E+00  1.3260E+01 -2.2735E+01 -5.9235E+00  2.2644E+00  1.2832E+01 -9.9650E+00  1.7759E+00  3.1588E-03
             2.5295E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3001.13334377957        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  1.0313E+00  2.1411E-01  1.2862E-01  9.8189E-01  1.7932E-01  9.7880E-01  1.3237E+00  1.1190E+00  1.6174E+00  6.5566E-01
             1.9913E+00
 PARAMETER:  1.3085E-01 -1.4412E+00 -1.9509E+00  8.1723E-02 -1.6186E+00  7.8575E-02  3.8046E-01  2.1239E-01  5.8084E-01 -3.2211E-01
             7.8880E-01
 GRADIENT:  -7.3913E-01 -5.1963E-01  3.4253E-01  1.0273E+00 -8.6217E-01 -2.2839E-01 -1.5418E+00  2.3304E-01 -2.8872E-01  2.4515E+00
             1.2651E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -3001.16305055674        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      985
 NPARAMETR:  1.0315E+00  2.1466E-01  1.2892E-01  9.8381E-01  1.7979E-01  9.7917E-01  1.3320E+00  1.1293E+00  1.6176E+00  6.4359E-01
             1.9901E+00
 PARAMETER:  1.3100E-01 -1.4387E+00 -1.9486E+00  8.3677E-02 -1.6160E+00  7.8952E-02  3.8670E-01  2.2160E-01  5.8097E-01 -3.4069E-01
             7.8818E-01
 GRADIENT:   3.5382E+03  3.2117E+02  1.4230E+01  2.3132E+03 -2.7558E+02 -1.5340E-01  1.1993E+03  1.0372E+03 -7.7800E-01 -1.3560E+03
            -5.7983E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      985
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7212E-03  1.6272E-02  1.8882E-02 -1.2883E-03  2.2388E-02
 SE:             2.9562E-02  2.5448E-02  2.0928E-02  2.7624E-02  2.1752E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5357E-01  5.2257E-01  3.6694E-01  9.6280E-01  3.0338E-01

 ETASHRINKSD(%)  9.6488E-01  1.4745E+01  2.9887E+01  7.4545E+00  2.7127E+01
 ETASHRINKVR(%)  1.9205E+00  2.7315E+01  5.0842E+01  1.4353E+01  4.6896E+01
 EBVSHRINKSD(%)  1.2660E+00  1.3975E+01  2.8600E+01  5.9053E+00  2.8050E+01
 EBVSHRINKVR(%)  2.5160E+00  2.5998E+01  4.9020E+01  1.1462E+01  4.8232E+01
 RELATIVEINF(%)  9.7410E+01  2.5076E+01  9.3195E+00  5.2508E+01  8.0252E+00
 EPSSHRINKSD(%)  2.1820E+01
 EPSSHRINKVR(%)  3.8878E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3001.1630505567387     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1347.0736907883279     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3001.163       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  2.15E-01  1.29E-01  9.84E-01  1.80E-01  9.79E-01  1.33E+00  1.13E+00  1.62E+00  6.44E-01  1.99E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.548
Stop Time:
Fri Oct  1 01:23:02 CDT 2021