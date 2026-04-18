.class public Landroidx/constraintlayout/motion/widget/KeyCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWavePhase:F

.field private mWaveShape:I

.field private mWaveVariesBy:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 60
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    const/4 v2, 0x0

    .line 62
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 63
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 65
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 69
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 76
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    const/4 v0, 0x4

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    return p0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    return p0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    return p0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    return p0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    return p0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    return p0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    return p0
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return p0
.end method

.method static synthetic access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    return p0
.end method

.method static synthetic access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    return p0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    return p0
.end method

.method static synthetic access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    return p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    return p0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    return p0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    return p0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    return p1
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oscSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    const/4 v4, 0x7

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v14, :cond_c

    .line 136
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v4, v5, :cond_39

    goto :goto_c

    .line 140
    :cond_39
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v5, :cond_43

    goto :goto_c

    .line 145
    :cond_43
    iget v6, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v11, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v13

    invoke-virtual/range {v5 .. v14}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto :goto_c

    .line 148
    :cond_59
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->getValue(Ljava/lang/String;)F

    move-result v23

    .line 149
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_c

    .line 153
    :cond_64
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-nez v15, :cond_6e

    goto :goto_c

    .line 158
    :cond_6e
    iget v3, v0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v6, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-virtual/range {v15 .. v23}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto/16 :goto_c

    :cond_8f
    return-void
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCycle"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->logStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_196

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-nez v3, :cond_3d

    goto :goto_28

    .line 208
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_198

    goto/16 :goto_f5

    :sswitch_4a
    const-string v5, "wavePhase"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto/16 :goto_f5

    :cond_54
    const/16 v4, 0xd

    goto/16 :goto_f5

    :sswitch_58
    const-string v5, "waveOffset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto/16 :goto_f5

    :cond_62
    const/16 v4, 0xc

    goto/16 :goto_f5

    :sswitch_66
    const-string v5, "alpha"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto/16 :goto_f5

    :cond_70
    const/16 v4, 0xb

    goto/16 :goto_f5

    :sswitch_74
    const-string v5, "transitionPathRotate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto/16 :goto_f5

    :cond_7e
    const/16 v4, 0xa

    goto/16 :goto_f5

    :sswitch_82
    const-string v5, "elevation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    goto/16 :goto_f5

    :cond_8c
    const/16 v4, 0x9

    goto/16 :goto_f5

    :sswitch_90
    const-string v5, "rotation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    goto/16 :goto_f5

    :cond_9a
    const/16 v4, 0x8

    goto/16 :goto_f5

    :sswitch_9e
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    goto :goto_f5

    :cond_a7
    const/4 v4, 0x7

    goto :goto_f5

    :sswitch_a9
    const-string v5, "scaleX"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto :goto_f5

    :cond_b2
    const/4 v4, 0x6

    goto :goto_f5

    :sswitch_b4
    const-string v5, "progress"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    goto :goto_f5

    :cond_bd
    const/4 v4, 0x5

    goto :goto_f5

    :sswitch_bf
    const-string v5, "translationZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    goto :goto_f5

    :cond_c8
    const/4 v4, 0x4

    goto :goto_f5

    :sswitch_ca
    const-string v5, "translationY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d3

    goto :goto_f5

    :cond_d3
    const/4 v4, 0x3

    goto :goto_f5

    :sswitch_d5
    const-string v5, "translationX"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_de

    goto :goto_f5

    :cond_de
    const/4 v4, 0x2

    goto :goto_f5

    :sswitch_e0
    const-string v5, "rotationY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    goto :goto_f5

    :cond_e9
    const/4 v4, 0x1

    goto :goto_f5

    :sswitch_eb
    const-string v5, "rotationX"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v4, 0x0

    :goto_f5
    packed-switch v4, :pswitch_data_1d2

    const-string v3, "CUSTOM"

    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  UNKNOWN  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WARNING KeyCycle"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 246
    :pswitch_118  #0xd
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 243
    :pswitch_121  #0xc
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 210
    :pswitch_12a  #0xb
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 225
    :pswitch_133  #0xa
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 213
    :pswitch_13c  #0x9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 216
    :pswitch_145  #0x8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 231
    :pswitch_14e  #0x7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 228
    :pswitch_157  #0x6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 249
    :pswitch_160  #0x5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 240
    :pswitch_169  #0x4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 237
    :pswitch_172  #0x3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 234
    :pswitch_17b  #0x2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 222
    :pswitch_184  #0x1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    .line 219
    :pswitch_18d  #0x0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_28

    :cond_196
    return-void

    nop

    :sswitch_data_198
    .sparse-switch
        -0x4a771f66 -> :sswitch_eb
        -0x4a771f65 -> :sswitch_e0
        -0x490b9c39 -> :sswitch_d5
        -0x490b9c38 -> :sswitch_ca
        -0x490b9c37 -> :sswitch_bf
        -0x3bab3dd3 -> :sswitch_b4
        -0x3621dfb2 -> :sswitch_a9
        -0x3621dfb1 -> :sswitch_9e
        -0x266f082 -> :sswitch_90
        -0x42d1a3 -> :sswitch_82
        0x2382115 -> :sswitch_74
        0x589b15e -> :sswitch_66
        0x94e04ec -> :sswitch_58
        0x5b327a02 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_18d  #00000000
        :pswitch_184  #00000001
        :pswitch_17b  #00000002
        :pswitch_172  #00000003
        :pswitch_169  #00000004
        :pswitch_160  #00000005
        :pswitch_157  #00000006
        :pswitch_14e  #00000007
        :pswitch_145  #00000008
        :pswitch_13c  #00000009
        :pswitch_133  #0000000a
        :pswitch_12a  #0000000b
        :pswitch_121  #0000000c
        :pswitch_118  #0000000d
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    .line 498
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 472
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 473
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 474
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    .line 475
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    .line 476
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    .line 477
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 478
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    .line 479
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    .line 480
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    .line 481
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    .line 482
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    .line 483
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    .line 484
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    .line 485
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    .line 486
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    .line 487
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    .line 488
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    .line 489
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    .line 490
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    .line 491
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    .line 492
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    .line 493
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "rotation"

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rotationX"

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "rotationY"

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "scaleX"

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "scaleY"

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "transitionPathRotate"

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "translationX"

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "translationY"

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "translationZ"

    .line 122
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c2

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_c2
    return-void
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_106

    goto/16 :goto_b8

    :sswitch_d
    const-string v0, "wavePhase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_b8

    :cond_17
    const/16 v1, 0xd

    goto/16 :goto_b8

    :sswitch_1b
    const-string v0, "waveOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_b8

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_b8

    :sswitch_29
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_b8

    :cond_33
    const/16 v1, 0xb

    goto/16 :goto_b8

    :sswitch_37
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v1, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v1, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v1, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v1, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v1, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v1, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v1, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v1, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v1, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v1, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    packed-switch v1, :pswitch_data_140

    const-string v0, "CUSTOM"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  UNKNOWN  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WARNING! KeyCycle"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    const/high16 p1, 0x7fc00000  # Float.NaN

    return p1

    .line 189
    :pswitch_dc  #0xd
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    return p1

    .line 187
    :pswitch_df  #0xc
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    return p1

    .line 165
    :pswitch_e2  #0xb
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    return p1

    .line 175
    :pswitch_e5  #0xa
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    return p1

    .line 167
    :pswitch_e8  #0x9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    return p1

    .line 169
    :pswitch_eb  #0x8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    return p1

    .line 179
    :pswitch_ee  #0x7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    return p1

    .line 177
    :pswitch_f1  #0x6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    return p1

    .line 191
    :pswitch_f4  #0x5
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    return p1

    .line 185
    :pswitch_f7  #0x4
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return p1

    .line 183
    :pswitch_fa  #0x3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    return p1

    .line 181
    :pswitch_fd  #0x2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    return p1

    .line 173
    :pswitch_100  #0x1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    return p1

    .line 171
    :pswitch_103  #0x0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    return p1

    :sswitch_data_106
    .sparse-switch
        -0x4a771f66 -> :sswitch_ae
        -0x4a771f65 -> :sswitch_a3
        -0x490b9c39 -> :sswitch_98
        -0x490b9c38 -> :sswitch_8d
        -0x490b9c37 -> :sswitch_82
        -0x3bab3dd3 -> :sswitch_77
        -0x3621dfb2 -> :sswitch_6c
        -0x3621dfb1 -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_1b
        0x5b327a02 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_103  #00000000
        :pswitch_100  #00000001
        :pswitch_fd  #00000002
        :pswitch_fa  #00000003
        :pswitch_f7  #00000004
        :pswitch_f4  #00000005
        :pswitch_f1  #00000006
        :pswitch_ee  #00000007
        :pswitch_eb  #00000008
        :pswitch_e8  #00000009
        :pswitch_e5  #0000000a
        :pswitch_e2  #0000000b
        :pswitch_df  #0000000c
        :pswitch_dc  #0000000d
    .end packed-switch
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 85
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method
