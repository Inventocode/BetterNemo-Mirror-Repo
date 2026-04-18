.class public final Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;
.super Ljava/lang/Object;
.source "CachePrivacyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCachePrivacyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachePrivacyManager.kt\ncom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager\n*L\n1#1,212:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

.field private static final dickCache$delegate:Lkotlin/Lazy;

.field private static final memoryCache$delegate:Lkotlin/Lazy;

.field private static final timeDiskCache$delegate:Lkotlin/Lazy;

.field private static final timeMemoryCache$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "dickCache"

    const-string v5, "getDickCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "timeDiskCache"

    const-string v5, "getTimeDiskCache()Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "memoryCache"

    const-string v5, "getMemoryCache()Lcom/yl/lib/sentry/hook/cache/MemoryCache;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "timeMemoryCache"

    const-string v4, "getTimeMemoryCache()Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 13
    new-instance v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 14
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$dickCache$2;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$dickCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->dickCache$delegate:Lkotlin/Lazy;

    .line 19
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$timeDiskCache$2;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$timeDiskCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->timeDiskCache$delegate:Lkotlin/Lazy;

    .line 23
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$memoryCache$2;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$memoryCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->memoryCache$delegate:Lkotlin/Lazy;

    .line 27
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$timeMemoryCache$2;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$timeMemoryCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->timeMemoryCache$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCacheParam(Ljava/lang/String;Ljava/lang/Object;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "TT;>;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_41

    const/4 v0, 0x2

    if-eq p3, v0, :cond_34

    const/4 v0, 0x3

    if-eq p3, v0, :cond_27

    const/4 v0, 0x4

    if-ne p3, v0, :cond_21

    .line 154
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getTimeDiskCache()Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_4b

    :cond_21
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 153
    :cond_27
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getDickCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/yl/lib/sentry/hook/cache/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_4b

    .line 149
    :cond_34
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getTimeMemoryCache()Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;

    move-result-object p3

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p3, p1, v0}, Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;->get(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_4b

    .line 148
    :cond_41
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getMemoryCache()Lcom/yl/lib/sentry/hook/cache/MemoryCache;

    move-result-object p3

    if-eqz p2, :cond_78

    invoke-virtual {p3, p1, p2}, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->get(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 156
    :goto_4b
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_63

    .line 157
    new-instance p2, Lkotlin/Pair;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_77

    .line 159
    :cond_63
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object p2, p1

    .line 163
    :goto_6f
    new-instance p1, Lkotlin/Pair;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, p1

    :goto_77
    return-object p2

    .line 148
    :cond_78
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getDickCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;
    .registers 4

    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->dickCache$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/cache/DiskCache;

    return-object v0
.end method

.method private final getMemoryCache()Lcom/yl/lib/sentry/hook/cache/MemoryCache;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yl/lib/sentry/hook/cache/MemoryCache<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->memoryCache$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/cache/MemoryCache;

    return-object v0
.end method

.method private final getTimeDiskCache()Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;
    .registers 4

    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->timeDiskCache$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;

    return-object v0
.end method

.method private final getTimeMemoryCache()Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->timeMemoryCache$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;

    return-object v0
.end method

.method private final handleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;",
            "J)TT;"
        }
    .end annotation

    .line 119
    invoke-virtual {p5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 120
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 121
    invoke-virtual {p5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1e
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 126
    :try_start_2c
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_37

    if-eqz v1, :cond_34

    move-object v3, v1

    goto :goto_35

    :cond_34
    move-object v3, p3

    :goto_35
    move-object v2, p0

    goto :goto_3e

    :catchall_37
    move-exception v0

    move-object v2, v0

    .line 128
    :try_start_39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4a

    move-object v2, p0

    move-object v3, p3

    :goto_3e
    move-object v4, p1

    move-object v5, p6

    move-wide/from16 v6, p7

    .line 130
    invoke-direct/range {v2 .. v7}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->putCacheParam(Ljava/lang/Object;Ljava/lang/String;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)V

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    move-object v1, p3

    :goto_49
    return-object v1

    :catchall_4a
    move-exception v0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->putCacheParam(Ljava/lang/Object;Ljava/lang/String;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)V

    throw v1
.end method

.method static synthetic handleData$default(Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;JILjava/lang/Object;)Ljava/lang/Object;
    .registers 22

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    move-wide v9, v0

    goto :goto_a

    :cond_8
    move-wide/from16 v9, p7

    :goto_a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 117
    invoke-direct/range {v2 .. v10}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->handleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final isEmpty(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 195
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_12

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    .line 197
    :cond_12
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    .line 199
    :cond_20
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_2e

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    return v0

    .line 201
    :cond_2e
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_42

    move-object v1, p1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    return v0

    .line 203
    :cond_42
    instance-of v1, p1, Landroid/location/Location;

    if-eqz v1, :cond_5b

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-eqz v5, :cond_5a

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpg-double p1, v1, v3

    if-nez p1, :cond_5b

    :cond_5a
    return v0

    :cond_5b
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic loadWithTimeDiskCache$default(Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;
    .registers 16

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_7

    const-wide/32 p4, 0x1b7740

    :cond_7
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final putCacheParam(Ljava/lang/Object;Ljava/lang/String;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;",
            "J)V"
        }
    .end annotation

    if-eqz p1, :cond_4a

    .line 179
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_41

    const/4 v0, 0x2

    if-eq p3, v0, :cond_33

    const/4 v0, 0x3

    if-eq p3, v0, :cond_25

    const/4 v0, 0x4

    if-eq p3, v0, :cond_17

    goto :goto_4a

    .line 187
    :cond_17
    sget-object p3, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    invoke-direct {p3}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getTimeDiskCache()Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1, p4, p5}, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4a

    .line 186
    :cond_25
    sget-object p3, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    invoke-direct {p3}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getDickCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/yl/lib/sentry/hook/cache/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 181
    :cond_33
    sget-object p3, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    invoke-direct {p3}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getTimeMemoryCache()Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;

    move-result-object p3

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p3, p2, p1, p4, p5}, Lcom/yl/lib/sentry/hook/cache/TimeLessMemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_4a

    .line 180
    :cond_41
    sget-object p3, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    invoke-direct {p3}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getMemoryCache()Lcom/yl/lib/sentry/hook/cache/MemoryCache;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public final loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v1, p1

    move-object v3, p3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDocumentDesc"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getValue"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v6, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->PERMANENT_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    move-object v11, p0

    invoke-direct {p0, p1, p3, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getCacheParam(Ljava/lang/String;Ljava/lang/Object;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)Lkotlin/Pair;

    move-result-object v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v0, p0

    .line 98
    invoke-static/range {v0 .. v10}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->handleData$default(Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object v1, p1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDocumentDesc"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getValue"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v6, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    move-object v11, p0

    move-object v3, p3

    invoke-direct {p0, p1, p3, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getCacheParam(Ljava/lang/String;Ljava/lang/Object;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)Lkotlin/Pair;

    move-result-object v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v0, p0

    .line 38
    invoke-static/range {v0 .. v10}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->handleData$default(Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final loadWithTimeDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v1, p1

    move-object v3, p3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDocumentDesc"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getValue"

    move-object/from16 v4, p6

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v6, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->TIMELINESS_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    move-object v9, p0

    .line 74
    invoke-direct {p0, p1, p3, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getCacheParam(Ljava/lang/String;Ljava/lang/Object;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)Lkotlin/Pair;

    move-result-object v5

    move-object v0, p0

    move-wide v7, p4

    .line 79
    invoke-direct/range {v0 .. v8}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->handleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;J",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object v1, p1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDocumentDesc"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getValue"

    move-object/from16 v4, p6

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v6, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->TIMELINESS_MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    move-object v9, p0

    move-object v3, p3

    invoke-direct {p0, p1, p3, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->getCacheParam(Ljava/lang/String;Ljava/lang/Object;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)Lkotlin/Pair;

    move-result-object v5

    move-object v0, p0

    move-wide v7, p4

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->handleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
