.class public final Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $intentFilter:Landroid/content/IntentFilter;

.field final synthetic $observer:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ljwx/basefragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/ljwx/basefragment/BaseFragment;Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function4;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/basefragment/BaseFragment;",
            "Landroid/content/IntentFilter;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->this$0:Lcom/ljwx/basefragment/BaseFragment;

    iput-object p2, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$intentFilter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$observer:Lkotlin/jvm/functions/Function4;

    iput-object p4, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$action:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->this$0:Lcom/ljwx/basefragment/BaseFragment;

    iget-object v1, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$intentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$observer:Lkotlin/jvm/functions/Function4;

    iget-object v3, p0, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;->$action:Ljava/lang/String;

    .line 207
    sget-object v4, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {v0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "接收到事件广播:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const-wide/16 v0, -0x1

    const-string p1, "local_event_common_type"

    .line 210
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p1, "local_event_common_value"

    .line 212
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0, p1, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    return-void
.end method
