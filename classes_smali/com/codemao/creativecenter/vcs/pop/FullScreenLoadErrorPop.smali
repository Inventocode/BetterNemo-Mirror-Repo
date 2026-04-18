.class public Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenLoadErrorPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private onBackClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;->onBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 45
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_load_bcm_error:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 34
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 35
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;->onBackClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_13

    .line 36
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_loading_back:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/FullScreenLoadErrorPop;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c

    .line 38
    :cond_13
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_loading_back:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
