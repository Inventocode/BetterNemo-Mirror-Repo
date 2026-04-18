.class public Lcom/chuanglan/shanyan_sdk/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/c;->a:Landroid/os/Handler;

    new-instance v0, Lcom/chuanglan/shanyan_sdk/utils/c$1;

    invoke-direct {v0, p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/c$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    :cond_e
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void
.end method
