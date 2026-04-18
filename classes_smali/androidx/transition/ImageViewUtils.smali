.class Landroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static sDrawMatrixField:Ljava/lang/reflect/Field; = null

.field private static sDrawMatrixFieldFetched:Z = false

.field private static sTryHiddenAnimateTransform:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 6

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V

    goto :goto_75

    :cond_a
    const/4 v1, 0x0

    if-nez p1, :cond_36

    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 54
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_75

    :cond_36
    const/16 v2, 0x15

    if-lt v0, v2, :cond_3e

    .line 58
    invoke-static {p0, p1}, Landroidx/transition/ImageViewUtils;->hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto :goto_75

    .line 60
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 62
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 65
    invoke-static {}, Landroidx/transition/ImageViewUtils;->fetchDrawMatrixField()V

    .line 66
    sget-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_6d

    .line 68
    :try_start_57
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;
    :try_end_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_5d} :catch_6c

    if-nez v1, :cond_6a

    .line 70
    :try_start_5f
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
    :try_end_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_64} :catch_6a

    .line 71
    :try_start_64
    sget-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_69} :catch_6c

    goto :goto_6d

    :catch_6a
    :cond_6a
    move-object v0, v1

    goto :goto_6d

    :catch_6c
    nop

    :cond_6d
    :goto_6d
    if-eqz v0, :cond_72

    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 80
    :cond_72
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_75
    :goto_75
    return-void
.end method

.method private static fetchDrawMatrixField()V
    .registers 3

    .line 100
    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 102
    :try_start_5
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "mDrawMatrix"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 107
    :catch_12
    sput-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    :cond_14
    return-void
.end method

.method private static hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 88
    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    if-eqz v0, :cond_b

    .line 92
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p0, 0x0

    .line 94
    sput-boolean p0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    :cond_b
    :goto_b
    return-void
.end method
