.class public final Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;
.super Ljava/lang/Object;
.source "RecommendWorkBodyDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private i10:I

.field private i15:I

.field private i25:I

.field private i5:I

.field private final isPad:Z

.field private final screenWidth:I

.field private final workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    .line 13
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->screenWidth:I

    const/high16 p1, 0x40a00000  # 5.0f

    .line 14
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i5:I

    const/high16 p1, 0x41200000  # 10.0f

    .line 15
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i10:I

    const/high16 p1, 0x41700000  # 15.0f

    .line 16
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i15:I

    const/high16 p1, 0x41c80000  # 25.0f

    .line 17
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i25:I

    .line 18
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->isPad:Z

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 29
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    goto :goto_10

    :cond_f
    move-object p2, v0

    :goto_10
    instance-of p3, p2, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    if-eqz p3, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    :cond_17
    if-nez v0, :cond_1a

    return-void

    .line 31
    :cond_1a
    iget-boolean p2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->isPad:Z

    const/4 p3, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_2f

    .line 32
    iget p2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->screenWidth:I

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i25:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i10:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x4

    goto :goto_3a

    .line 34
    :cond_2f
    iget p2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->screenWidth:I

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i15:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->i5:I

    sub-int/2addr p2, v2

    div-int/2addr p2, v1

    :goto_3a
    const v2, 0x7f0a047b

    .line 37
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    if-lez v3, :cond_6e

    if-eqz v2, :cond_6e

    .line 39
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    if-eqz v3, :cond_65

    iget-object v5, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {v3, v2, v5}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    .line 40
    :cond_65
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6e
    const v2, 0x7f0a0481

    .line 44
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_80

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    :goto_81
    const/4 v5, 0x1

    const/16 v6, 0x8

    if-le v3, v5, :cond_a5

    if-eqz v2, :cond_a5

    .line 46
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    if-eqz v3, :cond_9b

    iget-object v5, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {v3, v2, v5}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    .line 47
    :cond_9b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_aa

    :cond_a5
    if-eqz v2, :cond_aa

    .line 50
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_aa
    :goto_aa
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->isPad:Z

    if-eqz v2, :cond_120

    const v2, 0x7f0a0482

    .line 54
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_c1

    :cond_c0
    const/4 v3, 0x0

    :goto_c1
    if-le v3, v1, :cond_e2

    if-eqz v2, :cond_e2

    .line 56
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    if-eqz v1, :cond_d8

    iget-object v3, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    .line 57
    :cond_d8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e7

    :cond_e2
    if-eqz v2, :cond_e7

    .line 61
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e7
    :goto_e7
    const v1, 0x7f0a047c

    .line 64
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_fa

    :cond_f9
    const/4 v1, 0x0

    :goto_fa
    if-le v1, p3, :cond_11b

    if-eqz p1, :cond_11b

    .line 66
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_111

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    if-eqz p3, :cond_111

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    .line 67
    :cond_111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_120

    :cond_11b
    if-eqz p1, :cond_120

    .line 71
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_120
    :goto_120
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01e7

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01e8

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
