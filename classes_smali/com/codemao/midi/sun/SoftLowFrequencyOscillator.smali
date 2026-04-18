.class public Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;
.super Ljava/lang/Object;
.source "SoftLowFrequencyOscillator.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftProcess;


# static fields
.field private static PI2:D = 6.283185307179586


# instance fields
.field private control_time:D

.field private delay:[[D

.field private delay2:[[D

.field private delay_counter:[I

.field private freq:[[D

.field private max_count:I

.field private out:[[D

.field private sin_factor:D

.field private sin_phase:[D

.field private sin_step:[D

.field private sin_stepfreq:[D

.field private used_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 48
    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    .line 34
    iput v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->max_count:I

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v5, v4, v5

    aput v1, v4, v2

    .line 36
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->out:[[D

    .line 37
    iget v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay:[[D

    .line 38
    iget v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay2:[[D

    .line 39
    iget v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->max_count:I

    new-array v3, v3, [I

    aput v5, v3, v5

    aput v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->freq:[[D

    .line 40
    iget v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->max_count:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay_counter:[I

    .line 41
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_phase:[D

    .line 42
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    .line 43
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_step:[D

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->control_time:D

    .line 45
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_factor:D

    .line 50
    :goto_64
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    array-length v1, v0

    if-ge v2, v1, :cond_70

    const-wide/high16 v3, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    .line 51
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_70
    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    .line 118
    iget v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    if-lt p1, v0, :cond_8

    add-int/lit8 v0, p1, 0x1

    .line 119
    iput v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    :cond_8
    if-nez p2, :cond_f

    .line 121
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->out:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_f
    const-string v0, "delay"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 123
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_1c
    const-string v0, "delay2"

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 125
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_29
    const-string v0, "freq"

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 127
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->freq:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 14

    .line 71
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->control_time:D

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double v2, v2, v0

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    mul-double v2, v2, v4

    .line 72
    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_factor:D

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 73
    :goto_19
    iget v3, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    if-ge v2, v3, :cond_4e

    .line 74
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay_counter:[I

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, p1

    const-wide v7, 0x4092c00000000000L  # 1200.0

    div-double/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->control_time:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v3, v2

    .line 76
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay_counter:[I

    aget v4, v3, v2

    iget-object v5, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, p1

    const-wide v10, 0x408f400000000000L  # 1000.0

    mul-double v6, v6, v10

    div-double/2addr v8, v6

    double-to-int v5, v8

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 78
    :cond_4e
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->processControlLogic()V

    return-void
.end method

.method public processControlLogic()V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :goto_2
    iget v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    if-ge v1, v2, :cond_77

    .line 83
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay_counter:[I

    aget v3, v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    if-lez v3, :cond_1b

    .line 84
    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 85
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v4, v2, v0

    goto :goto_74

    .line 87
    :cond_1b
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->freq:[[D

    aget-object v2, v2, v1

    aget-wide v6, v2, v0

    .line 89
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    aget-wide v8, v2, v1

    cmpl-double v3, v8, v6

    if-eqz v3, :cond_52

    .line 90
    aput-wide v6, v2, v1

    const-wide v2, 0x407b800000000000L  # 440.0

    const-wide v8, 0x40baf40000000000L  # 6900.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    .line 92
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x4092c00000000000L  # 1200.0

    div-double/2addr v8, v10

    mul-double v6, v6, v8

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    .line 93
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_step:[D

    iget-wide v8, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_factor:D

    mul-double v6, v6, v8

    aput-wide v6, v2, v1

    .line 106
    :cond_52
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_phase:[D

    aget-wide v6, v2, v1

    .line 107
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_step:[D

    aget-wide v8, v2, v1

    add-double/2addr v6, v8

    .line 108
    :goto_5b
    sget-wide v2, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->PI2:D

    cmpl-double v8, v6, v2

    if-lez v8, :cond_63

    sub-double/2addr v6, v2

    goto :goto_5b

    .line 110
    :cond_63
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->out:[[D

    aget-object v2, v2, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    add-double/2addr v8, v4

    aput-wide v8, v2, v0

    .line 111
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_phase:[D

    aput-wide v6, v2, v1

    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_77
    return-void
.end method

.method public reset()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_2
    iget v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    if-ge v1, v2, :cond_35

    .line 57
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->out:[[D

    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 58
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 59
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay2:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 60
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->freq:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 61
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->delay_counter:[I

    aput v0, v2, v1

    .line 62
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_phase:[D

    aput-wide v3, v2, v1

    .line 64
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_stepfreq:[D

    const-wide/high16 v5, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    aput-wide v5, v2, v1

    .line 65
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->sin_step:[D

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :cond_35
    iput v0, p0, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;->used_count:I

    return-void
.end method
