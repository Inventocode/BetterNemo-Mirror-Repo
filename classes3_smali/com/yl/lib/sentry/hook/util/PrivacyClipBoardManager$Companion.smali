.class public final Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;
.super Ljava/lang/Object;
.source "PrivacyClipBoardManager.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyClipBoardManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyClipBoardManager.kt\ncom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion\n*L\n1#1,58:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "diskCache"

    const-string v4, "getDiskCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;-><init>()V

    return-void
.end method

.method private final getDiskCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;
    .registers 4

    invoke-static {}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->access$getDiskCache$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/cache/DiskCache;

    return-object v0
.end method

.method private final syncReadClipboardEnable(Z)V
    .registers 4

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->getBReadClipboardEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->setBReadClipboardEnable(Ljava/lang/Boolean;)V

    .line 53
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->getDiskCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isReadClipboardEnable"

    invoke-virtual {v0, v1, p1}, Lcom/yl/lib/sentry/hook/cache/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public final closeReadClipboard()V
    .registers 3

    .line 33
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableReadClipBoard(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    .line 34
    :cond_c
    invoke-direct {p0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->syncReadClipboardEnable(Z)V

    return-void
.end method

.method public final getBReadClipboardEnable()Ljava/lang/Boolean;
    .registers 2

    .line 19
    invoke-static {}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->access$getBReadClipboardEnable$cp()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final isReadClipboardEnable()Z
    .registers 5

    .line 42
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->getBReadClipboardEnable()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 43
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->getDiskCache()Lcom/yl/lib/sentry/hook/cache/DiskCache;

    move-result-object v0

    const-string v2, "isReadClipboardEnable"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/yl/lib/sentry/hook/cache/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_24

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->setBReadClipboardEnable(Ljava/lang/Boolean;)V

    .line 46
    :cond_2c
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isEnableReadClipBoard()Z

    move-result v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    if-eqz v0, :cond_4b

    .line 47
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->getBReadClipboardEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_48

    :cond_47
    const/4 v0, 0x1

    :goto_48
    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    return v1
.end method

.method public final openReadClipboard()V
    .registers 3

    .line 25
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableReadClipBoard(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    .line 26
    :cond_c
    invoke-direct {p0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->syncReadClipboardEnable(Z)V

    return-void
.end method

.method public final setBReadClipboardEnable(Ljava/lang/Boolean;)V
    .registers 2

    .line 19
    invoke-static {p1}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->access$setBReadClipboardEnable$cp(Ljava/lang/Boolean;)V

    return-void
.end method
