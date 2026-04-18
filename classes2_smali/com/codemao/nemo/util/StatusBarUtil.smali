.class public Lcom/codemao/nemo/util/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# direct methods
.method public static setFlymeStatusBarTextMode(Landroid/app/Activity;Z)Z
    .registers 7

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_38

    .line 111
    :try_start_7
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 112
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 114
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_2f

    or-int p1, v4, v2

    goto :goto_31

    :cond_2f
    not-int p1, v2

    and-int/2addr p1, v4

    .line 125
    :goto_31
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 126
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public static setMIUIStatusBarTextMode(Landroid/app/Activity;Z)Z
    .registers 11

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_72

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_c
    const-string v4, "android.view.MiuiWindowManager$LayoutParams"

    .line 148
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "setExtraFlags"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 151
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v8, v7, v1

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz p1, :cond_3f

    new-array v5, v6, [Ljava/lang/Object;

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_3f
    new-array v5, v6, [Ljava/lang/Object;

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_50} :catch_72

    .line 159
    :goto_50
    :try_start_50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_73

    if-eqz p1, :cond_66

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_73

    .line 166
    :cond_66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_71} :catch_73

    goto :goto_73

    :catch_72
    :cond_72
    const/4 v1, 0x0

    :catch_73
    :cond_73
    :goto_73
    return v1
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .registers 4

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_29

    :cond_16
    const/16 v1, 0x13

    if-lt v0, v1, :cond_29

    .line 56
    invoke-static {p0}, Lcom/codemao/nemo/util/StatusBarUtil;->setTranslucentStatus(Landroid/app/Activity;)V

    .line 58
    new-instance v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintResource(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static setStatusBarMode(Landroid/app/Activity;ZI)V
    .registers 4

    if-nez p1, :cond_6

    .line 75
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StatusBarUtil;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_3e

    .line 78
    :cond_6
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StatusBarUtil;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 80
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_3e

    .line 81
    invoke-static {}, Lcom/codemao/nemo/util/OSUtil;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/StatusBarUtil;->setMIUIStatusBarTextMode(Landroid/app/Activity;Z)Z

    goto :goto_3e

    .line 84
    :cond_19
    invoke-static {}, Lcom/codemao/nemo/util/OSUtil;->isFlyme()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 86
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/StatusBarUtil;->setFlymeStatusBarTextMode(Landroid/app/Activity;Z)Z

    goto :goto_3e

    :cond_23
    const/16 p1, 0x17

    if-lt p2, p1, :cond_3e

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, -0x80000000

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, 0x4000000

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 92
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public static setTranslucentStatus(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_22

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_2d

    :cond_22
    const/16 v2, 0x13

    if-lt v0, v2, :cond_2d

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 38
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_2d
    :goto_2d
    return-void
.end method
