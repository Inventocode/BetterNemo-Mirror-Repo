.class public Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;
.super Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;
.source "CTOfflinePackageCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTOfflinePackageCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTOfflinePackageCache.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,194:1\n13543#2,2:195\n*S KotlinDebug\n*F\n+ 1 CTOfflinePackageCache.kt\ncom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache\n*L\n159#1:195,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final offlineManager$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

.field private final packageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 27
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;

    const-string v3, "offlineManager"

    const-string v4, "getOfflineManager()Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;-><init>()V

    .line 27
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;

    invoke-static {v0}, Lcom/codemao/toolssdk/common/LazyDelegateKt;->lazyDelegate(Lkotlin/jvm/functions/Function0;)Lcom/codemao/toolssdk/common/LazyDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->offlineManager$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->packageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final getCacheNewestVersion(Ljava/lang/String;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getCacheVersionKey(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->INSTANCE:Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->getStringSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->getStringSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "本地缓存的最新信息："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final getCacheVersionKey(Ljava/lang/String;)Lkotlin/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ct_sdk_offline_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_sha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "当前环境的缓存版本key："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final getOfflineManager()Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->offlineManager$delegate:Lcom/codemao/toolssdk/common/LazyDelegate;

    sget-object v1, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/common/LazyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;

    return-object v0
.end method

.method public final getPackageInfoFormMemory$toolssdk_release(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;
    .registers 3

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->packageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    return-object p1
.end method

.method protected final getUserOnlineKey()Ljava/lang/String;
    .registers 5

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ct_sdk_user_online_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getEnv()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "当前环境的缓存，用户是否自己决定是否走线上key："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    return-object v0
.end method

.method public final isUserEnableOnline()Z
    .registers 5

    .line 140
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->INSTANCE:Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getUserOnlineKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->getBooleanSync(Ljava/lang/String;Z)Z

    move-result v0

    .line 142
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "获取用户是否自己设置只走online："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    return v0
.end method

.method public final packageInfoRight$toolssdk_release(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getOfflineManager()Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;->isServerOfflinePass(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
