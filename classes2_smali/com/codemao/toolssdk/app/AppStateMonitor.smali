.class public final Lcom/codemao/toolssdk/app/AppStateMonitor;
.super Ljava/lang/Object;
.source "AppStateMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppStateMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppStateMonitor.kt\ncom/codemao/toolssdk/app/AppStateMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1851#2,2:75\n1851#2,2:77\n*S KotlinDebug\n*F\n+ 1 AppStateMonitor.kt\ncom/codemao/toolssdk/app/AppStateMonitor\n*L\n60#1:75,2\n62#1:77,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/app/AppStateMonitor;

.field private static isForeground:Z

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final visibleActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/app/AppStateMonitor;

    invoke-direct {v0}, Lcom/codemao/toolssdk/app/AppStateMonitor;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->INSTANCE:Lcom/codemao/toolssdk/app/AppStateMonitor;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->visibleActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->listeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkAppState(Lcom/codemao/toolssdk/app/AppStateMonitor;)V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/codemao/toolssdk/app/AppStateMonitor;->checkAppState()V

    return-void
.end method

.method public static final synthetic access$getVisibleActivityCount$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->visibleActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final checkAppState()V
    .registers 4

    .line 55
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->visibleActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 56
    sget-boolean v1, Lcom/codemao/toolssdk/app/AppStateMonitor;->isForeground:Z

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 57
    :goto_d
    sput-boolean v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->isForeground:Z

    if-eqz v0, :cond_33

    if-nez v1, :cond_33

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->listeners:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_19

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_33
    if-nez v0, :cond_57

    if-eqz v1, :cond_57

    .line 62
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->listeners:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3d

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_57
    return-void
.end method


# virtual methods
.method public final addListener(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/codemao/toolssdk/app/AppStateMonitor;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final init(Landroid/app/Application;)V
    .registers 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "初始化前后台监听"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/codemao/toolssdk/app/AppStateMonitor$init$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/app/AppStateMonitor$init$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
