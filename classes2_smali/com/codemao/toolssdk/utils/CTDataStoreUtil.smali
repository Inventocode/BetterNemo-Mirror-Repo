.class public final Lcom/codemao/toolssdk/utils/CTDataStoreUtil;
.super Ljava/lang/Object;
.source "CTDataStoreUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTDataStoreUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTDataStoreUtil.kt\ncom/codemao/toolssdk/utils/CTDataStoreUtil\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,123:1\n47#2:124\n49#2:128\n47#2:129\n49#2:133\n47#2:134\n49#2:138\n50#3:125\n55#3:127\n50#3:130\n55#3:132\n50#3:135\n55#3:137\n106#4:126\n106#4:131\n106#4:136\n*S KotlinDebug\n*F\n+ 1 CTDataStoreUtil.kt\ncom/codemao/toolssdk/utils/CTDataStoreUtil\n*L\n53#1:124\n53#1:128\n79#1:129\n79#1:133\n111#1:134\n111#1:138\n53#1:125\n53#1:127\n79#1:130\n79#1:132\n111#1:135\n111#1:137\n53#1:126\n79#1:131\n111#1:136\n*E\n"
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

.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

.field private static dataStore:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private static final dataStore$delegate:Lkotlin/properties/ReadOnlyProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 23
    new-instance v1, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-class v2, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    const-string v3, "dataStore"

    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->INSTANCE:Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    const-string v1, "app_settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->dataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->dataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p1, v1}, Lkotlin/properties/ReadOnlyProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    return-object p1
.end method


# virtual methods
.method public final getBooleanSync(Ljava/lang/String;Z)Z
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->dataStore:Landroidx/datastore/core/DataStore;

    if-nez v0, :cond_a

    return p2

    .line 118
    :cond_a
    new-instance v1, Lcom/codemao/toolssdk/utils/CTDataStoreUtil$getBooleanSync$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil$getBooleanSync$1;-><init>(Landroidx/datastore/core/DataStore;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v1, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final getStringSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->dataStore:Landroidx/datastore/core/DataStore;

    if-nez v0, :cond_f

    return-object p2

    .line 60
    :cond_f
    new-instance v1, Lcom/codemao/toolssdk/utils/CTDataStoreUtil$getStringSync$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil$getStringSync$1;-><init>(Landroidx/datastore/core/DataStore;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v1, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final init(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    sput-object p1, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->dataStore:Landroidx/datastore/core/DataStore;

    .line 20
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "dast完成初始化"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    return-void
.end method
