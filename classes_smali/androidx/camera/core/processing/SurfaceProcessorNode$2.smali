.class synthetic Landroidx/camera/core/processing/SurfaceProcessorNode$2;
.super Ljava/lang/Object;
.source "SurfaceProcessorNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/SurfaceProcessorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$core$SurfaceOutput$GlTransformOptions:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 110
    invoke-static {}, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->values()[Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/core/processing/SurfaceProcessorNode$2;->$SwitchMap$androidx$camera$core$SurfaceOutput$GlTransformOptions:[I

    :try_start_9
    sget-object v1, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->APPLY_CROP_ROTATE_AND_MIRRORING:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/camera/core/processing/SurfaceProcessorNode$2;->$SwitchMap$androidx$camera$core$SurfaceOutput$GlTransformOptions:[I

    sget-object v1, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->USE_SURFACE_TEXTURE_TRANSFORM:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
