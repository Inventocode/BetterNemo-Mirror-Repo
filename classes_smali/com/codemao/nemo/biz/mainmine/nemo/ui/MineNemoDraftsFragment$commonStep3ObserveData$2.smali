.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->commonStep3ObserveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 238
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->loadingStateInitComplete()V

    if-eqz p1, :cond_10

    .line 240
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_19

    .line 241
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateExtend()V

    goto :goto_2c

    .line 243
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$resetAllMenuAndScrollTop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateContent()V

    :goto_2c
    return-void
.end method
