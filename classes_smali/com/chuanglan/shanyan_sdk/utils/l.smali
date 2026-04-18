.class public final Lcom/chuanglan/shanyan_sdk/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/utils/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/utils/l;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chuanglan/shanyan_sdk/utils/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/utils/l;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/l;->a:Lcom/chuanglan/shanyan_sdk/utils/l;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/l;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/l;->a:Lcom/chuanglan/shanyan_sdk/utils/l;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/utils/l;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/utils/l;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/l;->a:Lcom/chuanglan/shanyan_sdk/utils/l;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/l;->a:Lcom/chuanglan/shanyan_sdk/utils/l;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Application;Lcom/chuanglan/shanyan_sdk/utils/l$a;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public b(Landroid/app/Application;Lcom/chuanglan/shanyan_sdk/utils/l$a;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onActivityCreated name"

    aput-object v1, p2, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onActivityDestroyed name"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onActivityPaused name"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->c:Landroid/app/Activity;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onActivityResumed name"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onSaveInstanceState name"

    aput-object v1, p2, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onActivityStarted name"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ActivityLifecycleShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    const-string v0, "ActivityLifecycleShanYanTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onActivityStopped name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    if-ne v0, p1, :cond_3a

    :cond_1e
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chuanglan/shanyan_sdk/utils/l$a;

    if-eqz v1, :cond_24

    invoke-interface {v1, p1}, Lcom/chuanglan/shanyan_sdk/utils/l$a;->a(Landroid/app/Activity;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_24

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    return-void
.end method
