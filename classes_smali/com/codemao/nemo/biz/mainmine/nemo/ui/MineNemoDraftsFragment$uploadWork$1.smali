.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->uploadWork(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
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
    c = "com.codemao.nemo.biz.mainmine.nemo.ui.MineNemoDraftsFragment$uploadWork$1"
    f = "MineNemoDraftsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field final synthetic $position:I

.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;ILkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iput p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$position:I

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

    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$position:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 718
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->label:I

    if-nez v0, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 719
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$position:I

    invoke-direct {v0, v1, p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;-><init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$countTimeOut(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lkotlin/jvm/functions/Function0;)V

    .line 727
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$2;

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->$position:I

    invoke-direct {v1, p1, v0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$executeUploadWork(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;Lkotlin/jvm/functions/Function1;)V

    .line 742
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 718
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
