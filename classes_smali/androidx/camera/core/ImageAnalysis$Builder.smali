.class public final Landroidx/camera/core/ImageAnalysis$Builder;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageOutputConfig$Builder;
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ImageOutputConfig$Builder<",
        "Landroidx/camera/core/ImageAnalysis$Builder;",
        ">;",
        "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
        "Landroidx/camera/core/ImageAnalysis;",
        "Landroidx/camera/core/impl/ImageAnalysisConfig;",
        "Landroidx/camera/core/ImageAnalysis$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 930
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V
    .registers 5

    .line 933
    const-class v0, Landroidx/camera/core/ImageAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p1, p0, Landroidx/camera/core/ImageAnalysis$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 936
    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    .line 937
    invoke-virtual {p1, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_38

    .line 938
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_38

    .line 939
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

    .line 946
    :cond_38
    :goto_38
    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetClass(Ljava/lang/Class;)Landroidx/camera/core/ImageAnalysis$Builder;

    return-void
.end method

.method static fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 2

    .line 959
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object v0
.end method


# virtual methods
.method public getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .registers 2

    .line 1097
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-object v0
.end method

.method public getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;
    .registers 3

    .line 1109
    new-instance v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object v0
.end method

.method public bridge synthetic getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .registers 2

    .line 920
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1297
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setSurfaceOccupancyPriority(I)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1383
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetAspectRatio(I)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1193
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetClass(Ljava/lang/Class;)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroidx/camera/core/ImageAnalysis;",
            ">;)",
            "Landroidx/camera/core/ImageAnalysis$Builder;"
        }
    .end annotation

    .line 1140
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    .line 1144
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

    .line 1145
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/core/ImageAnalysis$Builder;

    :cond_35
    return-object p0
.end method

.method public setTargetName(Ljava/lang/String;)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1167
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1281
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 1282
    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;
    .registers 2

    .line 920
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTargetRotation(I)Landroidx/camera/core/ImageAnalysis$Builder;
    .registers 4

    .line 1226
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setTargetRotation(I)Ljava/lang/Object;
    .registers 2

    .line 920
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object p1

    return-object p1
.end method
