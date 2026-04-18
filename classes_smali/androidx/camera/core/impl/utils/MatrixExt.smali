.class public final Landroidx/camera/core/impl/utils/MatrixExt;
.super Ljava/lang/Object;
.source "MatrixExt.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static denormalize([FFF)V
    .registers 5

    neg-float p1, p1

    neg-float p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private static normalize([FFF)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static preRotate([FFFF)V
    .registers 10

    .line 64
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move v2, p1

    .line 65
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 66
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    return-void
.end method
