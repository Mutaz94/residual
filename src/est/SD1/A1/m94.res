Fri Oct  1 00:18:38 CDT 2021
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
$DATA ../../../../data/SD1/A1/dat94.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3479.74597412274        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3773E+02  4.4798E+01  6.5839E+01  4.6293E+01  1.4998E+02  4.1634E+01 -4.0834E+01 -1.8836E+01 -1.8401E+01 -1.0416E+01
            -6.9397E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3572.29819601865        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:       90
 NPARAMETR:  1.0894E+00  8.5415E-01  7.8490E-01  1.1378E+00  7.6936E-01  1.0462E+00  1.0634E+00  8.9804E-01  1.0834E+00  9.0323E-01
             1.2604E+00
 PARAMETER:  1.8560E-01 -5.7647E-02 -1.4220E-01  2.2907E-01 -1.6220E-01  1.4513E-01  1.6143E-01 -7.5384E-03  1.8015E-01 -1.7743E-03
             3.3141E-01
 GRADIENT:   6.7688E+02  6.9683E+01  8.8453E-01  2.0453E+02  5.7215E+01  3.3664E+01  6.0562E+00  2.1428E+01  1.6176E+01  1.4101E+01
            -4.9394E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3575.35056072521        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0893E+00  8.0976E-01  7.5143E-01  1.1505E+00  7.3854E-01  1.0172E+00  1.0926E+00  7.4053E-01  1.1091E+00  7.7736E-01
             1.2504E+00
 PARAMETER:  1.8553E-01 -1.1102E-01 -1.8578E-01  2.4018E-01 -2.0308E-01  1.1710E-01  1.8852E-01 -2.0039E-01  2.0352E-01 -1.5185E-01
             3.2348E-01
 GRADIENT:   1.8898E+02  1.6019E+01 -7.2525E+00  3.3998E+01  1.6019E+01 -1.2223E+01  3.7668E+00  1.2242E+01  9.0880E+00 -9.4482E+00
            -8.3384E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3587.34930612279        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      405
 NPARAMETR:  1.0355E+00  7.8523E-01  7.2854E-01  1.1572E+00  7.1131E-01  9.9231E-01  9.8813E-01  3.8083E-01  1.0611E+00  8.1994E-01
             1.2948E+00
 PARAMETER:  1.3493E-01 -1.4178E-01 -2.1671E-01  2.4604E-01 -2.4065E-01  9.2281E-02  8.8057E-02 -8.6540E-01  1.5929E-01 -9.8520E-02
             3.5835E-01
 GRADIENT:   8.2851E+01  1.8154E+01  5.7161E+00  2.8125E+01  2.9637E+00 -8.5237E+00 -7.1962E+00 -3.9817E-01 -5.0674E+00 -1.1177E+00
            -3.6526E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3589.93199908712        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      581
 NPARAMETR:  9.9967E-01  7.3405E-01  6.8623E-01  1.1570E+00  6.6888E-01  1.0021E+00  1.0233E+00  2.0807E-01  1.0700E+00  8.0669E-01
             1.3161E+00
 PARAMETER:  9.9671E-02 -2.0918E-01 -2.7655E-01  2.4583E-01 -3.0215E-01  1.0207E-01  1.2304E-01 -1.4699E+00  1.6766E-01 -1.1481E-01
             3.7466E-01
 GRADIENT:   3.4819E+00 -9.0011E-01  1.7172E-01 -4.1962E-01  3.8531E+00 -1.6502E+00 -8.0883E-01 -5.2841E-01 -9.4704E-01 -3.6690E-01
            -3.0879E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3590.12855559257        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      758
 NPARAMETR:  9.9795E-01  7.3178E-01  6.8333E-01  1.1585E+00  6.6517E-01  1.0061E+00  1.0326E+00  3.2057E-01  1.0735E+00  7.9307E-01
             1.3136E+00
 PARAMETER:  9.7952E-02 -2.1227E-01 -2.8078E-01  2.4710E-01 -3.0772E-01  1.0611E-01  1.3213E-01 -1.0377E+00  1.7088E-01 -1.3184E-01
             3.7279E-01
 GRADIENT:  -2.8559E-01  4.5969E-01  1.3500E-01  4.5047E-01 -8.9072E-01 -1.1857E-01  2.3791E-01 -4.3404E-02  1.4304E-01 -9.8928E-02
             5.1465E-01

0ITERATION NO.:   27    OBJECTIVE VALUE:  -3590.12993871997        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      815
 NPARAMETR:  9.9815E-01  7.3305E-01  6.8471E-01  1.1576E+00  6.6676E-01  1.0062E+00  1.0311E+00  3.2660E-01  1.0732E+00  7.9400E-01
             1.3132E+00
 PARAMETER:  9.8149E-02 -2.1055E-01 -2.7876E-01  2.4636E-01 -3.0532E-01  1.0620E-01  1.3063E-01 -1.0190E+00  1.7069E-01 -1.3067E-01
             3.7249E-01
 GRADIENT:   1.3526E-01 -1.5159E-01 -9.7354E-02 -8.5004E-02  1.5118E-01 -8.4155E-02 -1.7191E-02  1.0588E-02  3.9427E-02  2.2494E-02
             1.0113E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      815
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9445E-04 -1.4957E-02 -6.5636E-03  3.3716E-03 -1.4570E-02
 SE:             2.9821E-02  2.2834E-02  9.1684E-03  2.8900E-02  2.4602E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7607E-01  5.1245E-01  4.7406E-01  9.0712E-01  5.5371E-01

 ETASHRINKSD(%)  9.5099E-02  2.3502E+01  6.9285E+01  3.1822E+00  1.7579E+01
 ETASHRINKVR(%)  1.9011E-01  4.1480E+01  9.0566E+01  6.2631E+00  3.2067E+01
 EBVSHRINKSD(%)  4.5857E-01  2.2724E+01  6.9640E+01  3.3357E+00  1.8110E+01
 EBVSHRINKVR(%)  9.1503E-01  4.0285E+01  9.0783E+01  6.5601E+00  3.2941E+01
 RELATIVEINF(%)  9.9077E+01  2.0385E+01  2.5452E+00  7.9013E+01  1.3251E+01
 EPSSHRINKSD(%)  1.9971E+01
 EPSSHRINKVR(%)  3.5953E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3590.1299387199665     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1936.0405789515557     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3590.130       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.98E-01  7.33E-01  6.85E-01  1.16E+00  6.67E-01  1.01E+00  1.03E+00  3.27E-01  1.07E+00  7.94E-01  1.31E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.111
Stop Time:
Fri Oct  1 00:18:59 CDT 2021