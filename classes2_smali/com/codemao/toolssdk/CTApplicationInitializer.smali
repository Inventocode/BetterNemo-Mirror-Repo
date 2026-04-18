.class public final Lcom/codemao/toolssdk/CTApplicationInitializer;
.super Ljava/lang/Object;
.source "CTApplicationInitializer.kt"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTApplicationInitializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTApplicationInitializer.kt\ncom/codemao/toolssdk/CTApplicationInitializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/CTApplicationInitializer;->create(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public create(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "app启动"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/app/Application;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 26
    :goto_18
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/util/CTContextUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/CTContextUtils;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/evolving/android/util/CTContextUtils;->setApplication(Landroid/app/Application;)V

    if-eqz v0, :cond_24

    .line 51
    sget-object v1, Lcom/codemao/toolssdk/app/AppStateMonitor;->INSTANCE:Lcom/codemao/toolssdk/app/AppStateMonitor;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/app/AppStateMonitor;->init(Landroid/app/Application;)V

    .line 52
    :cond_24
    sget-object v0, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->INSTANCE:Lcom/codemao/toolssdk/utils/CTDataStoreUtil;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTDataStoreUtil;->init(Landroid/content/Context;)V

    .line 53
    sget-object p1, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->addAppForegroundListener()V

    return-void
.end method

.method public dependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
