Fri Oct  1 21:10:46 CDT 2021
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
$DATA ../../../../data/SD3/TD1/dat92.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m92.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2475.64662215302        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4998E+02 -2.4847E+01 -7.0451E+00  2.8320E+01  4.2762E+01  5.8172E+01 -3.1467E+01  4.3225E+00 -7.4991E+00  1.2131E+01
             3.7933E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2483.61766542006        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      176
 NPARAMETR:  1.0039E+00  1.1614E+00  1.0238E+00  9.7437E-01  1.0477E+00  9.1145E-01  1.2760E+00  9.8286E-01  1.0857E+00  9.3124E-01
             9.6932E-01
 PARAMETER:  1.0390E-01  2.4964E-01  1.2348E-01  7.4032E-02  1.4660E-01  7.2857E-03  3.4374E-01  8.2707E-02  1.8222E-01  2.8761E-02
             6.8837E-02
 GRADIENT:   5.6422E+01  4.1130E+01  6.9021E+00  2.5912E+01 -2.5937E+01 -1.7139E+01  7.8626E-01 -7.3861E-01  1.2638E+01  4.1980E+00
            -2.3280E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2484.57018376999        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  9.9520E-01  1.1082E+00  1.0506E+00  1.0043E+00  1.0266E+00  9.3663E-01  1.4426E+00  1.0068E+00  1.0145E+00  8.5795E-01
             9.6340E-01
 PARAMETER:  9.5193E-02  2.0278E-01  1.4941E-01  1.0425E-01  1.2621E-01  3.4530E-02  4.6643E-01  1.0681E-01  1.1436E-01 -5.3212E-02
             6.2709E-02
 GRADIENT:   3.2202E+01  3.7481E+01  9.0364E+00  2.4547E+01 -2.4122E+01 -5.0614E+00  1.2927E+01 -2.0520E+00  6.0607E+00 -1.9010E+00
            -8.2909E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2484.80533094904        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      541             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9311E-01  1.1082E+00  1.0847E+00  9.7315E-01  1.0412E+00  9.6207E-01  1.3958E+00  1.1161E+00  1.0214E+00  8.0929E-01
             9.6425E-01
 PARAMETER:  9.3083E-02  2.0278E-01  1.8127E-01  7.2779E-02  1.4036E-01  6.1328E-02  4.3346E-01  2.0983E-01  1.2114E-01 -1.1160E-01
             6.3596E-02
 GRADIENT:   4.6898E+02  1.3839E+02  2.5498E+01  6.1728E+01 -2.1738E+00  4.7623E+01  4.6214E+01  7.1108E-01  1.4102E+01 -7.3465E+00
            -6.1443E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2485.63685031492        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  9.8335E-01  1.0707E+00  1.0852E+00  9.8437E-01  1.0408E+00  9.4880E-01  1.3450E+00  1.1155E+00  1.0217E+00  8.0952E-01
             9.6401E-01
 PARAMETER:  8.3213E-02  1.6832E-01  1.8172E-01  8.4246E-02  1.4001E-01  4.7443E-02  3.9637E-01  2.0931E-01  1.2144E-01 -1.1132E-01
             6.3346E-02
 GRADIENT:   2.4172E+00 -1.4860E+00  9.3514E+00 -1.8806E+01 -1.2208E+01  4.9902E-01 -1.1515E+00 -4.4871E-01  5.1438E+00 -9.4658E+00
            -6.2182E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2486.25947928893        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      861
 NPARAMETR:  9.8071E-01  1.0718E+00  1.0670E+00  9.9506E-01  1.0470E+00  9.4628E-01  1.3495E+00  1.1129E+00  9.9517E-01  8.7386E-01
             9.6928E-01
 PARAMETER:  8.0523E-02  1.6936E-01  1.6482E-01  9.5047E-02  1.4594E-01  4.4784E-02  3.9976E-01  2.0698E-01  9.5163E-02 -3.4833E-02
             6.8793E-02
 GRADIENT:  -4.5920E+00 -2.2435E+00 -4.9496E+00  2.2405E+00  5.2812E+00 -5.2888E-01  1.0056E+00  1.9913E+00  1.5726E+00 -4.3500E-01
             1.5878E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2486.32177229992        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1037
 NPARAMETR:  9.8206E-01  1.0742E+00  1.0634E+00  9.9329E-01  1.0434E+00  9.4718E-01  1.3407E+00  1.0653E+00  9.9067E-01  8.8027E-01
             9.6887E-01
 PARAMETER:  8.1893E-02  1.7158E-01  1.6144E-01  9.3263E-02  1.4249E-01  4.5736E-02  3.9321E-01  1.6325E-01  9.0629E-02 -2.7531E-02
             6.8373E-02
 GRADIENT:  -1.2153E+00 -2.8369E-01 -2.6186E-02 -3.6476E-01 -2.2666E-01 -1.2065E-01 -9.1571E-02 -4.4139E-03  2.3955E-02 -4.5681E-02
            -3.9683E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2486.32373301453        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1130
 NPARAMETR:  9.8320E-01  1.0746E+00  1.0634E+00  9.9344E-01  1.0435E+00  9.4774E-01  1.3428E+00  1.0654E+00  9.9062E-01  8.8058E-01
             9.6890E-01
 PARAMETER:  8.3054E-02  1.7192E-01  1.6149E-01  9.3422E-02  1.4259E-01  4.6328E-02  3.9472E-01  1.6336E-01  9.0574E-02 -2.7179E-02
             6.8410E-02
 GRADIENT:   1.6415E+00  9.9156E-02 -8.3456E-02  5.9795E-02 -2.2341E-01  1.1610E-01  1.9135E-01  5.7258E-03  8.8235E-02  2.6385E-02
            -1.6437E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1130
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7367E-04 -9.4934E-03 -2.8385E-02  6.5652E-03 -2.5698E-02
 SE:             2.9887E-02  2.3580E-02  1.5394E-02  2.5100E-02  2.1988E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9002E-01  6.8724E-01  6.5193E-02  7.9366E-01  2.4251E-01

 ETASHRINKSD(%)  1.0000E-10  2.1003E+01  4.8429E+01  1.5912E+01  2.6339E+01
 ETASHRINKVR(%)  1.0000E-10  3.7594E+01  7.3405E+01  2.9293E+01  4.5740E+01
 EBVSHRINKSD(%)  3.3746E-01  2.0270E+01  5.0888E+01  1.7404E+01  2.5694E+01
 EBVSHRINKVR(%)  6.7379E-01  3.6431E+01  7.5880E+01  3.1780E+01  4.4786E+01
 RELATIVEINF(%)  9.9313E+01  2.2986E+01  1.2628E+01  2.7538E+01  1.7094E+01
 EPSSHRINKSD(%)  3.0635E+01
 EPSSHRINKVR(%)  5.1885E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2486.3237330145257     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1383.5974931689186     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.43
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2486.324       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.83E-01  1.07E+00  1.06E+00  9.93E-01  1.04E+00  9.48E-01  1.34E+00  1.07E+00  9.91E-01  8.81E-01  9.69E-01
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       21.483
Stop Time:
Fri Oct  1 21:11:09 CDT 2021