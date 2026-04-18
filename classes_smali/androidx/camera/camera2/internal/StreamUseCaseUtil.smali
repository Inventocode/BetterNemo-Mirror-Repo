.class public final Landroidx/camera/camera2/internal/StreamUseCaseUtil;
.super Ljava/lang/Object;
.source "StreamUseCaseUtil.java"


# direct methods
.method public static getStreamUseCaseFromUseCaseConfigs(Ljava/util/Collection;Ljava/util/Collection;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;)J"
        }
    .end annotation

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_9

    const-wide/16 p0, -0x1

    return-wide p0

    .line 60
    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_12

    return-wide v1

    .line 64
    :cond_12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SessionConfig;

    .line 65
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_16

    return-wide v1

    .line 71
    :cond_2a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 72
    instance-of v6, v5, Landroidx/camera/core/impl/ImageAnalysisConfig;

    if-eqz v6, :cond_43

    return-wide v1

    .line 77
    :cond_43
    instance-of v6, v5, Landroidx/camera/core/impl/PreviewConfig;

    if-eqz v6, :cond_49

    const/4 v4, 0x1

    goto :goto_32

    .line 82
    :cond_49
    instance-of v6, v5, Landroidx/camera/core/impl/ImageCaptureConfig;

    const-wide/16 v7, 0x4

    if-eqz v6, :cond_54

    if-eqz v3, :cond_52

    return-wide v7

    :cond_52
    const/4 v0, 0x1

    goto :goto_32

    .line 92
    :cond_54
    instance-of v5, v5, Landroidx/camera/core/impl/VideoCaptureConfig;

    if-eqz v5, :cond_32

    if-eqz v0, :cond_5b

    return-wide v7

    :cond_5b
    const/4 v3, 0x1

    goto :goto_32

    :cond_5d
    if-eqz v0, :cond_62

    const-wide/16 p0, 0x2

    return-wide p0

    :cond_62
    if-eqz v3, :cond_67

    const-wide/16 p0, 0x3

    return-wide p0

    :cond_67
    if-nez v4, :cond_6a

    return-wide v1

    :cond_6a
    const-wide/16 p0, 0x1

    return-wide p0
.end method
