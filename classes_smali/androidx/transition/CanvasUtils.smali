.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.java"


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    goto :goto_63

    :cond_7
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_15

    if-eqz p1, :cond_11

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_63

    .line 47
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_63

    :cond_15
    const/16 v1, 0x1c

    if-eq v0, v1, :cond_64

    .line 53
    sget-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    .line 55
    :try_start_1f
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertReorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertInorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_3d} :catch_3d

    .line 64
    :catch_3d
    sput-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    :cond_3f
    if-eqz p1, :cond_4d

    .line 67
    :try_start_41
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4d

    new-array v2, v1, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catch_4b
    move-exception p0

    goto :goto_59

    :cond_4d
    :goto_4d
    if-nez p1, :cond_63

    .line 70
    sget-object p1, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_63

    new-array v0, v1, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_58} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_58} :catch_4b

    goto :goto_63

    .line 76
    :goto_59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_63
    :cond_63
    :goto_63
    return-void

    .line 51
    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method doesn\'t work on Pie!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
