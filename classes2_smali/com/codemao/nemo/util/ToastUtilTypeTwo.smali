.class public Lcom/codemao/nemo/util/ToastUtilTypeTwo;
.super Ljava/lang/Object;
.source "ToastUtilTypeTwo.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private static createToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 7

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d030f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07bd

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a07af

    .line 26
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget-object p1, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_2f

    .line 29
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 31
    :cond_2f
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->mToast:Landroid/widget/Toast;

    .line 32
    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 33
    sget-object p0, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private static setGravity(III)V
    .registers 4

    .line 73
    sget-object v0, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method

.method public static showCenterShortToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 57
    invoke-static {p0, p1, p2, v0}, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->createToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 58
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string p2, "window"

    .line 59
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 60
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3fd999999999999aL  # 0.4

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x30

    .line 63
    invoke-static {p1, v0, p0}, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->setGravity(III)V

    .line 64
    sget-object p0, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
