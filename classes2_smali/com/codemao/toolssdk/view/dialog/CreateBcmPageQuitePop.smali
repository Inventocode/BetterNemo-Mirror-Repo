.class public Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
.super Lcom/codemao/toolssdk/view/dialog/TopPopupView;
.source "CreateBcmPageQuitePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;
    }
.end annotation


# instance fields
.field private callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

.field private published:Z

.field private showPublishButton:Z


# direct methods
.method public static synthetic $r8$lambda$R5enKlnIjnm7o9i1TXOLZ8PREWM(Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p4, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    .line 24
    iput-boolean p2, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->showPublishButton:Z

    .line 25
    iput-boolean p3, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->published:Z

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method public doShowAnimation()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v0, :cond_13

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 85
    :cond_13
    invoke-super {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->doShowAnimation()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 30
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_quite:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/codemao/toolssdk/R$id;->ll_quite:I

    if-ne v0, v1, :cond_15

    .line 59
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->dismiss()V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;->quite(Landroid/view/View;)V

    .line 66
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/codemao/toolssdk/R$id;->publish_container:I

    if-ne v0, v1, :cond_25

    .line 67
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;->publishWork(Landroid/view/View;)V

    :cond_25
    return-void
.end method

.method protected onCreate()V
    .registers 3

    .line 35
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 36
    sget v0, Lcom/codemao/toolssdk/R$id;->ll_quite:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/codemao/toolssdk/R$id;->publish_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-boolean v1, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->showPublishButton:Z

    if-eqz v1, :cond_22

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 42
    :cond_22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_2b
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->published:Z

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->setPublishView(Z)V

    .line 45
    sget v0, Lcom/codemao/toolssdk/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    return-void
.end method

.method public setPublishView(Z)V
    .registers 4

    .line 73
    sget v0, Lcom/codemao/toolssdk/R$id;->publish_iv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_publish_refresh_white:I

    goto :goto_f

    :cond_d
    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_publish_white:I

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    sget v0, Lcom/codemao/toolssdk/R$id;->publish_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_23

    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_work_publish_refresh:I

    goto :goto_25

    :cond_23
    sget p1, Lcom/codemao/toolssdk/R$string;->toolsdk_work_publish:I

    :goto_25
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
