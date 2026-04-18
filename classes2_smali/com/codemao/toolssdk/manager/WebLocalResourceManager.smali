.class public final Lcom/codemao/toolssdk/manager/WebLocalResourceManager;
.super Ljava/lang/Object;
.source "WebLocalResourceManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/WebLocalResourceManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebLocalResourceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebLocalResourceManager.kt\ncom/codemao/toolssdk/manager/WebLocalResourceManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,900:1\n1#2:901\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

.field private static final executorService:Ljava/util/concurrent/ExecutorService;

.field private static useLocalCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebLocalResourceManager;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x4

    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    sget-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUseLocalCache()Z
    .registers 2

    .line 46
    sget-boolean v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager;->useLocalCache:Z

    return v0
.end method

.method public final getWebLocalCachePath(Landroid/content/Context;Lcom/codemao/toolssdk/manager/WebLocalType;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webLocalType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tools_sdk/web_cache/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/codemao/toolssdk/manager/WebLocalResourceManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_39

    const-string p1, "tools-entry"

    goto :goto_41

    .line 72
    :cond_39
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3f
    const-string p1, "intl-tools-entry"

    .line 75
    :goto_41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    if-eqz p2, :cond_4d

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_4d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/index.html"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
