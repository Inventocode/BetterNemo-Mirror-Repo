.class public Lcom/codemao/midi/sun/SoftEnvelopeGenerator;
.super Ljava/lang/Object;
.source "SoftEnvelopeGenerator.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftProcess;


# instance fields
.field private active:[[D

.field private attack:[[D

.field private attack2:[[D

.field private control_time:D

.field private decay:[[D

.field private decay2:[[D

.field private delay:[[D

.field private hold:[[D

.field max_count:I

.field private on:[[D

.field private out:[[D

.field private release:[[D

.field private release2:[[D

.field private shutdown:[[D

.field private stage:[I

.field private stage_count:[I

.field private stage_ix:[I

.field private stage_v:[D

.field private sustain:[[D

.field used_count:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 32
    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    .line 43
    iput v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    const/4 v2, 0x0

    .line 44
    iput v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    new-array v3, v1, [I

    .line 45
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    new-array v3, v1, [I

    .line 46
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    new-array v3, v1, [D

    .line 47
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_v:[D

    new-array v3, v1, [I

    .line 48
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v5, v4, v5

    aput v1, v4, v2

    .line 49
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    .line 50
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    .line 51
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    .line 52
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->delay:[[D

    .line 53
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack:[[D

    .line 54
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->hold:[[D

    .line 55
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay:[[D

    .line 56
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->sustain:[[D

    .line 57
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release:[[D

    .line 58
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->shutdown:[[D

    .line 59
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release2:[[D

    .line 60
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v4, v3, [I

    aput v5, v4, v5

    aput v1, v4, v2

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack2:[[D

    .line 61
    iget v1, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->max_count:I

    new-array v3, v3, [I

    aput v5, v3, v5

    aput v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay2:[[D

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    .line 89
    iget v0, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    if-lt p1, v0, :cond_8

    add-int/lit8 v0, p1, 0x1

    .line 90
    iput v0, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    :cond_8
    if-nez p2, :cond_f

    .line 92
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_f
    const-string v0, "on"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_1c
    const-string v0, "active"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 96
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_29
    const-string v0, "delay"

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 98
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->delay:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_36
    const-string v0, "attack"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 100
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_43
    const-string v0, "hold"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 102
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->hold:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_50
    const-string v0, "decay"

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 104
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_5d
    const-string v0, "sustain"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 106
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->sustain:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_6a
    const-string v0, "release"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 108
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_77
    const-string v0, "shutdown"

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 110
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_84
    const-string v0, "attack2"

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 112
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack2:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_91
    const-string v0, "decay2"

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 114
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay2:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_9e
    const-string v0, "release2"

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 116
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release2:[[D

    aget-object p1, p2, p1

    return-object p1

    :cond_ab
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 6

    .line 84
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    .line 85
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->processControlLogic()V

    return-void
.end method

.method public processControlLogic()V
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 122
    :goto_4
    iget v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    if-ge v2, v3, :cond_395

    .line 124
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aget v4, v3, v2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_12

    goto/16 :goto_391

    .line 127
    :cond_12
    aget v4, v3, v2

    const-wide/high16 v6, -0x4020000000000000L  # -0.5

    const-wide v8, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    const/4 v12, 0x7

    const/4 v13, 0x6

    const-wide v16, 0x4092c00000000000L  # 1200.0

    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    const-wide/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L  # 1.0

    if-lez v4, :cond_eb

    aget v3, v3, v2

    if-ge v3, v13, :cond_eb

    .line 128
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object v4, v3, v2

    aget-wide v22, v4, v1

    cmpg-double v4, v22, v10

    if-gez v4, :cond_eb

    .line 129
    aget-object v3, v3, v2

    aget-wide v22, v3, v1

    cmpg-double v3, v22, v6

    if-gez v3, :cond_72

    .line 130
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v4, v4, v2

    aget-wide v22, v4, v1

    div-double v10, v22, v16

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v10, v6

    double-to-int v4, v10

    aput v4, v3, v2

    .line 132
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v3, v2

    if-gez v4, :cond_5e

    .line 133
    aput v1, v3, v2

    .line 134
    :cond_5e
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_v:[D

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v2

    aget-wide v6, v4, v1

    aput-wide v6, v3, v2

    .line 135
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v3, v2

    .line 136
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v12, v3, v2

    goto/16 :goto_eb

    .line 138
    :cond_72
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release2:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v1

    cmpg-double v3, v6, v8

    if-gez v3, :cond_a2

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release:[[D

    aget-object v4, v3, v2

    aget-wide v6, v4, v1

    cmpg-double v4, v6, v18

    if-gez v4, :cond_a2

    aget-object v3, v3, v2

    aget-wide v6, v3, v1

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 140
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v3, v3, v2

    aput-wide v18, v3, v1

    .line 141
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object v3, v3, v2

    aput-wide v18, v3, v1

    .line 142
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v5, v3, v2

    goto/16 :goto_391

    .line 146
    :cond_a2
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release:[[D

    aget-object v4, v4, v2

    aget-wide v6, v4, v1

    div-double v6, v6, v16

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-wide v10, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v6, v10

    double-to-int v4, v6

    aput v4, v3, v2

    .line 148
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v3, v2

    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release2:[[D

    aget-object v6, v6, v2

    aget-wide v24, v6, v1

    const-wide v6, 0x408f400000000000L  # 1000.0

    mul-double v10, v10, v6

    div-double v6, v24, v10

    double-to-int v6, v6

    add-int/2addr v4, v6

    aput v4, v3, v2

    .line 150
    aget v4, v3, v2

    if-gez v4, :cond_d3

    .line 151
    aput v1, v3, v2

    .line 153
    :cond_d3
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v4, v2

    .line 155
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v6, v6, v2

    aget-wide v10, v6, v1

    sub-double v6, v20, v10

    .line 156
    aget v3, v3, v2

    int-to-double v10, v3

    mul-double v10, v10, v6

    double-to-int v3, v10

    aput v3, v4, v2

    .line 158
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v13, v3, v2

    .line 163
    :cond_eb
    :goto_eb
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aget v4, v3, v2

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v10, 0x1

    if-eqz v4, :cond_2ea

    if-eq v4, v10, :cond_31c

    if-eq v4, v6, :cond_2a0

    const/4 v6, 0x4

    if-eq v4, v7, :cond_25a

    if-eq v4, v6, :cond_20e

    if-eq v4, v13, :cond_139

    if-eq v4, v12, :cond_103

    goto/16 :goto_391

    .line 282
    :cond_103
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v6, v4, v2

    add-int/2addr v6, v10

    aput v6, v4, v2

    .line 283
    aget v6, v4, v2

    iget-object v7, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v8, v7, v2

    if-lt v6, v8, :cond_122

    .line 284
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 285
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 286
    aput v5, v3, v2

    goto/16 :goto_391

    .line 288
    :cond_122
    aget v3, v4, v2

    int-to-double v3, v3

    aget v5, v7, v2

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 289
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v5, v5, v2

    sub-double v20, v20, v3

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_v:[D

    aget-wide v6, v3, v2

    mul-double v20, v20, v6

    aput-wide v20, v5, v1

    goto/16 :goto_391

    .line 244
    :cond_139
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v9, v4, v2

    add-int/2addr v9, v10

    aput v9, v4, v2

    .line 245
    aget v9, v4, v2

    iget-object v10, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v11, v10, v2

    if-lt v9, v11, :cond_158

    .line 246
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 247
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 248
    aput v5, v3, v2

    goto/16 :goto_391

    .line 250
    :cond_158
    aget v3, v4, v2

    int-to-double v3, v3

    aget v5, v10, v2

    int-to-double v6, v5

    div-double/2addr v3, v6

    .line 251
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v5, v5, v2

    sub-double v3, v20, v3

    aput-wide v3, v5, v1

    .line 253
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    const-wide/high16 v6, -0x4020000000000000L  # -0.5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_19f

    .line 254
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    div-double v4, v4, v16

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v10, v2

    .line 256
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v3, v2

    if-gez v4, :cond_18d

    .line 257
    aput v1, v3, v2

    .line 258
    :cond_18d
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_v:[D

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v1

    aput-wide v5, v3, v2

    .line 259
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v3, v2

    .line 260
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v12, v3, v2

    .line 264
    :cond_19f
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_391

    .line 265
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    const-wide v6, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double v4, v4, v6

    .line 266
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v1

    cmpl-double v3, v6, v4

    if-lez v3, :cond_391

    .line 267
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    const/4 v6, 0x4

    aput v6, v3, v2

    .line 268
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    div-double v7, v7, v16

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-wide v8, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v3, v2

    .line 270
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v3, v2

    iget-object v7, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v7, v7, v2

    aget-wide v10, v7, v1

    const-wide v12, 0x408f400000000000L  # 1000.0

    mul-double v8, v8, v12

    div-double/2addr v10, v8

    double-to-int v7, v10

    add-int/2addr v6, v7

    aput v6, v3, v2

    .line 272
    aget v6, v3, v2

    if-gez v6, :cond_1f7

    .line 273
    aput v1, v3, v2

    .line 274
    :cond_1f7
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    sub-double v7, v7, v20

    sub-double v4, v4, v20

    div-double/2addr v7, v4

    .line 275
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v3, v3, v2

    int-to-double v5, v3

    mul-double v5, v5, v7

    double-to-int v3, v5

    aput v3, v4, v2

    goto/16 :goto_391

    .line 226
    :cond_20e
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v6, v4, v2

    add-int/2addr v6, v10

    aput v6, v4, v2

    .line 227
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    const-wide v9, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double v7, v7, v9

    .line 228
    aget v6, v4, v2

    iget-object v11, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v12, v11, v2

    if-lt v6, v12, :cond_245

    .line 229
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v6, v4, v2

    aput-wide v7, v6, v1

    const/4 v6, 0x5

    .line 230
    aput v6, v3, v2

    cmpg-double v6, v7, v9

    if-gez v6, :cond_391

    .line 232
    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 233
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object v4, v4, v2

    aput-wide v18, v4, v1

    .line 234
    aput v5, v3, v2

    goto/16 :goto_391

    .line 237
    :cond_245
    aget v3, v4, v2

    int-to-double v3, v3

    aget v5, v11, v2

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 238
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v5, v5, v2

    sub-double v20, v20, v3

    mul-double v7, v7, v3

    add-double v20, v20, v7

    aput-wide v20, v5, v1

    goto/16 :goto_391

    .line 214
    :cond_25a
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v5, v4, v2

    add-int/2addr v5, v10

    aput v5, v4, v2

    .line 215
    aget v4, v4, v2

    iget-object v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v6, v5, v2

    if-lt v4, v6, :cond_391

    const/4 v4, 0x4

    .line 216
    aput v4, v3, v2

    .line 217
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v1

    div-double v6, v6, v16

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v3, v6

    double-to-int v3, v3

    aput v3, v5, v2

    .line 219
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v3, v2

    iget-object v5, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v1

    const-wide v10, 0x408f400000000000L  # 1000.0

    mul-double v6, v6, v10

    div-double/2addr v8, v6

    double-to-int v5, v8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 220
    aget v4, v3, v2

    if-gez v4, :cond_29a

    .line 221
    aput v1, v3, v2

    .line 222
    :cond_29a
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v3, v2

    goto/16 :goto_391

    .line 198
    :cond_2a0
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v5, v4, v2

    add-int/2addr v5, v10

    aput v5, v4, v2

    .line 199
    aget v5, v4, v2

    iget-object v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v8, v6, v2

    if-lt v5, v8, :cond_2b9

    .line 200
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v4, v4, v2

    aput-wide v20, v4, v1

    .line 201
    aput v7, v3, v2

    goto/16 :goto_391

    .line 204
    :cond_2b9
    aget v3, v4, v2

    int-to-double v3, v3

    aget v5, v6, v2

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    const-wide/high16 v7, 0x4024000000000000L  # 10.0

    .line 205
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double v5, v5, v3

    add-double v5, v5, v20

    cmpg-double v3, v5, v18

    if-gez v3, :cond_2d9

    goto :goto_2e2

    :cond_2d9
    cmpl-double v3, v5, v20

    if-lez v3, :cond_2e0

    move-wide/from16 v18, v20

    goto :goto_2e2

    :cond_2e0
    move-wide/from16 v18, v5

    .line 210
    :goto_2e2
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v3, v3, v2

    aput-wide v18, v3, v1

    goto/16 :goto_391

    .line 165
    :cond_2ea
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->active:[[D

    aget-object v4, v4, v2

    aput-wide v20, v4, v1

    .line 166
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object v4, v4, v2

    aget-wide v11, v4, v1

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    cmpg-double v13, v11, v4

    if-gez v13, :cond_2fe

    goto/16 :goto_391

    .line 168
    :cond_2fe
    aput v10, v3, v2

    .line 169
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->delay:[[D

    aget-object v4, v4, v2

    aget-wide v11, v4, v1

    div-double v11, v11, v16

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v11, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v4, v11

    double-to-int v4, v4

    aput v4, v3, v2

    .line 171
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v4, v3, v2

    if-gez v4, :cond_31c

    .line 172
    aput v1, v3, v2

    .line 174
    :cond_31c
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aget v4, v3, v2

    if-nez v4, :cond_38c

    .line 175
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    .line 176
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack2:[[D

    aget-object v3, v3, v2

    aget-wide v10, v3, v1

    cmpg-double v3, v10, v8

    if-gez v3, :cond_35f

    cmpg-double v3, v4, v18

    if-gez v3, :cond_35f

    .line 179
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_35f

    .line 180
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v3, v3, v2

    aput-wide v20, v3, v1

    .line 181
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v7, v3, v2

    .line 182
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    iget-object v4, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->hold:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v1

    div-double v5, v5, v16

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v3, v2

    .line 184
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v3, v2

    goto :goto_391

    .line 186
    :cond_35f
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v6, v3, v2

    .line 187
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    div-double v4, v4, v16

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->control_time:D

    div-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v3, v2

    .line 189
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_count:[I

    aget v4, v3, v2

    const-wide v8, 0x408f400000000000L  # 1000.0

    mul-double v6, v6, v8

    div-double/2addr v10, v6

    double-to-int v5, v10

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 190
    aget v4, v3, v2

    if-gez v4, :cond_387

    .line 191
    aput v1, v3, v2

    .line 192
    :cond_387
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage_ix:[I

    aput v1, v3, v2

    goto :goto_391

    .line 195
    :cond_38c
    aget v4, v3, v2

    sub-int/2addr v4, v10

    aput v4, v3, v2

    :cond_391
    :goto_391
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_395
    return-void
.end method

.method public reset()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    :goto_2
    iget v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    if-ge v1, v2, :cond_57

    .line 66
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->stage:[I

    aput v0, v2, v1

    .line 67
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->on:[[D

    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 68
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->out:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 69
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->delay:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 70
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 71
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->hold:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 72
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->sustain:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 74
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 75
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->shutdown:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 76
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->attack2:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 77
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->decay2:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    .line 78
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->release2:[[D

    aget-object v2, v2, v1

    aput-wide v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_57
    iput v0, p0, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;->used_count:I

    return-void
.end method
