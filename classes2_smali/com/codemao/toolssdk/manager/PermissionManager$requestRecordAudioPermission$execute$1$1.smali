.class final Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PermissionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nPermissionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionManager.kt\ncom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,913:1\n1851#2,2:914\n*S KotlinDebug\n*F\n+ 1 PermissionManager.kt\ncom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1\n*L\n281#1:914,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.manager.PermissionManager$requestRecordAudioPermission$execute$1$1"
    f = "PermissionManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentPermission:Ljava/lang/String;

.field final synthetic $withoutSettingDialog:Z

.field label:I


# direct methods
.method public static synthetic $r8$lambda$9314f3CgJ0d7IDS-LHJmy0OfTm8(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->invokeSuspend$lambda$0(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyVq8AwcFQgvfYSLwJag0SludJI(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->invokeSuspend$lambda$3(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q7soVYJpMtOHbQdCjqwlWY8yDAo(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->invokeSuspend$lambda$2(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method

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
            "Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$currentPermission:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$withoutSettingDialog:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 276
    sget-object p1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$handlePermissionResult(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 7

    .line 1851
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$showDeniedSettingsDialog(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V

    goto :goto_4

    :cond_1e
    return-void
.end method

.method private static final invokeSuspend$lambda$3(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 285
    sget-object p1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, p3, v0}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$handlePermissionResult(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Z)V

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

    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$currentPermission:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$withoutSettingDialog:Z

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 269
    iget v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->label:I

    if-nez v0, :cond_86

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$getLastPermission$p()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$currentPermission:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    invoke-static {}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$getRequested$p()Z

    move-result p1

    if-nez p1, :cond_83

    .line 271
    sget-object p1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$setRequested$p(Z)V

    const-string p1, ""

    .line 272
    invoke-static {p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$setLastPermission$p(Ljava/lang/String;)V

    .line 273
    iget-boolean p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$withoutSettingDialog:Z

    const-string v0, "permissionsCall.keys"

    if-eqz p1, :cond_53

    .line 274
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p1

    invoke-static {}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$getPermissionsCall$p()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    goto :goto_83

    .line 279
    :cond_53
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p1

    invoke-static {}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$getPermissionsCall$p()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1$1$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    .line 289
    :cond_83
    :goto_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 269
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
