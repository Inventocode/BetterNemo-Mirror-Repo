.class public Lcom/codemao/midi/sun/SoftReverb;
.super Ljava/lang/Object;
.source "SoftReverb.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftReverb$Comb;,
        Lcom/codemao/midi/sun/SoftReverb$AllPass;,
        Lcom/codemao/midi/sun/SoftReverb$Delay;
    }
.end annotation


# instance fields
.field private allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

.field private allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

.field private combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

.field private combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

.field private damp:F

.field private delay:Lcom/codemao/midi/sun/SoftReverb$Delay;

.field private denormal_flip:Z

.field private dirty:Z

.field private dirty_damp:F

.field private dirty_gain:F

.field private dirty_predelay:F

.field private dirty_roomsize:F

.field private gain:F

.field private input:[F

.field private inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private left:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private light:Z

.field private mix:Z

.field private out:[F

.field private pre1:[F

.field private pre2:[F

.field private pre3:[F

.field private right:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private roomsize:F

.field private samplerate:F

.field private silent:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 189
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->gain:F

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->denormal_flip:Z

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    .line 205
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    .line 211
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->light:Z

    .line 279
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->silent:Z

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .registers 12

    .line 401
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ab

    const/4 v0, 0x0

    .line 402
    aget p1, p1, v0

    const/16 v0, 0x81

    if-ne p1, v0, :cond_ab

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-nez p1, :cond_93

    const p1, 0x459c4000  # 5000.0f

    const/4 p2, 0x0

    cmp-long p3, p4, v4

    if-nez p3, :cond_2a

    const p3, 0x3f8ccccd  # 1.1f

    .line 408
    iput p3, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 409
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    .line 410
    iput p2, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    const/high16 p3, 0x40800000  # 4.0f

    .line 411
    iput p3, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 412
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_2a
    const p3, 0x3fa66666  # 1.3f

    cmp-long v0, p4, v2

    if-nez v0, :cond_3d

    .line 417
    iput p3, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 418
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    .line 419
    iput p2, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    const/high16 v0, 0x40400000  # 3.0f

    .line 420
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 421
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_3d
    const-wide/16 v2, 0x2

    const/high16 v0, 0x3fc00000  # 1.5f

    cmp-long v4, p4, v2

    if-nez v4, :cond_51

    .line 426
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 427
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    .line 428
    iput p2, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    const/high16 p1, 0x40000000  # 2.0f

    .line 429
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 430
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_51
    const-wide/16 v2, 0x3

    const p1, 0x46bb8000  # 24000.0f

    const v4, 0x3fe66666  # 1.8f

    cmp-long v5, p4, v2

    if-nez v5, :cond_6a

    .line 434
    iput v4, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 435
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    const v2, 0x3ca3d70a  # 0.02f

    .line 436
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    .line 437
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 438
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_6a
    const-wide/16 v2, 0x4

    cmp-long v5, p4, v2

    if-nez v5, :cond_7d

    .line 443
    iput v4, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 444
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    const p1, 0x3cf5c28f  # 0.03f

    .line 445
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    .line 446
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 447
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_7d
    const-wide/16 v2, 0x8

    cmp-long p1, p4, v2

    if-nez p1, :cond_ab

    .line 451
    iput p3, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    const p1, 0x451c4000  # 2500.0f

    .line 452
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    .line 453
    iput p2, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    const/high16 p1, 0x40c00000  # 6.0f

    .line 454
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    .line 455
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    goto :goto_ab

    :cond_93
    cmp-long p1, p2, v2

    if-nez p1, :cond_ab

    const-wide/16 p1, 0x28

    sub-long/2addr p4, p1

    long-to-double p1, p4

    const-wide p3, 0x3f9999999999999aL  # 0.025

    mul-double p1, p1, p3

    .line 458
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    .line 459
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    :cond_ab
    :goto_ab
    return-void
.end method

.method public init(FF)V
    .registers 13

    .line 214
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->samplerate:F

    float-to-double p1, p1

    const-wide v0, 0x40e5888000000000L  # 44100.0

    div-double/2addr p1, v0

    .line 221
    new-instance v0, Lcom/codemao/midi/sun/SoftReverb$Delay;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftReverb$Delay;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->delay:Lcom/codemao/midi/sun/SoftReverb$Delay;

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/codemao/midi/sun/SoftReverb$Comb;

    .line 223
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-array v0, v0, [Lcom/codemao/midi/sun/SoftReverb$Comb;

    .line 224
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    .line 225
    new-instance v0, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v2, 0x4091700000000000L  # 1116.0

    mul-double v2, v2, p1

    double-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 226
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v3, 0x473

    int-to-double v3, v3

    mul-double v3, v3, p1

    double-to-int v3, v3

    invoke-direct {v1, v3}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v2

    .line 227
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v3, 0x4092900000000000L  # 1188.0

    mul-double v3, v3, p1

    double-to-int v3, v3

    invoke-direct {v1, v3}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 228
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v4, 0x4bb

    int-to-double v4, v4

    mul-double v4, v4, p1

    double-to-int v4, v4

    invoke-direct {v1, v4}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v3

    .line 229
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v4, 0x4093f40000000000L  # 1277.0

    mul-double v4, v4, p1

    double-to-int v4, v4

    invoke-direct {v1, v4}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 230
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v5, 0x514

    int-to-double v5, v5

    mul-double v5, v5, p1

    double-to-int v5, v5

    invoke-direct {v1, v5}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v4

    .line 231
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v5, 0x4095300000000000L  # 1356.0

    mul-double v5, v5, p1

    double-to-int v5, v5

    invoke-direct {v1, v5}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 232
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v6, 0x563

    int-to-double v6, v6

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v5

    .line 233
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v6, 0x4096380000000000L  # 1422.0

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 234
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v7, 0x5a5

    int-to-double v7, v7

    mul-double v7, v7, p1

    double-to-int v7, v7

    invoke-direct {v1, v7}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v6

    .line 235
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v7, 0x40974c0000000000L  # 1491.0

    mul-double v7, v7, p1

    double-to-int v7, v7

    invoke-direct {v1, v7}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 236
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v8, 0x5ea

    int-to-double v8, v8

    mul-double v8, v8, p1

    double-to-int v8, v8

    invoke-direct {v1, v8}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v7

    .line 237
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v7, 0x4098540000000000L  # 1557.0

    mul-double v7, v7, p1

    double-to-int v7, v7

    invoke-direct {v1, v7}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 238
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v8, 0x62c

    int-to-double v8, v8

    mul-double v8, v8, p1

    double-to-int v8, v8

    invoke-direct {v1, v8}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v7

    .line 239
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const-wide v7, 0x4099440000000000L  # 1617.0

    mul-double v7, v7, p1

    double-to-int v7, v7

    invoke-direct {v1, v7}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    const/4 v7, 0x7

    aput-object v1, v0, v7

    .line 240
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/16 v8, 0x668

    int-to-double v8, v8

    mul-double v8, v8, p1

    double-to-int v8, v8

    invoke-direct {v1, v8}, Lcom/codemao/midi/sun/SoftReverb$Comb;-><init>(I)V

    aput-object v1, v0, v7

    new-array v0, v6, [Lcom/codemao/midi/sun/SoftReverb$AllPass;

    .line 242
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-array v1, v6, [Lcom/codemao/midi/sun/SoftReverb$AllPass;

    .line 243
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    .line 244
    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const-wide v6, 0x4081600000000000L  # 556.0

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v2

    .line 245
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const/16 v6, 0x243

    int-to-double v6, v6

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v2

    .line 246
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const-wide v6, 0x407b900000000000L  # 441.0

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v3

    .line 247
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const/16 v6, 0x1d0

    int-to-double v6, v6

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v3

    .line 248
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const-wide v6, 0x4075500000000000L  # 341.0

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v4

    .line 249
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const/16 v6, 0x16c

    int-to-double v6, v6

    mul-double v6, v6, p1

    double-to-int v6, v6

    invoke-direct {v1, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v4

    .line 250
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const-wide v6, 0x406c200000000000L  # 225.0

    mul-double v6, v6, p1

    double-to-int v4, v6

    invoke-direct {v1, v4}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v5

    .line 251
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    new-instance v1, Lcom/codemao/midi/sun/SoftReverb$AllPass;

    const/16 v4, 0xf8

    int-to-double v6, v4

    mul-double p1, p1, v6

    double-to-int p1, p1

    invoke-direct {v1, p1}, Lcom/codemao/midi/sun/SoftReverb$AllPass;-><init>(I)V

    aput-object v1, v0, v5

    const/4 p1, 0x0

    .line 253
    :goto_1a7
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    array-length v0, p2

    if-ge p1, v0, :cond_1bd

    .line 254
    aget-object p2, p2, p1

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p2, v0}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->setFeedBack(F)V

    .line 255
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->setFeedBack(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a7

    :cond_1bd
    new-array v5, v3, [I

    const/16 p1, 0x81

    aput p1, v5, v2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x4

    move-object v4, p0

    .line 259
    invoke-virtual/range {v4 .. v9}, Lcom/codemao/midi/sun/SoftReverb;->globalParameterControlChange([IJJ)V

    return-void
.end method

.method public processAudio()V
    .registers 13

    .line 282
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 284
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->silent:Z

    .line 285
    :cond_b
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftReverb;->silent:Z

    if-eqz v2, :cond_1e

    .line 287
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    if-nez v0, :cond_1d

    .line 288
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 289
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    :cond_1d
    return-void

    .line 294
    :cond_1e
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftReverb;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 296
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftReverb;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    if-nez v4, :cond_30

    const/4 v4, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 298
    :goto_34
    array-length v5, v2

    .line 299
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    if-eqz v6, :cond_3c

    array-length v6, v6

    if-ge v6, v5, :cond_40

    .line 300
    :cond_3c
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    .line 302
    :cond_40
    iget v6, p0, Lcom/codemao/midi/sun/SoftReverb;->gain:F

    const v7, 0x3c9374bc  # 0.018f

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    .line 304
    iget-boolean v7, p0, Lcom/codemao/midi/sun/SoftReverb;->denormal_flip:Z

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    iput-boolean v7, p0, Lcom/codemao/midi/sun/SoftReverb;->denormal_flip:Z

    const v9, 0x1e3ce508  # 1.0E-20f

    if-eqz v7, :cond_64

    const/4 v7, 0x0

    :goto_56
    if-ge v7, v5, :cond_73

    .line 307
    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    aget v11, v2, v7

    mul-float v11, v11, v6

    add-float/2addr v11, v9

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_64
    const/4 v7, 0x0

    :goto_65
    if-ge v7, v5, :cond_73

    .line 310
    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    aget v11, v2, v7

    mul-float v11, v11, v6

    sub-float/2addr v11, v9

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 312
    :cond_73
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->delay:Lcom/codemao/midi/sun/SoftReverb$Delay;

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    invoke-virtual {v2, v6}, Lcom/codemao/midi/sun/SoftReverb$Delay;->processReplace([F)V

    .line 314
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftReverb;->light:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_146

    if-eqz v4, :cond_146

    .line 316
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->pre1:[F

    if-eqz v2, :cond_88

    array-length v2, v2

    if-ge v2, v5, :cond_94

    .line 318
    :cond_88
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->pre1:[F

    .line 319
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->pre2:[F

    .line 320
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->pre3:[F

    :cond_94
    const/4 v2, 0x0

    .line 323
    :goto_95
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    array-length v9, v7

    if-ge v2, v9, :cond_a4

    .line 324
    aget-object v7, v7, v2

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    invoke-virtual {v7, v9}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->processReplace([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 326
    :cond_a4
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    aget-object v2, v2, v1

    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->pre3:[F

    invoke-virtual {v2, v7, v9}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processReplace([F[F)V

    .line 327
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    aget-object v2, v2, v8

    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->pre3:[F

    invoke-virtual {v2, v7, v9}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processReplace([F[F)V

    .line 329
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    const/4 v7, 0x2

    aget-object v2, v2, v7

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->pre1:[F

    invoke-virtual {v2, v9, v10}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processReplace([F[F)V

    const/4 v2, 0x4

    .line 330
    :goto_c7
    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v10, v9

    sub-int/2addr v10, v7

    if-ge v2, v10, :cond_d9

    .line 331
    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v11, p0, Lcom/codemao/midi/sun/SoftReverb;->pre1:[F

    invoke-virtual {v9, v10, v11}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_c7

    :cond_d9
    const/4 v2, 0x3

    .line 333
    aget-object v2, v9, v2

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->pre2:[F

    invoke-virtual {v2, v9, v10}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processReplace([F[F)V

    const/4 v2, 0x5

    .line 334
    :goto_e4
    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v10, v9

    sub-int/2addr v10, v7

    if-ge v2, v10, :cond_f6

    .line 335
    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v11, p0, Lcom/codemao/midi/sun/SoftReverb;->pre2:[F

    invoke-virtual {v9, v10, v11}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_e4

    .line 337
    :cond_f6
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    if-nez v2, :cond_100

    .line 339
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 340
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 342
    :cond_100
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v2, v2

    sub-int/2addr v2, v7

    :goto_104
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v9, v6

    if-ge v2, v9, :cond_113

    .line 343
    aget-object v6, v6, v2

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    invoke-virtual {v6, v9, v4}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_104

    .line 344
    :cond_113
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v2, v2

    sub-int/2addr v2, v7

    :goto_117
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v7, v6

    if-ge v2, v7, :cond_126

    .line 345
    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    invoke-virtual {v6, v7, v3}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_117

    :cond_126
    const/4 v2, 0x0

    :goto_127
    if-ge v2, v5, :cond_1b7

    .line 349
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->pre1:[F

    aget v6, v6, v2

    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->pre2:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    .line 350
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->pre3:[F

    aget v7, v7, v2

    .line 351
    aget v9, v3, v2

    add-float v10, v7, v6

    add-float/2addr v9, v10

    aput v9, v3, v2

    .line 352
    aget v9, v4, v2

    sub-float/2addr v7, v6

    add-float/2addr v9, v7

    aput v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    .line 357
    :cond_146
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    if-eqz v2, :cond_14d

    array-length v2, v2

    if-ge v2, v5, :cond_151

    .line 358
    :cond_14d
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    :cond_151
    if-eqz v4, :cond_185

    .line 361
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    if-nez v2, :cond_15a

    .line 362
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 363
    :cond_15a
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    aget-object v2, v2, v1

    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v2, v7, v9}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->processReplace([F[F)V

    const/4 v2, 0x1

    .line 364
    :goto_166
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassR:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    array-length v9, v7

    if-ge v2, v9, :cond_175

    .line 365
    aget-object v7, v7, v2

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v7, v9}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->processReplace([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_166

    :cond_175
    const/4 v2, 0x0

    .line 366
    :goto_176
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v9, v7

    if-ge v2, v9, :cond_185

    .line 367
    aget-object v7, v7, v2

    iget-object v9, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v7, v9, v4}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    .line 370
    :cond_185
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    if-nez v2, :cond_18c

    .line 371
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 372
    :cond_18c
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftReverb;->input:[F

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v2, v4, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->processReplace([F[F)V

    const/4 v2, 0x1

    .line 373
    :goto_198
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftReverb;->allpassL:[Lcom/codemao/midi/sun/SoftReverb$AllPass;

    array-length v6, v4

    if-ge v2, v6, :cond_1a7

    .line 374
    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v4, v6}, Lcom/codemao/midi/sun/SoftReverb$AllPass;->processReplace([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_198

    :cond_1a7
    const/4 v2, 0x0

    .line 375
    :goto_1a8
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v6, v4

    if-ge v2, v6, :cond_1b7

    .line 376
    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb;->out:[F

    invoke-virtual {v4, v6, v3}, Lcom/codemao/midi/sun/SoftReverb$Comb;->processMix([F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a8

    :cond_1b7
    if-eqz v0, :cond_1d9

    .line 385
    iput-boolean v8, p0, Lcom/codemao/midi/sun/SoftReverb;->silent:Z

    const/4 v0, 0x0

    :goto_1bc
    if-ge v0, v5, :cond_1d9

    .line 388
    aget v2, v3, v0

    float-to-double v6, v2

    const-wide v8, 0x3ddb7cdfd9d7bdbbL  # 1.0E-10

    cmpl-double v2, v6, v8

    if-gtz v2, :cond_1d7

    const-wide v8, -0x4224832026284245L  # -1.0E-10

    cmpg-double v2, v6, v8

    if-gez v2, :cond_1d4

    goto :goto_1d7

    :cond_1d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bc

    .line 391
    :cond_1d7
    :goto_1d7
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReverb;->silent:Z

    :cond_1d9
    return-void
.end method

.method public processControlLogic()V
    .registers 2

    .line 467
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty:Z

    .line 469
    iget v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_roomsize:F

    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftReverb;->setRoomSize(F)V

    .line 470
    iget v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_damp:F

    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftReverb;->setDamp(F)V

    .line 471
    iget v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_predelay:F

    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftReverb;->setPreDelay(F)V

    .line 472
    iget v0, p0, Lcom/codemao/midi/sun/SoftReverb;->dirty_gain:F

    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftReverb;->setGain(F)V

    :cond_1b
    return-void
.end method

.method public setDamp(F)V
    .registers 8

    .line 494
    iget v0, p0, Lcom/codemao/midi/sun/SoftReverb;->samplerate:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L  # 6.283185307179586

    mul-double v0, v0, v2

    .line 495
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    sub-double/2addr v2, v0

    mul-double v0, v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v4

    .line 496
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_27

    .line 498
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    .line 499
    :cond_27
    iget p1, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_30

    .line 500
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    :cond_30
    const/4 p1, 0x0

    .line 503
    :goto_31
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v1, v0

    if-ge p1, v1, :cond_49

    .line 504
    aget-object v0, v0, p1

    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftReverb$Comb;->setDamp(F)V

    .line 505
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb;->damp:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftReverb$Comb;->setDamp(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_49
    return-void
.end method

.method public setGain(F)V
    .registers 2

    .line 490
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->gain:F

    return-void
.end method

.method public setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 3

    if-nez p1, :cond_4

    .line 265
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftReverb;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    return-void
.end method

.method public setLightMode(Z)V
    .registers 2

    .line 512
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftReverb;->light:Z

    return-void
.end method

.method public setMixMode(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftReverb;->mix:Z

    return-void
.end method

.method public setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 4

    if-nez p1, :cond_4

    .line 270
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftReverb;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 272
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftReverb;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_9
    return-void
.end method

.method public setPreDelay(F)V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->delay:Lcom/codemao/midi/sun/SoftReverb$Delay;

    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb;->samplerate:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/SoftReverb$Delay;->setDelay(I)V

    return-void
.end method

.method public setRoomSize(F)V
    .registers 4

    const v0, 0x3e2e147b  # 0.17f

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p1, v0

    .line 477
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb;->roomsize:F

    const/4 p1, 0x0

    .line 479
    :goto_a
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combL:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    array-length v1, v0

    if-ge p1, v1, :cond_22

    .line 480
    aget-object v0, v0, p1

    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb;->roomsize:F

    invoke-static {v0, v1}, Lcom/codemao/midi/sun/SoftReverb$Comb;->access$002(Lcom/codemao/midi/sun/SoftReverb$Comb;F)F

    .line 481
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb;->combR:[Lcom/codemao/midi/sun/SoftReverb$Comb;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb;->roomsize:F

    invoke-static {v0, v1}, Lcom/codemao/midi/sun/SoftReverb$Comb;->access$002(Lcom/codemao/midi/sun/SoftReverb$Comb;F)F

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method
