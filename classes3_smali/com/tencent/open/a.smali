.class public Lcom/tencent/open/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/view/Window;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x400

    .line 20
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17

    .line 23
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_17
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2f

    const/high16 v1, -0x80000000

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_34

    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_34

    :cond_2f
    const/high16 v0, 0x4000000

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_34
    :goto_34
    return-void
.end method
