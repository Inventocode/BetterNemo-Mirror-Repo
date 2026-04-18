.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->commonStep3ObserveData()V
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
        "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 145
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-virtual {v0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->pullRefreshFinish()V

    .line 147
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_7d

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Z)V

    .line 149
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 150
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/response/BaseResponseListData;->hasMore()Z

    move-result v0

    .line 151
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;

    invoke-virtual {v2}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefresh()Z

    move-result v2

    .line 152
    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getAdapter(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;

    invoke-virtual {v4}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->addList(Ljava/util/List;ZZ)V

    if-eqz v2, :cond_51

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V

    .line 156
    :cond_51
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 159
    :cond_5d
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefreshAndEmpty()Z

    move-result p1

    if-ne p1, v1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    if-eqz v1, :cond_9b

    .line 160
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_9b

    .line 163
    :cond_7d
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 164
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x4

    const-string/jumbo v1, "网络连接失败，请稍后重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_9b

    .line 166
    :cond_8f
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_9b
    :goto_9b
    return-void
.end method
