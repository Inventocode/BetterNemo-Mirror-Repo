.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecycleBinKnActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecycleBinKnActivity.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1860#2,3:321\n*S KotlinDebug\n*F\n+ 1 RecycleBinKnActivity.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3\n*L\n82#1:321,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 76
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;I)V
    .registers 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a016d

    const/4 v1, 0x0

    if-eq p3, v0, :cond_6d

    const p2, 0x7f0a052b

    if-eq p3, p2, :cond_16

    goto :goto_7d

    .line 82
    :cond_16
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p2

    const-string p3, "adapter.currentList"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    .line 1861
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-gez v0, :cond_3d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 83
    :cond_3d
    instance-of v4, v2, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    if-eqz v4, :cond_5d

    .line 84
    check-cast v2, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->getMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 85
    invoke-virtual {v2, v1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->setMenuOpen(Z)V

    .line 86
    invoke-static {p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 88
    :cond_53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v0, v4, :cond_5d

    const/4 v0, 0x1

    .line 89
    invoke-virtual {v2, v0}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->setMenuOpen(Z)V

    :cond_5d
    move v0, v3

    goto :goto_2c

    .line 93
    :cond_5f
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_7d

    .line 97
    :cond_6d
    invoke-virtual {p2, v1}, Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;->setMenuOpen(Z)V

    .line 98
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_7d
    return-void
.end method
