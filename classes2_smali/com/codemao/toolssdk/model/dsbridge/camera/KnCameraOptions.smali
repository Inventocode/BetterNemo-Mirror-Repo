.class public final Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;
.super Ljava/lang/Object;
.source "KnCameraData.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->copy(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getMaxSize()I
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getHeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_13

    :cond_f
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v0

    :goto_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getWidth()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_26

    :cond_22
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v1

    :goto_26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final getMiniSize()I
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getHeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_13

    :cond_f
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v0

    :goto_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getWidth()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_26

    :cond_22
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v1

    :goto_26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final getStageSize()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final isActor()Z
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    const-string v1, "actor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isLandscape()Z
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getWidth()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->getHeight()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1f
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public final isScene()Z
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    const-string v1, "scene"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnCameraOptions(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->stageSize:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
