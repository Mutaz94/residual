Wed Sep 29 23:46:03 CDT 2021
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
$DATA ../../../../data/spa1/A2/dat88.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -909.593813116982        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1157E+02  2.6681E+01  1.0678E+01  5.0396E+01  1.8358E+02  5.0786E+01 -2.2779E+01 -1.1481E+01 -4.1644E+01 -7.3487E+01
            -2.2607E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1670.79209953365        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0090E+00  1.0487E+00  1.0918E+00  9.9361E-01  9.9929E-01  9.0331E-01  9.1820E-01  9.5673E-01  8.9869E-01  7.8238E-01
             2.2151E+00
 PARAMETER:  1.0892E-01  1.4758E-01  1.8781E-01  9.3594E-02  9.9294E-02 -1.6907E-03  1.4660E-02  5.5766E-02 -6.8172E-03 -1.4542E-01
             8.9528E-01
 GRADIENT:   6.5655E+01 -3.5225E+01  6.0289E+00 -6.6919E+01  1.2334E+01 -2.2096E+01 -9.5494E-01 -1.9093E+00 -1.4986E+01  7.6805E+00
            -2.2931E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1683.94998439090        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0029E+00  1.4000E+00  9.1522E-01  8.2305E-01  1.0428E+00  9.4073E-01  9.7613E-01  1.8234E+00  1.1248E+00  4.1786E-01
             2.3281E+00
 PARAMETER:  1.0289E-01  4.3647E-01  1.1406E-02 -9.4741E-02  1.4193E-01  3.8904E-02  7.5839E-02  7.0071E-01  2.1763E-01 -7.7261E-01
             9.4504E-01
 GRADIENT:   2.7797E+01  6.3296E+01  3.2046E+00  1.1501E+01 -1.5494E+01 -7.7958E+00  2.1619E+01  8.3704E+00  1.3809E+01  3.5939E+00
            -1.5867E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1702.56653672275        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0070E+00  1.0882E+00  1.3225E+00  1.0406E+00  1.0920E+00  9.5505E-01  6.5246E-01  1.2642E+00  1.0068E+00  3.6106E-01
             2.7900E+00
 PARAMETER:  1.0698E-01  1.8450E-01  3.7953E-01  1.3976E-01  1.8802E-01  5.4013E-02 -3.2700E-01  3.3447E-01  1.0679E-01 -9.1872E-01
             1.1260E+00
 GRADIENT:   1.1825E+01  1.8317E+01  2.4712E+00  2.1931E+01 -1.0027E+01  6.1030E-02  1.8821E+00 -3.5791E-01  2.1978E+00  1.3704E+00
             2.4243E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1703.12624635565        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  9.9857E-01  1.0656E+00  1.6300E+00  1.0380E+00  1.1790E+00  9.5440E-01  3.5645E-01  1.8377E+00  1.0554E+00  2.2021E-01
             2.7129E+00
 PARAMETER:  9.8568E-02  1.6349E-01  5.8859E-01  1.3726E-01  2.6463E-01  5.3330E-02 -9.3155E-01  7.0854E-01  1.5394E-01 -1.4132E+00
             1.0980E+00
 GRADIENT:  -2.9242E+00 -5.7018E+00 -2.1649E+00 -4.8193E+00  4.5259E+00  9.2205E-02  7.4748E-01  1.3492E+00  2.0560E+00  4.0678E-01
            -5.3361E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1704.34835378206        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  1.0160E+00  1.0311E+00  1.8617E+00  1.0726E+00  1.2252E+00  9.6127E-01  2.1992E-01  1.9746E+00  1.0319E+00  1.4639E-01
             2.7633E+00
 PARAMETER:  1.1591E-01  1.3059E-01  7.2149E-01  1.7005E-01  3.0308E-01  6.0496E-02 -1.4145E+00  7.8035E-01  1.3136E-01 -1.8215E+00
             1.1164E+00
 GRADIENT:  -2.1373E+01 -7.7187E+00 -2.0229E+00 -9.7872E+00  5.7255E+00 -1.4608E+00 -5.4125E-02  8.3027E-02 -1.0628E+00  1.5647E-01
            -2.7056E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1704.54956168575        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      597
 NPARAMETR:  1.0266E+00  1.0236E+00  1.9988E+00  1.0854E+00  1.2378E+00  9.6491E-01  1.6370E-01  2.1085E+00  1.0296E+00  1.0979E-01
             2.7728E+00
 PARAMETER:  1.2624E-01  1.2329E-01  7.9255E-01  1.8193E-01  3.1334E-01  6.4284E-02 -1.7097E+00  8.4598E-01  1.2916E-01 -2.1092E+00
             1.1199E+00
 GRADIENT:   1.3375E+00 -9.6126E-01 -1.7080E-01 -1.1045E+00  3.9537E-01  1.8988E-01 -4.4857E-02  9.0521E-02 -4.8505E-01  8.9933E-02
            -2.8795E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1704.60366407886        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      733
 NPARAMETR:  1.0240E+00  1.0656E+00  1.9940E+00  1.0577E+00  1.2498E+00  9.6167E-01  1.8481E-01  2.1536E+00  1.0603E+00  1.0000E-02
             2.7762E+00
 PARAMETER:  1.2375E-01  1.6352E-01  7.9015E-01  1.5609E-01  3.2294E-01  6.0913E-02 -1.5884E+00  8.6715E-01  1.5853E-01 -5.9415E+00
             1.1211E+00
 GRADIENT:   6.3729E+01  7.7254E+00  8.6490E-01  1.4113E+01  2.1269E+00  4.3406E+00  2.2627E-01  3.4836E-01  2.4932E+00  0.0000E+00
             1.1965E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1704.63723530361        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      892
 NPARAMETR:  1.0267E+00  1.0702E+00  1.9677E+00  1.0559E+00  1.2442E+00  9.6771E-01  3.0751E-01  2.1527E+00  1.0425E+00  2.0775E-02
             2.7679E+00
 PARAMETER:  1.2630E-01  1.6781E-01  7.7686E-01  1.5438E-01  3.1850E-01  6.7174E-02 -1.0792E+00  8.6674E-01  1.4159E-01 -3.7740E+00
             1.1181E+00
 GRADIENT:   9.1128E-01 -1.4670E+00 -9.6229E-02 -8.6219E-01 -2.3957E-01  1.0814E+00  4.0163E-02  4.4678E-01 -1.0995E-01  3.2614E-03
            -1.8998E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1704.65589570928        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  1.0270E+00  1.0899E+00  1.8834E+00  1.0426E+00  1.2370E+00  9.6621E-01  3.2138E-01  2.0768E+00  1.0569E+00  1.0000E-02
             2.7717E+00
 PARAMETER:  1.2664E-01  1.8608E-01  7.3307E-01  1.4176E-01  3.1269E-01  6.5630E-02 -1.0351E+00  8.3082E-01  1.5534E-01 -5.2480E+00
             1.1194E+00
 GRADIENT:   1.3538E+00 -5.0902E-01 -6.2530E-02  7.4457E-01 -5.5058E-01  4.5879E-01  3.5907E-02 -9.1132E-03  5.5733E-01  0.0000E+00
            -3.5652E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1704.71984147657        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1248
 NPARAMETR:  1.0245E+00  1.2989E+00  1.6979E+00  9.0896E-01  1.2702E+00  9.6664E-01  4.2982E-01  2.1531E+00  1.1637E+00  1.0000E-02
             2.7672E+00
 PARAMETER:  1.2417E-01  3.6155E-01  6.2937E-01  4.5491E-03  3.3916E-01  6.6072E-02 -7.4440E-01  8.6690E-01  2.5162E-01 -1.9191E+01
             1.1178E+00
 GRADIENT:  -7.4504E+00  7.6673E+00  9.9367E-01  6.9975E+00 -2.4410E+00  8.0844E-02  7.0632E-02 -8.2076E-01 -3.2307E-01  0.0000E+00
            -3.0381E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1704.81019270129        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  1.0300E+00  1.4263E+00  1.6600E+00  8.2193E-01  1.3063E+00  9.6688E-01  4.1301E-01  2.4016E+00  1.2647E+00  1.0000E-02
             2.7781E+00
 PARAMETER:  1.2957E-01  4.5506E-01  6.0682E-01 -9.6105E-02  3.6718E-01  6.6322E-02 -7.8428E-01  9.7613E-01  3.3482E-01 -2.2895E+01
             1.1217E+00
 GRADIENT:   3.1487E+00  5.0520E+00  3.8826E-01  4.0827E+00 -1.7248E+00  2.4314E-01 -1.7956E-01  3.8855E-02 -1.6531E-01  0.0000E+00
             5.1352E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1704.85546817013        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1600
 NPARAMETR:  1.0274E+00  1.5896E+00  1.3836E+00  7.0888E-01  1.3194E+00  9.6587E-01  4.6201E-01  2.3705E+00  1.3979E+00  1.0000E-02
             2.7733E+00
 PARAMETER:  1.2708E-01  5.6351E-01  4.2467E-01 -2.4408E-01  3.7720E-01  6.5273E-02 -6.7217E-01  9.6309E-01  4.3496E-01 -4.6912E+01
             1.1200E+00
 GRADIENT:  -3.7758E+00  1.2327E+00  2.0201E-01  9.8687E-01 -9.4197E-02 -4.2684E-01 -5.7629E-02 -1.9353E-01  1.3874E-01  0.0000E+00
            -1.0213E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1704.85704207051        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1775
 NPARAMETR:  1.0283E+00  1.6366E+00  1.3019E+00  6.7871E-01  1.3221E+00  9.6610E-01  4.7739E-01  2.3489E+00  1.4370E+00  1.0000E-02
             2.7747E+00
 PARAMETER:  1.2787E-01  5.9260E-01  3.6381E-01 -2.8757E-01  3.7923E-01  6.5509E-02 -6.3942E-01  9.5394E-01  4.6254E-01 -5.2795E+01
             1.1205E+00
 GRADIENT:  -2.5722E+00  3.1939E+00  2.2860E-01  2.1507E+00 -2.2846E-01 -4.6101E-01 -4.1417E-03 -2.2213E-01  2.0372E-01  0.0000E+00
            -6.5596E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1704.85816542983        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1950
 NPARAMETR:  1.0292E+00  1.6765E+00  1.2287E+00  6.5209E-01  1.3236E+00  9.6672E-01  4.8825E-01  2.3267E+00  1.4724E+00  1.0000E-02
             2.7761E+00
 PARAMETER:  1.2881E-01  6.1671E-01  3.0597E-01 -3.2757E-01  3.8034E-01  6.6158E-02 -6.1692E-01  9.4445E-01  4.8692E-01 -5.8291E+01
             1.1210E+00
 GRADIENT:  -9.1311E-01  3.5925E+00  1.6696E-01  2.2745E+00 -2.7958E-01 -3.0019E-01 -6.7466E-03 -1.6836E-01  1.0406E-01  0.0000E+00
            -2.4670E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1704.86262336303        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     2119
 NPARAMETR:  1.0296E+00  1.6845E+00  1.2132E+00  6.4485E-01  1.3233E+00  9.6736E-01  4.8971E-01  2.3247E+00  1.4801E+00  1.0000E-02
             2.7762E+00
 PARAMETER:  1.2918E-01  6.2146E-01  2.9322E-01 -3.3873E-01  3.8010E-01  6.6818E-02 -6.1394E-01  9.4358E-01  4.9213E-01 -5.9622E+01
             1.1211E+00
 GRADIENT:  -4.2119E-04  8.2700E-01  1.8239E-01  5.2235E-01 -3.3404E-01 -3.1859E-02  4.9634E-03 -1.3373E-01 -1.0869E-01  0.0000E+00
            -9.2761E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2119
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4091E-03 -3.4307E-02 -1.9085E-02  2.1626E-02 -1.0795E-04
 SE:             2.9319E-02  1.4029E-02  1.1734E-02  2.3817E-02  1.5998E-04
 N:                     100         100         100         100         100

 P VAL.:         9.0743E-01  1.4470E-02  1.0385E-01  3.6386E-01  4.9980E-01

 ETASHRINKSD(%)  1.7793E+00  5.3001E+01  6.0689E+01  2.0211E+01  9.9464E+01
 ETASHRINKVR(%)  3.5270E+00  7.7911E+01  8.4547E+01  3.6337E+01  9.9997E+01
 EBVSHRINKSD(%)  2.2699E+00  5.2573E+01  6.3737E+01  2.1815E+01  9.9419E+01
 EBVSHRINKVR(%)  4.4883E+00  7.7507E+01  8.6850E+01  3.8871E+01  9.9997E+01
 RELATIVEINF(%)  9.5009E+01  1.6005E+00  4.1959E+00  4.9904E+00  1.1376E-03
 EPSSHRINKSD(%)  2.0992E+01
 EPSSHRINKVR(%)  3.7577E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1704.8626233630275     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -785.92409015835483     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    35.34
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     8.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1704.863       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.68E+00  1.21E+00  6.45E-01  1.32E+00  9.67E-01  4.90E-01  2.32E+00  1.48E+00  1.00E-02  2.78E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.18E+03
 
 TH 2
+       -4.90E+01  3.80E+02
 
 TH 3
+        3.10E+00  2.51E+01  1.25E+01
 
 TH 4
+       -6.88E+01  4.64E+02 -9.42E+00  7.42E+02
 
 TH 5
+        6.53E+00 -1.29E+02 -4.71E+01 -2.06E+01  1.83E+02
 
 TH 6
+       -2.71E+01  1.53E+01 -7.16E+00 -2.14E+01  3.74E+01  1.89E+02
 
 TH 7
+        3.43E+00 -4.62E+01 -7.05E+00 -2.41E+01  2.62E+01 -4.32E+01  1.81E+01
 
 TH 8
+       -1.46E+00 -4.48E+00 -1.77E+00  1.02E+00  6.50E+00 -1.58E+00  1.76E+00  2.99E-01
 
 TH 9
+        1.31E+00 -8.08E+00 -6.50E+00  2.82E+01  2.06E+01 -3.65E+01  1.33E+01  1.51E+00  1.27E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.58E+01 -7.38E+00 -1.06E+00 -1.62E+00  6.93E-01 -8.78E+00  5.04E+00  6.34E-01  3.79E+00  0.00E+00  1.16E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.07E+03
 
 TH 2
+       -3.96E+01  3.96E+02
 
 TH 3
+       -1.93E-01  3.04E+01  2.23E+01
 
 TH 4
+       -4.49E+01  4.56E+02 -1.18E+01  7.42E+02
 
 TH 5
+        8.90E+00 -1.13E+02 -4.53E+01 -2.86E+01  2.08E+02
 
 TH 6
+        2.56E+00 -7.91E+00  6.28E-01 -1.20E+01 -4.66E-01  1.94E+02
 
 TH 7
+        4.26E+00 -5.10E+01  2.87E+00 -2.28E+01  1.09E+01 -2.95E-02  5.66E+01
 
 TH 8
+       -2.30E-01 -7.77E+00 -5.44E+00  2.46E+00  3.32E+00  8.32E-02  1.16E+00  2.51E+00
 
 TH 9
+        2.71E+00 -2.09E+01 -5.47E-01  3.32E+01  3.12E+00 -8.01E-02  2.82E+01  9.12E-01  3.69E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.36E+01 -1.59E+01 -2.08E+00 -9.15E+00 -8.22E+00  3.45E+00  8.78E+00  2.11E+00  5.23E+00  0.00E+00  7.19E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.07E+03
 
 TH 2
+       -3.64E+01  3.90E+02
 
 TH 3
+        1.19E+00  2.99E+01  1.95E+01
 
 TH 4
+       -5.76E+01  4.54E+02 -7.45E+00  7.54E+02
 
 TH 5
+        1.39E+01 -1.19E+02 -4.41E+01 -2.96E+01  1.96E+02
 
 TH 6
+        2.08E+01 -2.90E+00 -4.94E+00 -9.32E+00  1.80E+01  1.12E+02
 
 TH 7
+       -1.87E+01 -6.00E+01 -5.48E-01 -2.23E+01  2.20E+01 -1.28E+01  5.96E+01
 
 TH 8
+       -4.52E+00 -1.04E+01 -5.21E+00 -3.26E+00  5.28E+00  3.17E-01  9.66E-01  3.09E+00
 
 TH 9
+        8.28E-01 -1.26E+01  5.15E-01  5.02E+01  7.34E+00 -1.02E+01  3.11E+01 -1.85E+00  4.23E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        2.23E+02 -4.86E+01  8.87E-01 -8.32E+01 -3.53E+01  3.92E+01 -3.50E+00  2.46E+00 -3.86E+00  0.00E+00  5.80E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       44.134
Stop Time:
Wed Sep 29 23:46:52 CDT 2021