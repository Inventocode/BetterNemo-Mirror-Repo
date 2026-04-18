.class final Lcom/codemao/midi/sun/SoftReverb$Comb;
.super Ljava/lang/Object;
.source "SoftReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Comb"
.end annotation


# instance fields
.field private final delaybuffer:[F

.field private final delaybuffersize:I

.field private feedback:F

.field private filtercoeff1:F

.field private filtercoeff2:F

.field private filtertemp:F

.field private rovepos:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->rovepos:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtertemp:F

    .line 127
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff1:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 128
    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff2:F

    .line 131
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffer:[F

    .line 132
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffersize:I

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/midi/sun/SoftReverb$Comb;F)F
    .registers 2

    .line 120
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->feedback:F

    return p1
.end method


# virtual methods
.method public processMix([F[F)V
    .registers 14

    .line 141
    array-length v0, p1

    .line 142
    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffersize:I

    .line 143
    iget v2, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->rovepos:I

    .line 144
    iget v3, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtertemp:F

    .line 145
    iget v4, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff1:F

    .line 146
    iget v5, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff2:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v0, :cond_2a

    .line 148
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffer:[F

    aget v9, v8, v2

    mul-float v10, v9, v5

    mul-float v3, v3, v4

    add-float/2addr v3, v10

    .line 152
    aget v10, p2, v7

    add-float/2addr v10, v9

    aput v10, p2, v7

    .line 153
    aget v9, p1, v7

    add-float/2addr v9, v3

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_27

    const/4 v2, 0x0

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 157
    :cond_2a
    iput v3, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtertemp:F

    .line 158
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->rovepos:I

    return-void
.end method

.method public processReplace([F[F)V
    .registers 14

    .line 162
    array-length v0, p1

    .line 163
    iget v1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffersize:I

    .line 164
    iget v2, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->rovepos:I

    .line 165
    iget v3, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtertemp:F

    .line 166
    iget v4, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff1:F

    .line 167
    iget v5, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff2:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v0, :cond_27

    .line 169
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->delaybuffer:[F

    aget v9, v8, v2

    mul-float v10, v9, v5

    mul-float v3, v3, v4

    add-float/2addr v3, v10

    .line 173
    aput v9, p2, v7

    .line 174
    aget v9, p1, v7

    add-float/2addr v9, v3

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_24

    const/4 v2, 0x0

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 178
    :cond_27
    iput v3, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtertemp:F

    .line 179
    iput v2, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->rovepos:I

    return-void
.end method

.method public setDamp(F)V
    .registers 3

    .line 183
    iput p1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff1:F

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    .line 184
    iget p1, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->feedback:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/codemao/midi/sun/SoftReverb$Comb;->filtercoeff2:F

    return-void
.end method
