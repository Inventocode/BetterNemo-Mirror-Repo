.class public Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenLoadErroePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private onBackClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;->onBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d0238

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 31
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;->onBackClickListener:Landroid/view/View$OnClickListener;

    const v1, 0x7f0a03cc

    if-eqz v0, :cond_14

    .line 33
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1b

    .line 35
    :cond_14
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
