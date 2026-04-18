.class final Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PermissionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$execute$12(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
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
    c = "com.codemao.toolssdk.manager.PermissionManager$requestCameraPermission$execute$2"
    f = "PermissionManager.kt"
    l = {
        0x1fd,
        0x1fe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentPermission:Ljava/lang/String;

.field final synthetic $withoutSettingDialog:Z

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$currentPermission:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$withoutSettingDialog:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$currentPermission:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$withoutSettingDialog:Z

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 508
    iget v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1c2

    .line 509
    iput v3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    .line 510
    :cond_2c
    :goto_2c
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1;

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$currentPermission:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$withoutSettingDialog:Z

    iget-object v5, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->$context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_45

    return-object v0

    .line 539
    :cond_45
    :goto_45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
