.class public Lcom/codemao/midi/sun/ModelStandardTransform;
.super Ljava/lang/Object;
.source "ModelStandardTransform.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelTransform;


# instance fields
.field private direction:Z

.field private polarity:Z

.field private transform:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    .line 65
    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    .line 66
    iput-boolean p2, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    .line 54
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    .line 55
    iput v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    .line 71
    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    .line 72
    iput-boolean p2, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    .line 73
    iput p3, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    return-void
.end method


# virtual methods
.method public getDirection()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    return v0
.end method

.method public getPolarity()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    return v0
.end method

.method public getTransform()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    return v0
.end method

.method public setDirection(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    return-void
.end method

.method public setPolarity(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    return-void
.end method

.method public setTransform(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    return-void
.end method

.method public transform(D)D
    .registers 15

    .line 79
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->direction:Z

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    if-ne v0, v1, :cond_9

    sub-double p1, v2, p1

    .line 81
    :cond_9
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->polarity:Z

    if-ne v0, v1, :cond_12

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    mul-double p1, p1, v4

    sub-double/2addr p1, v2

    .line 83
    :cond_12
    iget v4, p0, Lcom/codemao/midi/sun/ModelStandardTransform;->transform:I

    const-wide/high16 v5, 0x4024000000000000L  # 10.0

    const-wide v7, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    const-wide/16 v9, 0x0

    if-eq v4, v1, :cond_64

    const/4 v11, 0x2

    if-eq v4, v11, :cond_41

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2e

    const/4 v0, 0x4

    if-eq v4, v0, :cond_29

    return-wide p1

    .line 108
    :cond_29
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1

    :cond_2e
    if-ne v0, v1, :cond_38

    cmpl-double v0, p1, v9

    if-lez v0, :cond_35

    goto :goto_37

    :cond_35
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    :goto_37
    return-wide v2

    :cond_38
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    cmpl-double v4, p1, v0

    if-lez v4, :cond_3f

    goto :goto_40

    :cond_3f
    move-wide v2, v9

    :goto_40
    return-wide v2

    .line 94
    :cond_41
    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v7, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v7, v7, p1

    add-double/2addr v7, v2

    cmpg-double p1, v7, v9

    if-gez p1, :cond_5b

    move-wide v2, v9

    goto :goto_61

    :cond_5b
    cmpl-double p1, v7, v2

    if-lez p1, :cond_60

    goto :goto_61

    :cond_60
    move-wide v2, v7

    :goto_61
    mul-double v0, v0, v2

    return-wide v0

    .line 85
    :cond_64
    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v7, v4

    neg-double v4, v7

    sub-double p1, v2, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    cmpg-double p1, v4, v9

    if-gez p1, :cond_80

    move-wide v2, v9

    goto :goto_86

    :cond_80
    cmpl-double p1, v4, v2

    if-lez p1, :cond_85

    goto :goto_86

    :cond_85
    move-wide v2, v4

    :goto_86
    mul-double v0, v0, v2

    return-wide v0
.end method
