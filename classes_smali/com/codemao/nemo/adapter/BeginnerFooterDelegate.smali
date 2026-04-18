.class public final Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;
.super Ljava/lang/Object;
.source "BeginnerFooterDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/BeginnerFooterDelegate$FooterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/RecommendListData<",
        "Lcom/codemao/nemo/bean/BeginnerFooterData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final isPad:Z

.field private final mListener:Lcom/codemao/nemo/adapter/BeginnerFooterDelegate$FooterListener;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/adapter/BeginnerFooterDelegate$FooterListener;)V
    .registers 3

    const-string v0, "mListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;->mListener:Lcom/codemao/nemo/adapter/BeginnerFooterDelegate$FooterListener;

    .line 17
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;->isPad:Z

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendListData<",
            "Lcom/codemao/nemo/bean/BeginnerFooterData;",
            ">;>;I)V"
        }
    .end annotation

    const-string p3, "holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "datas"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d018c

    goto :goto_b

    :cond_8
    const v0, 0x7f0d018b

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendListData<",
            "Lcom/codemao/nemo/bean/BeginnerFooterData;",
            ">;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/RecommendListData;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RecommendListData;->getType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method
