.class final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MineNemoVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataLocal(Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n766#2:188\n857#2,2:189\n1549#2:191\n1620#2,3:192\n*S KotlinDebug\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1\n*L\n133#1:188\n133#1:189,2\n134#1:191\n134#1:192,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.nemo.biz.mainmine.nemo.data.MineNemoVM$searchWorkDataLocal$1"
    f = "MineNemoVM.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $searchKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->$searchKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->$searchKey:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 131
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->label:I

    if-nez v0, :cond_80

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object p1

    const-string v0, "getBcms()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->$searchKey:Ljava/lang/String;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 133
    iget-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const-string v8, "data.worksName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4a

    iget-boolean v3, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v3, :cond_4a

    iget v3, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4a

    iget v3, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-eq v3, v4, :cond_4a

    const/4 v5, 0x1

    :cond_4a
    if-eqz v5, :cond_1e

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1549
    :cond_50
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 134
    new-instance v2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {v2, v1, v5, v4, v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 135
    :cond_74
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataLocal()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 136
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 131
    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
