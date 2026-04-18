.class final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioEditableActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initState()V
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
    value = "SMAP\nAudioEditableActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditableActivity.kt\ncom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,359:1\n72#2,3:360\n*S KotlinDebug\n*F\n+ 1 AudioEditableActivity.kt\ncom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1\n*L\n190#1:360,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.activity.audio_edit.AudioEditableActivity$initState$1"
    f = "AudioEditableActivity.kt"
    l = {
        0x168
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {p1, v0, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 189
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    sget-object p1, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->INSTANCE:Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->getEvents()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    .line 72
    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {v3, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    iput v2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    return-object v0

    .line 226
    :cond_30
    :goto_30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
