.class public Lcn/codemao/android/sketch/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    return-void
.end method

.method private createToast(Ljava/lang/CharSequence;I)V
    .registers 6

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$layout;->toast_sketch:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    sget v1, Lcn/codemao/android/sketch/R$id;->toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_23

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 42
    :cond_23
    new-instance p1, Landroid/widget/Toast;

    iget-object v1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setGravity(III)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public showCenterShortToast(Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->createToast(Ljava/lang/CharSequence;I)V

    .line 54
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    iget-object v1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 56
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/16 p1, 0x11

    .line 58
    invoke-direct {p0, p1, v0, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->setGravity(III)V

    .line 59
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showNoPermisson()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_no_authorization:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNotNull()V
    .registers 3

    .line 28
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/ToastUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_look_required:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void
.end method
