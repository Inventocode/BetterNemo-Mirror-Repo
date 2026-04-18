.class public final Landroidx/core/view/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowCompat$Impl30;,
        Landroidx/core/view/WindowCompat$Impl16;
    }
.end annotation


# direct methods
.method public static getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "view"
        }
    .end annotation

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 136
    invoke-static {p0}, Landroidx/core/view/WindowCompat$Impl30;->getInsetsController(Landroid/view/Window;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    return-object p0

    .line 138
    :cond_b
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    return-object v0
.end method

.method public static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "window",
            "decorFitsSystemWindows"
        }
    .end annotation

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 118
    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl30;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_11

    :cond_a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 120
    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl16;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    :cond_11
    :goto_11
    return-void
.end method
