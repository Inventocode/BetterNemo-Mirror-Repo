.class final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmNemoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->getPublishState(I)V
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
        "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $type:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    iput p2, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->$type:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 201
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;)V"
        }
    .end annotation

    .line 202
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_4a

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->access$changePublishedState(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V

    .line 204
    iget v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->$type:I

    if-eqz v0, :cond_4a

    .line 205
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->isInReview()Z

    move-result v0

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_33

    .line 206
    sget-object v0, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v3, 0x3

    const-string/jumbo v4, "作品审核中，暂时无法更新"

    invoke-virtual {v0, v3, v4}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    .line 211
    :cond_33
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->couldPublish()Z

    move-result p1

    if-ne p1, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    if-eqz v1, :cond_4a

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->access$goPublishActivity(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V

    :cond_4a
    return-void
.end method
