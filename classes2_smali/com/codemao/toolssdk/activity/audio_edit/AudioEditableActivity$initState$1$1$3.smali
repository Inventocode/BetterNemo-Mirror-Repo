.class final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioEditableActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.codemao.toolssdk.activity.audio_edit.AudioEditableActivity$initState$1$1$3"
    f = "AudioEditableActivity.kt"
    l = {
        0xd1,
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $recordState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;",
            ">;",
            "Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->$recordState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

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

    new-instance p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->$recordState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_15

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_56

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p1, v1

    move-object v1, p0

    goto :goto_3a

    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    move-object v1, p0

    :goto_2a
    const/4 v4, 0x5

    if-ge p1, v4, :cond_5b

    const-wide/16 v4, 0x1f4

    .line 209
    iput p1, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->I$0:I

    iput v3, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3a

    return-object v0

    .line 210
    :cond_3a
    :goto_3a
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3$1;

    iget-object v6, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->$recordState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V

    iput p1, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->I$0:I

    iput v2, v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_53

    return-object v0

    :cond_53
    move-object v9, v1

    move v1, p1

    move-object p1, v9

    :goto_56
    add-int/2addr v1, v3

    move v9, v1

    move-object v1, p1

    move p1, v9

    goto :goto_2a

    .line 222
    :cond_5b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
