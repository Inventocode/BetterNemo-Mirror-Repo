.class public Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;
.super Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;
.source "QuiteEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;
    }
.end annotation


# instance fields
.field private chk:Landroid/widget/CheckBox;

.field private onDissMissListener:Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;

.field private viewById:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$ffk6edJ5LNgfyo8jxwftgsmx6fU(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nrlVcilUaR0CgexUzRyd3Ppsf3Q(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private clipViewCornerByDp(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 86
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$1;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 3

    .line 60
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->onDissMissListener:Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;

    if-eqz p1, :cond_f

    .line 61
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->chk:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;->onClose(Z)V

    .line 62
    :cond_f
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .registers 3

    .line 66
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->onDissMissListener:Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;

    if-eqz p1, :cond_f

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->chk:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;->onConfirm(Z)V

    .line 68
    :cond_f
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 42
    sget v0, Lcn/codemao/android/sketch/R$layout;->dialog_exit_edit:I

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 54
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onCreate()V

    .line 55
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->tvCancel:Landroid/widget/TextView;

    .line 56
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->tvConfirm:Landroid/widget/TextView;

    .line 57
    sget v0, Lcn/codemao/android/sketch/R$id;->chk:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->chk:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcn/codemao/android/sketch/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->viewById:Landroid/view/View;

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_46

    .line 73
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->clipViewCornerByDp(Landroid/view/View;)V

    :cond_46
    return-void
.end method

.method protected onDismiss()V
    .registers 4

    .line 48
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onDismiss()V

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->chk:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "show_quite"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/sketch/utils/SpUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnDismissListener(Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;)Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;
    .registers 2

    .line 79
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog;->onDissMissListener:Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;

    return-object p0
.end method
