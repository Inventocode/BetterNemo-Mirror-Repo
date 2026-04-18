.class public final Landroidx/camera/core/internal/utils/SizeUtil;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# static fields
.field public static final RESOLUTION_1080P:Landroid/util/Size;

.field public static final RESOLUTION_480P:Landroid/util/Size;

.field public static final RESOLUTION_VGA:Landroid/util/Size;

.field public static final RESOLUTION_ZERO:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    .line 30
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    .line 31
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 32
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    return-void
.end method

.method public static getArea(Landroid/util/Size;)I
    .registers 2

    .line 41
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method
