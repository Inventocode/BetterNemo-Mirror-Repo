.class final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MineNemoVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsTemplateData(Z)V
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
    value = "SMAP\nMineNemoVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1549#2:188\n1620#2,3:189\n*S KotlinDebug\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1\n*L\n39#1:188\n39#1:189,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.nemo.biz.mainmine.nemo.data.MineNemoVM$getDraftsTemplateData$1"
    f = "MineNemoVM.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;


# direct methods
.method constructor <init>(ZLcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->$refresh:Z

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

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

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;

    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->$refresh:Z

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;-><init>(ZLcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 35
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->label:I

    if-nez v0, :cond_5d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 37
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/BcmHelper;->moveUnLoginDirToUserDir(Ljava/lang/Long;)V

    .line 39
    :cond_1f
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->$refresh:Z

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms(Z)Ljava/util/List;

    move-result-object p1

    const-string v0, "getBcms(refresh)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 39
    new-instance v2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 40
    :cond_51
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsWorksData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
