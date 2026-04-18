.class public final Landroidx/camera/core/ImageAnalysis$Defaults;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

.field private static final DEFAULT_TARGET_RESOLUTION:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 897
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_TARGET_RESOLUTION:Landroid/util/Size;

    .line 904
    new-instance v1, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 905
    invoke-virtual {v1, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setDefaultResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 906
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 907
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;
    .registers 2

    .line 915
    sget-object v0, Landroidx/camera/core/ImageAnalysis$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/ImageAnalysisConfig;

    return-object v0
.end method
