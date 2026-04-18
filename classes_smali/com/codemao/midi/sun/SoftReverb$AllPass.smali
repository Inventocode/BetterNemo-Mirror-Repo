.class final Lcom/codemao/midi/sun/SoftReverb$AllPass;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllPass"
.end annotation


# instance fields
.field private final delaybuffer:[F

.field private final delaybuffersize:I

.field private feedback:F

.field private rovepos:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->rovepos:I

    .line 81
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffer:[F

    .line 82
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffersize:I

    return-void
.end method


# virtual methods
.method public processReplace([F)V
    .registers 11

    .line 90
    array-length v0, p1

    .line 91
    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffersize:I

    .line 92
    iget v2, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->rovepos:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_22

    .line 94
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffer:[F

    aget v6, v5, v2

    .line 95
    aget v7, p1, v4

    sub-float v8, v6, v7

    .line 96
    aput v8, p1, v4

    .line 97
    iget v8, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->feedback:F

    mul-float v6, v6, v8

    add-float/2addr v7, v6

    aput v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1f

    const/4 v2, 0x0

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 101
    :cond_22
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->rovepos:I

    return-void
.end method

.method public processReplace([F[F)V
    .registers 12

    .line 105
    array-length v0, p1

    .line 106
    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffersize:I

    .line 107
    iget v2, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->rovepos:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v0, :cond_22

    .line 109
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->delaybuffer:[F

    aget v6, v5, v2

    .line 110
    aget v7, p1, v4

    sub-float v8, v6, v7

    .line 111
    aput v8, p2, v4

    .line 112
    iget v8, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->feedback:F

    mul-float v6, v6, v8

    add-float/2addr v7, v6

    aput v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1f

    const/4 v2, 0x0

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 116
    :cond_22
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->rovepos:I

    return-void
.end method

.method public setFeedBack(F)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$AllPass;->feedback:F

    return-void
.end method
