.class public final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 AudioEditableActivity.kt\ncom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1\n*L\n1#1,134:1\n191#2,17:135\n225#2:152\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 135
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "接收到通话状态变更:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->setCallingState(I)V

    .line 137
    sget-object v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->getRECORD_STATE_END()I

    move-result v1

    if-eq p1, v1, :cond_99

    .line 139
    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->getRECORD_STATE_CALLING()I

    move-result v0

    if-ne p1, v0, :cond_99

    .line 140
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$1;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/TimerCountDownState;

    if-eqz p1, :cond_65

    const-string p1, "直接结束"

    .line 144
    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->ivBack:Landroid/widget/ImageView;

    new-instance p2, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$2;

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$2;-><init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_99

    .line 148
    :cond_65
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/RecordingState;

    if-eqz p1, :cond_99

    const-string p1, "中断录音"

    .line 149
    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 150
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getCurrentState()Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 151
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;

    iget-object p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$invokeSuspend$$inlined$collect$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 73
    :cond_99
    :goto_99
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
