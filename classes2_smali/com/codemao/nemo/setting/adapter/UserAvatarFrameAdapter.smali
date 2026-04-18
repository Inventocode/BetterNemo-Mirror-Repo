.class public final Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;
.super Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
.source "UserAvatarFrameAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
        "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    .line 15
    check-cast p1, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;->onBindViewHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 23
    :cond_14
    invoke-virtual {p0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    .line 24
    instance-of p3, p2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz p3, :cond_32

    const p3, 0x7f0a0982

    .line 25
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 26
    check-cast p2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_32
    return-void
.end method
