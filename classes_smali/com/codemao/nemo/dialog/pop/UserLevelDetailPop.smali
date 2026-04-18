.class public Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "UserLevelDetailPop.java"


# instance fields
.field private clickView:Landroid/view/View;

.field ivClose:Landroid/widget/ImageView;

.field ivTop:Landroid/widget/ImageView;

.field private level:I

.field private rightClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02e1

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 54
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a037b

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->ivClose:Landroid/widget/ImageView;

    const v0, 0x7f0a094d

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->clickView:Landroid/view/View;

    const v0, 0x7f0a0432

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->ivTop:Landroid/widget/ImageView;

    .line 58
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    iget v2, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->rightClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_45

    .line 60
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    .line 62
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$1;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :goto_4f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->clickView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeveInfo(I)V
    .registers 4

    .line 37
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->level:I

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->ivTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 39
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1d
    return-void
.end method
