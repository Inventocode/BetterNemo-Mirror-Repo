.class public final Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;
.super Ljava/lang/Object;
.source "GetBlockCountResult.kt"


# instance fields
.field private final bottom:D

.field private final height:D

.field private final left:D

.field private final right:D

.field private final top:D

.field private final width:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DDDDDDDD)V
    .registers 20

    move-object v0, p0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 42
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    move-wide v1, p3

    .line 43
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    move-wide v1, p5

    .line 44
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    move-wide v1, p7

    .line 45
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    move-wide v1, p9

    .line 46
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    move-wide v1, p11

    .line 47
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    move-wide/from16 v1, p13

    .line 48
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    move-wide/from16 v1, p15

    .line 49
    iput-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;DDDDDDDDILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-wide v4, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    goto :goto_16

    :cond_14
    move-wide/from16 v4, p3

    :goto_16
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1d

    iget-wide v6, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    goto :goto_1f

    :cond_1d
    move-wide/from16 v6, p5

    :goto_1f
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_26

    iget-wide v8, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    goto :goto_28

    :cond_26
    move-wide/from16 v8, p7

    :goto_28
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_2f

    iget-wide v10, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    goto :goto_31

    :cond_2f
    move-wide/from16 v10, p9

    :goto_31
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_38

    iget-wide v12, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    goto :goto_3a

    :cond_38
    move-wide/from16 v12, p11

    :goto_3a
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_41

    iget-wide v14, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    goto :goto_43

    :cond_41
    move-wide/from16 v14, p13

    :goto_43
    and-int/lit16 v1, v1, 0x80

    move-wide/from16 p13, v14

    if-eqz v1, :cond_4c

    iget-wide v14, v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    goto :goto_4e

    :cond_4c
    move-wide/from16 v14, p15

    :goto_4e
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-wide/from16 p15, v14

    invoke-virtual/range {p0 .. p16}, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->copy(DDDDDDDD)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    return-wide v0
.end method

.method public final component2()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    return-wide v0
.end method

.method public final component3()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    return-wide v0
.end method

.method public final component4()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    return-wide v0
.end method

.method public final component5()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    return-wide v0
.end method

.method public final component6()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    return-wide v0
.end method

.method public final component7()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    return-wide v0
.end method

.method public final component8()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    return-wide v0
.end method

.method public final copy(DDDDDDDD)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;
    .registers 35

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    new-instance v17, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;-><init>(DDDDDDDD)V

    return-object v17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_43

    return v2

    :cond_43
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4e

    return v2

    :cond_4e
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_59

    return v2

    :cond_59
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final getBottom()D
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    return-wide v0
.end method

.method public final getHeight()D
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    return-wide v0
.end method

.method public final getLeft()D
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    return-wide v0
.end method

.method public final getRight()D
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    return-wide v0
.end method

.method public final getTop()D
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    return-wide v0
.end method

.method public final getWidth()D
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    return-wide v0
.end method

.method public final getX()D
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    return-wide v0
.end method

.method public final getY()D
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetIframeData(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeData;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
