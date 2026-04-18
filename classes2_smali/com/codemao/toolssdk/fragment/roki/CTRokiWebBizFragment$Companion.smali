.class public final Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;
.super Ljava/lang/Object;
.source "CTRokiWebBizFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addMaterials(ZLjava/lang/String;)V
    .registers 10

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getTestManager()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 2

    .line 21
    invoke-static {}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->access$getTestManager$cp()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    return-object v0
.end method

.method public final setTestManager(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 2

    .line 21
    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->access$setTestManager$cp(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    return-void
.end method
