.class public Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;
.super Ljava/lang/Object;
.source "CTOfflinePackageBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTOfflinePackageBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTOfflinePackageBase.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,62:1\n49#2,4:63\n*S KotlinDebug\n*F\n+ 1 CTOfflinePackageBase.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase\n*L\n19#1:63,4\n*E\n"
.end annotation


# instance fields
.field private final callList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->callList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method protected final getCallList()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->callList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method protected final setupScope()V
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    if-nez v2, :cond_40

    .line 49
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v2, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase$setupScope$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v2, v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase$setupScope$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v3, "创建新协程"

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v1, v3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->scope:Lkotlinx/coroutines/CoroutineScope;

    :cond_40
    return-void
.end method
