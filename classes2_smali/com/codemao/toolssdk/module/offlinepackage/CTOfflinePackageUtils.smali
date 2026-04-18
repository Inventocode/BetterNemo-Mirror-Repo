.class public final Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;
.super Lcom/codemao/toolssdk/module/offlinepackage/CTOfflineFileOperation;
.source "CTOfflinePackageUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTOfflinePackageUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTOfflinePackageUtils.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n1851#2,2:405\n*S KotlinDebug\n*F\n+ 1 CTOfflinePackageUtils.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils\n*L\n187#1:405,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

.field private static final client$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    .line 38
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils$client$2;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils$client$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->client$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflineFileOperation;-><init>()V

    return-void
.end method

.method public static synthetic stopDownload$default(Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 332
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->stopDownload(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final stopDownload(Ljava/lang/String;)V
    .registers 7

    .line 333
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "想要停止的下载："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",当前队列："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->getCallList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->getCallList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 336
    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "执行停止下载："

    if-eqz p1, :cond_7c

    .line 339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 340
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 342
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    goto :goto_3f

    .line 345
    :cond_7c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Call;

    invoke-interface {v3}, Lokhttp3/Call;->cancel()V

    .line 347
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    goto :goto_3f

    :cond_a0
    const-wide/16 v0, 0xfa

    .line 351
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 352
    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageBase;->setupScope()V

    return-void
.end method
