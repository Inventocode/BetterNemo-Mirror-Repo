.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;
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
        "Lcom/ljwx/baseapp/response/DataResult<",
        "+",
        "Lcom/ljwx/baseapp/response/BaseResponseListData<",
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoDraftsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoDraftsFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1\n+ 2 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n*L\n1#1,1581:1\n6#2,2:1582\n*S KotlinDebug\n*F\n+ 1 MineNemoDraftsFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1\n*L\n223#1:1582,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 213
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "+",
            "Lcom/ljwx/baseapp/response/BaseResponseListData<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;)V"
        }
    .end annotation

    .line 214
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_77

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->loadingStateInitComplete()V

    .line 216
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 217
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/ljwx/baseapp/response/BaseResponseListData;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/response/BaseResponseListData;->hasMore()Z

    move-result v0

    .line 218
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/ljwx/baseapp/response/BaseResponseListData;

    invoke-virtual {v2}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefresh()Z

    move-result v2

    .line 219
    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/ljwx/baseapp/response/BaseResponseListData;

    invoke-virtual {v4}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->addList(Ljava/util/List;ZZ)V

    if-eqz v2, :cond_4c

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$resetAllMenuAndScrollTop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    .line 223
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getRecyclerView(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v2, "recyclerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateContent()V

    .line 226
    :cond_5f
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ljwx/baseapp/response/BaseResponseListData;

    const/4 v0, 0x1

    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefreshAndEmpty()Z

    move-result p1

    if-ne p1, v0, :cond_6f

    const/4 v1, 0x1

    :cond_6f
    if-eqz v1, :cond_8e

    .line 227
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateExtend()V

    goto :goto_8e

    .line 230
    :cond_77
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 231
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x4

    const-string/jumbo v1, "网络连接失败，请稍后重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_8e

    .line 233
    :cond_89
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateError()V

    :cond_8e
    :goto_8e
    return-void
.end method
