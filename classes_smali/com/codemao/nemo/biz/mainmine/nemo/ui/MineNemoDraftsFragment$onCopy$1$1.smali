.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.nemo.biz.mainmine.nemo.ui.MineNemoDraftsFragment$onCopy$1$1"
    f = "MineNemoDraftsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field final synthetic $newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 556
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->label:I

    if-nez v0, :cond_97

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 557
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    .line 558
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-nez p1, :cond_25

    .line 559
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "作品复制异常，请检查该作品"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 560
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 562
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "复制"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setMenuOpen(Z)V

    .line 564
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string v0, "adapterDrafts.currentList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    .line 566
    invoke-virtual {v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->refreshViewOnRefresh()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "copy_work_nemo"

    .line 567
    invoke-static/range {v3 .. v8}, Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;->sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 570
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 571
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 572
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getAdapterDrafts(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 573
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$onCopy$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$listScrollPosition(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V

    .line 574
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 556
    :cond_97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
