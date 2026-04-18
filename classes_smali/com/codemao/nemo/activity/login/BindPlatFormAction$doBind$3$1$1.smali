.class final Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BindPlatFormAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.codemao.nemo.activity.login.BindPlatFormAction$doBind$3$1$1"
    f = "BindPlatFormAction.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/activity/login/BindPlatFormAction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

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

    new-instance p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-direct {p1, v0, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 277
    iget v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->label:I

    if-nez v0, :cond_6a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    const-string/jumbo v0, "绑定成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 280
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    .line 281
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/event/BindEvent;->obtain()Lcom/codemao/nemo/event/BindEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->getUpdateBindPhoneStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/event/BindEvent;->obtain()Lcom/codemao/nemo/event/BindEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->access$checkVerifyEvent(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Z)V

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-static {v0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->access$getBindPhoneAndFinish$p(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 285
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_67

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_67

    .line 289
    :cond_62
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->access$goMain(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    .line 291
    :cond_67
    :goto_67
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 277
    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
