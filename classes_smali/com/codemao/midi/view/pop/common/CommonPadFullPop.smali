.class public final Lcom/codemao/midi/view/pop/common/CommonPadFullPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommonPadFullPop.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/midi/view/pop/common/CommonPadFullPop;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/view/pop/common/CommonPadFullPop;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/view/pop/common/CommonPadFullPop;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/view/pop/common/CommonPadFullPop;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 24
    sget v0, Lcom/codemao/midi/R$layout;->midi_pop_full_common_pad:I

    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 28
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 33
    sget v0, Lcom/codemao/midi/R$id;->tv_info:I

    invoke-virtual {p0, v0}, Lcom/codemao/midi/view/pop/common/CommonPadFullPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tv_info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
