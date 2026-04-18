.class public Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;
.super Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;
.source "QuiteSketchDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;

.field private viewById:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$C32KjfwpsVjfGmBHoU9_C7NLoxs(Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M1sfFygit1X4AOkebZ6Hbm9OjVs(Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private clipViewCornerByDp(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 91
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$1;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .registers 3

    .line 61
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v0, :cond_b

    .line 62
    check-cast p1, Lcn/codemao/android/sketch/SketchActivity2;

    .line 63
    invoke-virtual {p1}, Lcn/codemao/android/sketch/SketchActivity2;->out()V

    :cond_b
    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 47
    sget v0, Lcn/codemao/android/sketch/R$layout;->dialog_exit_sketch:I

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 55
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onCreate()V

    .line 56
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->tvCancel:Landroid/widget/TextView;

    .line 57
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->tvConfirm:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcn/codemao/android/sketch/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->viewById:Landroid/view/View;

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_39

    .line 84
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;->clipViewCornerByDp(Landroid/view/View;)V

    :cond_39
    return-void
.end method
