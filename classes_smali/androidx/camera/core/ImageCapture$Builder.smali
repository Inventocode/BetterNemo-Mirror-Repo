.class public final Landroidx/camera/core/ImageCapture$Builder;
.super Ljava/lang/Object;
.source "ImageCapture.java"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;
.implements Landroidx/camera/core/impl/ImageOutputConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
        "Landroidx/camera/core/ImageCapture;",
        "Landroidx/camera/core/impl/ImageCaptureConfig;",
        "Landroidx/camera/core/ImageCapture$Builder;",
        ">;",
        "Landroidx/camera/core/impl/ImageOutputConfig$Builder<",
        "Landroidx/camera/core/ImageCapture$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2676
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V
    .registers 5

    .line 2679
    const-class v0, Landroidx/camera/core/ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2680
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 2682
    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    .line 2683
    invoke-virtual {p1, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_38

    .line 2684
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_38

    .line 2685
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target class configuration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2692
    :cond_38
    :goto_38
    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture$Builder;->setTargetClass(Ljava/lang/Class;)Landroidx/camera/core/ImageCapture$Builder;

    return-void
.end method

.method public static fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageCapture$Builder;
    .registers 2

    .line 2705
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/camera/core/ImageCapture;
    .registers 8

    .line 2757
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2758
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_22

    .line 2759
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use both setTargetResolution and setTargetAspectRatio on the same config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2766
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_50

    .line 2769
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_CAPTURE_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v4, v5, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    const-string v5, "Cannot set buffer format with CaptureProcessor defined."

    .line 2768
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2771
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v4, v5, v0}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7b

    .line 2773
    :cond_50
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_CAPTURE_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v4, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 2774
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v4, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/16 v5, 0x23

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_7b

    .line 2776
    :cond_6c
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v4, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 2780
    :goto_7b
    new-instance v0, Landroidx/camera/core/ImageCapture;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/camera/core/ImageCapture;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;)V

    .line 2786
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v4

    sget-object v5, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v4, v5, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-eqz v2, :cond_a2

    .line 2789
    new-instance v4, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 2790
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v4, v5, v2}, Landroid/util/Rational;-><init>(II)V

    .line 2789
    invoke-virtual {v0, v4}, Landroidx/camera/core/ImageCapture;->setCropAspectRatio(Landroid/util/Rational;)V

    .line 2794
    :cond_a2
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v2

    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_MAX_CAPTURE_STAGES:Landroidx/camera/core/impl/Config$Option;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "Maximum outstanding image count must be at least 1"

    .line 2795
    invoke-static {v2, v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v3, :cond_bf

    const/4 v1, 0x1

    :cond_bf
    invoke-static {v1, v4}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2800
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    .line 2801
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 2800
    invoke-interface {v1, v2, v4}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    const-string v2, "The IO executor can\'t be null"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_FLASH_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 2804
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_102

    .line 2806
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_119

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_119

    .line 2807
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_102

    goto :goto_119

    .line 2808
    :cond_102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The flash mode is not allowed to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_119
    :goto_119
    return-object v0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .registers 2

    .line 2730
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-object v0
.end method

.method public getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;
    .registers 3

    .line 2742
    new-instance v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object v0
.end method

.method public bridge synthetic getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .registers 2

    .line 2666
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 2833
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setSurfaceOccupancyPriority(I)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 3234
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetAspectRatio(I)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 2988
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetClass(Ljava/lang/Class;)Landroidx/camera/core/ImageCapture$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroidx/camera/core/ImageCapture;",
            ">;)",
            "Landroidx/camera/core/ImageCapture$Builder;"
        }
    .end annotation

    .line 2933
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 2936
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    .line 2937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2938
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/core/ImageCapture$Builder;

    :cond_35
    return-object p0
.end method

.method public setTargetName(Ljava/lang/String;)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 2960
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 3068
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;
    .registers 2

    .line 2666
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;
    .registers 4

    .line 3021
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setTargetRotation(I)Ljava/lang/Object;
    .registers 2

    .line 2666
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object p1

    return-object p1
.end method
