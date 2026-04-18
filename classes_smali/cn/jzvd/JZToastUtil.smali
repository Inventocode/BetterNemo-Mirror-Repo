.class public Lcn/jzvd/JZToastUtil;
.super Ljava/lang/Object;
.source "JZToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jzvd/JZToastUtil$HandlerProxy;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private static createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/jzvd/R$layout;->jz_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    sget v1, Lcn/jzvd/R$id;->toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1a

    return-void

    .line 31
    :cond_1a
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    sget-object p1, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_24

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 35
    :cond_24
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 37
    sget-object p0, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 38
    sget-object p0, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcn/jzvd/JZToastUtil;->hookToast(Landroid/widget/Toast;)V

    return-void
.end method

.method public static hookToast(Landroid/widget/Toast;)V
    .registers 4

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3a

    .line 84
    const-class v0, Landroid/widget/Toast;

    :try_start_c
    const-string v1, "mTN"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    new-instance v1, Lcn/jzvd/JZToastUtil$HandlerProxy;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcn/jzvd/JZToastUtil$HandlerProxy;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private static setGravity(III)V
    .registers 4

    .line 76
    sget-object v0, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method

.method public static showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lcn/jzvd/JZToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 46
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 48
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3fa47ae147ae147bL  # 0.04

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x57

    .line 50
    invoke-static {p1, v0, p0}, Lcn/jzvd/JZToastUtil;->setGravity(III)V

    .line 51
    sget-object p0, Lcn/jzvd/JZToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
