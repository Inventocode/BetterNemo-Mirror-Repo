.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoPublishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep3ObserveData()V
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
        "Lcom/codemao/nemo/bean/UserPublisWorks;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 134
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

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
            "Lcom/codemao/nemo/bean/UserPublisWorks;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->pullRefreshFinish()V

    .line 136
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_6f

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Z)V

    .line 138
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 139
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/codemao/nemo/bean/UserPublisWorks;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/response/BaseResponseListData;->hasMore()Z

    move-result v0

    .line 140
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/codemao/nemo/bean/UserPublisWorks;

    invoke-virtual {v2}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefresh()Z

    move-result v2

    .line 141
    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-static {v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/codemao/nemo/bean/UserPublisWorks;

    invoke-virtual {v4}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->addList(Ljava/util/List;ZZ)V

    if-eqz v2, :cond_51

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->access$resetAllMenuAndScrollTop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    .line 145
    :cond_51
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateContent()V

    .line 147
    :cond_56
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserPublisWorks;

    const/4 v0, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefreshAndEmpty()Z

    move-result p1

    if-ne p1, v1, :cond_66

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    :goto_67
    if-eqz v1, :cond_86

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateEmpty()V

    goto :goto_86

    .line 151
    :cond_6f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 152
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x4

    const-string/jumbo v1, "网络连接失败，请稍后重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_86

    .line 154
    :cond_81
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateError()V

    :cond_86
    :goto_86
    return-void
.end method
