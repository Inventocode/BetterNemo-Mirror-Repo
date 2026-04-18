.class public final enum Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
.super Ljava/lang/Enum;
.source "SurfaceOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/SurfaceOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlTransformOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/SurfaceOutput$GlTransformOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field public static final enum APPLY_CROP_ROTATE_AND_MIRRORING:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field public static final enum USE_SURFACE_TEXTURE_TRANSFORM:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 184
    new-instance v0, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    const-string v1, "USE_SURFACE_TEXTURE_TRANSFORM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->USE_SURFACE_TEXTURE_TRANSFORM:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 190
    new-instance v1, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    const-string v3, "APPLY_CROP_ROTATE_AND_MIRRORING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->APPLY_CROP_ROTATE_AND_MIRRORING:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 182
    sput-object v3, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->$VALUES:[Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
    .registers 2

    .line 182
    const-class v0, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
    .registers 1

    .line 182
    sget-object v0, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->$VALUES:[Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v0}, [Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    return-object v0
.end method
