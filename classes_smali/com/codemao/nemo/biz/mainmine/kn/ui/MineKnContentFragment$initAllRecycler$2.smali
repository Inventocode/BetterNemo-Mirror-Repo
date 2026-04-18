.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->initAllRecycler(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
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
        "Lcom/codemao/nemo/bean/KnWorkListItem;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineKnContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineKnContentFragment.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,770:1\n1860#2,3:771\n*S KotlinDebug\n*F\n+ 1 MineKnContentFragment.kt\ncom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2\n*L\n227#1:771,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;",
            "Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 218
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnWorkListItem;I)V
    .registers 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_a8

    goto/16 :goto_a7

    .line 247
    :sswitch_10
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getEnableRename()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$showRenamePop(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    goto/16 :goto_a7

    .line 252
    :sswitch_1d
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$publishWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    goto/16 :goto_a7

    .line 227
    :sswitch_24
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p2

    const-string p3, "adapter.currentList"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    .line 1861
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_47

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 228
    :cond_47
    instance-of v4, v2, Lcom/codemao/nemo/bean/KnWorkListItem;

    if-eqz v4, :cond_63

    .line 229
    check-cast v2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 230
    invoke-virtual {v2, v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->setMenuOpen(Z)V

    .line 231
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 233
    :cond_59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v1, v4, :cond_63

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v2, v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->setMenuOpen(Z)V

    :cond_63
    move v1, v3

    goto :goto_36

    .line 238
    :cond_65
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_a7

    .line 255
    :sswitch_6f
    sget-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 257
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_84

    :cond_82
    const-wide/16 v2, -0x1

    :goto_84
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getToolType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getToolMode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 255
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    goto :goto_a7

    .line 242
    :sswitch_9b
    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->setMenuOpen(Z)V

    .line 243
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$initAllRecycler$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a7
    :goto_a7
    return-void

    :sswitch_data_a8
    .sparse-switch
        0x7f0a016d -> :sswitch_9b
        0x7f0a032e -> :sswitch_6f
        0x7f0a052b -> :sswitch_24
        0x7f0a05d5 -> :sswitch_1d
        0x7f0a09b7 -> :sswitch_10
    .end sparse-switch
.end method
