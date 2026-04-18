.class final Lcom/codemao/midi/sun/SoftReverb$Delay;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delay"
.end annotation


# instance fields
.field private delaybuffer:[F

.field private rovepos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->rovepos:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->delaybuffer:[F

    return-void
.end method


# virtual methods
.method public processReplace([F)V
    .registers 10

    .line 56
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->delaybuffer:[F

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    array-length v1, p1

    .line 59
    array-length v0, v0

    .line 60
    iget v2, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->rovepos:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v1, :cond_1f

    .line 63
    aget v5, p1, v4

    .line 64
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->delaybuffer:[F

    aget v7, v6, v2

    aput v7, p1, v4

    .line 65
    aput v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1c

    const/4 v2, 0x0

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 69
    :cond_1f
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->rovepos:I

    return-void
.end method

.method public setDelay(I)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->delaybuffer:[F

    goto :goto_a

    .line 51
    :cond_6
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->delaybuffer:[F

    :goto_a
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$Delay;->rovepos:I

    return-void
.end method
