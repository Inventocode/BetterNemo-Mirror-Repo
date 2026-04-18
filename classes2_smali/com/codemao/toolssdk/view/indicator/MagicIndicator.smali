.class public Lcom/codemao/toolssdk/view/indicator/MagicIndicator;
.super Landroid/widget/FrameLayout;
.source "MagicIndicator.java"


# instance fields
.field private mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getNavigator()Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    return-object v0
.end method

.method public setNavigator(Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 54
    invoke-interface {v0}, Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;->onDetachFromMagicIndicator()V

    .line 56
    :cond_a
    iput-object p1, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 58
    iget-object p1, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_27

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/codemao/toolssdk/view/indicator/MagicIndicator;->mNavigator:Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;

    invoke-interface {p1}, Lcom/codemao/toolssdk/view/indicator/abs/IPagerNavigator;->onAttachToMagicIndicator()V

    :cond_27
    return-void
.end method
