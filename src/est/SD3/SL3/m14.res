Fri Oct  1 19:50:35 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat14.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m14.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1082.34894767236        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0172E+02 -1.4749E+02 -4.2193E+01  1.4120E+02  2.2694E+02  2.7493E+01 -4.1385E+01 -5.2366E+01 -1.0344E+01 -6.3351E-01
            -2.6963E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1994.37289569754        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.8228E-01  1.2301E+00  1.0145E+00  8.9222E-01  9.7870E-01  1.0297E+00  9.1970E-01  1.0057E+00  7.7852E-01  8.7615E-01
             2.3526E+00
 PARAMETER:  8.2117E-02  3.0712E-01  1.1439E-01 -1.4048E-02  7.8475E-02  1.2928E-01  1.6294E-02  1.0564E-01 -1.5036E-01 -3.2220E-02
             9.5551E-01
 GRADIENT:  -1.1175E+01 -1.0250E+01  9.5917E+00 -3.7729E+01 -6.2259E+00  4.4564E+00 -8.7137E-01 -3.9762E+00 -4.0341E+00 -6.2078E+00
            -2.7299E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1997.76702568565        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      243
 NPARAMETR:  1.0016E+00  1.4802E+00  9.9075E-01  7.9139E-01  1.0615E+00  1.0271E+00  8.3332E-01  1.1185E+00  8.8285E-01  1.0286E+00
             2.3040E+00
 PARAMETER:  1.0163E-01  4.9217E-01  9.0703E-02 -1.3397E-01  1.5965E-01  1.2672E-01 -8.2333E-02  2.1198E-01 -2.4601E-02  1.2825E-01
             9.3463E-01
 GRADIENT:  -5.4067E+01  5.1537E+01  1.4478E+01  1.8127E+01 -4.9498E+01 -8.3532E+00  4.6577E+00 -3.4543E+00 -2.8291E+00  9.6232E-02
            -6.0084E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2004.33442130587        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      419
 NPARAMETR:  1.0305E+00  1.5247E+00  1.5793E+00  7.7488E-01  1.2759E+00  1.0497E+00  7.5474E-01  2.6831E+00  8.9811E-01  1.0186E+00
             2.3977E+00
 PARAMETER:  1.3009E-01  5.2178E-01  5.5699E-01 -1.5505E-01  3.4367E-01  1.4846E-01 -1.8139E-01  1.0870E+00 -7.4576E-03  1.1846E-01
             9.7449E-01
 GRADIENT:   1.8756E+00  9.5264E+00 -6.9744E+00  2.1381E+01  1.9361E+01  1.2829E+00 -9.5324E-01  1.6569E+00  1.9402E+00 -3.2303E+00
             1.6055E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2004.88860972385        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  1.0285E+00  1.5773E+00  1.6817E+00  7.2964E-01  1.2966E+00  1.0451E+00  7.5259E-01  2.8253E+00  8.8285E-01  1.0768E+00
             2.3901E+00
 PARAMETER:  1.2813E-01  5.5570E-01  6.1980E-01 -2.1521E-01  3.5974E-01  1.4413E-01 -1.8423E-01  1.1386E+00 -2.4595E-02  1.7400E-01
             9.7133E-01
 GRADIENT:  -6.3261E-01  1.1839E+00  3.9549E-01  5.4351E-01 -1.2812E+00  4.4218E-03 -1.3113E-01 -1.2054E-02 -1.6677E-01  4.5724E-02
            -3.1214E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2004.89071169434        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      770
 NPARAMETR:  1.0289E+00  1.6019E+00  1.6313E+00  7.1278E-01  1.3021E+00  1.0452E+00  7.4236E-01  2.8226E+00  9.0324E-01  1.0855E+00
             2.3906E+00
 PARAMETER:  1.2845E-01  5.7120E-01  5.8935E-01 -2.3858E-01  3.6400E-01  1.4420E-01 -1.9792E-01  1.1377E+00 -1.7662E-03  1.8205E-01
             9.7152E-01
 GRADIENT:  -8.2151E-02  5.7158E-01  2.2560E-01  2.5724E-01 -6.6738E-01  3.6351E-02 -7.8795E-02 -1.8270E-02  8.9422E-02  1.0124E-02
            -2.2746E-02

0ITERATION NO.:   28    OBJECTIVE VALUE:  -2004.89109465111        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      866
 NPARAMETR:  1.0292E+00  1.6011E+00  1.6258E+00  7.1257E-01  1.3029E+00  1.0452E+00  7.4289E-01  2.8247E+00  9.0084E-01  1.0854E+00
             2.3905E+00
 PARAMETER:  1.2875E-01  5.7071E-01  5.8598E-01 -2.3888E-01  3.6459E-01  1.4425E-01 -1.9721E-01  1.1384E+00 -4.4223E-03  1.8198E-01
             9.7151E-01
 GRADIENT:   5.1776E-01 -1.3815E+00 -1.5229E-01 -3.5723E-01  7.0481E-01  5.6849E-02 -1.3099E-01  1.4397E-01  9.0914E-03  8.4401E-04
            -5.6272E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      866
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3187E-03 -1.7569E-02 -3.1119E-02  1.0429E-02 -3.2045E-02
 SE:             2.9471E-02  2.1663E-02  1.4871E-02  1.8318E-02  2.1388E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6431E-01  4.1737E-01  3.6387E-02  5.6913E-01  1.3406E-01

 ETASHRINKSD(%)  1.2675E+00  2.7425E+01  5.0180E+01  3.8634E+01  2.8348E+01
 ETASHRINKVR(%)  2.5190E+00  4.7329E+01  7.5180E+01  6.2342E+01  4.8660E+01
 EBVSHRINKSD(%)  1.4594E+00  2.7630E+01  5.3610E+01  4.1049E+01  2.6172E+01
 EBVSHRINKVR(%)  2.8974E+00  4.7626E+01  7.8479E+01  6.5248E+01  4.5495E+01
 RELATIVEINF(%)  9.6869E+01  2.2369E+00  4.4421E+00  1.5220E+00  1.7417E+01
 EPSSHRINKSD(%)  2.4367E+01
 EPSSHRINKVR(%)  4.2797E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2004.8910946511132     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -905.84060893832475     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.34
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2004.891       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.60E+00  1.63E+00  7.13E-01  1.30E+00  1.05E+00  7.43E-01  2.82E+00  9.01E-01  1.09E+00  2.39E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.384
Stop Time:
Fri Oct  1 19:50:52 CDT 2021
