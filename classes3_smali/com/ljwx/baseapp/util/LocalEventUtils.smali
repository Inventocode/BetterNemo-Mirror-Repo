.class public final Lcom/ljwx/baseapp/util/LocalEventUtils;
.super Ljava/lang/Object;
.source "LocalEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseapp/util/LocalEventUtils;

    invoke-direct {v0}, Lcom/ljwx/baseapp/util/LocalEventUtils;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendAction(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 15
    :cond_3
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "发送事件广播:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-[event"

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 17
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_34

    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 19
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-string v2, "local_event_common_type"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 21
    :cond_34
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_3b
    return-void
.end method
