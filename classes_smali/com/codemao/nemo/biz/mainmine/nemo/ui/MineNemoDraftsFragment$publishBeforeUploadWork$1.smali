.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->publishBeforeUploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.codemao.nemo.biz.mainmine.nemo.ui.MineNemoDraftsFragment$publishBeforeUploadWork$1"
    f = "MineNemoDraftsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field final synthetic $result:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$result:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$result:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 790
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->label:I

    if-nez v0, :cond_31

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 791
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1$1;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-direct {v0, v1, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$countTimeOut(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 796
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1$2;

    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->$result:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-direct {v7, p1, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$publishBeforeUploadWork$1$2;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    .line 818
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 790
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
