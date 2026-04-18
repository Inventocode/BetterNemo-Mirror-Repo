.class public final Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;
.super Ljava/lang/Object;
.source "KnCameraData.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final height:Ljava/lang/Float;

.field private final width:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->copy(Ljava/lang/Float;Ljava/lang/Float;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    return-object v0
.end method

.method public final component2()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(Ljava/lang/Float;Ljava/lang/Float;)Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getHeight()Ljava/lang/Float;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    return-object v0
.end method

.method public final getSafeHeight()Ljava/lang/Number;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_e
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public final getSafeWidth()Ljava/lang/Number;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_e
    invoke-static {}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraDataKt;->access$getDefaultSize$p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public final getWidth()Ljava/lang/Float;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnCameraOptionSize(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->width:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptionSize;->height:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
