.class final Lcom/king/zxing/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;,
        Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/king/zxing/InactivityTimer;->activity:Landroid/app/Activity;

    .line 49
    new-instance p1, Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;

    invoke-direct {p1, p0}, Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/king/zxing/InactivityTimer;)V

    iput-object p1, p0, Lcom/king/zxing/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/king/zxing/InactivityTimer;->registered:Z

    .line 51
    invoke-virtual {p0}, Lcom/king/zxing/InactivityTimer;->onActivity()V

    return-void
.end method

.method static synthetic access$000(Lcom/king/zxing/InactivityTimer;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/king/zxing/InactivityTimer;->cancel()V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/king/zxing/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/king/zxing/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    :cond_b
    return-void
.end method


# virtual methods
.method onActivity()V
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/king/zxing/InactivityTimer;->cancel()V

    .line 56
    new-instance v0, Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;

    iget-object v1, p0, Lcom/king/zxing/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/king/zxing/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    .line 58
    :try_start_c
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    const-string v0, "Couldn\'t schedule inactivity task; ignoring"

    .line 60
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method onPause()V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/king/zxing/InactivityTimer;->cancel()V

    .line 66
    iget-boolean v0, p0, Lcom/king/zxing/InactivityTimer;->registered:Z

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/king/zxing/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/king/zxing/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/king/zxing/InactivityTimer;->registered:Z

    goto :goto_17

    :cond_12
    const-string v0, "PowerStatusReceiver was never registered?"

    .line 70
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method onResume()V
    .registers 5

    .line 75
    iget-boolean v0, p0, Lcom/king/zxing/InactivityTimer;->registered:Z

    if-eqz v0, :cond_a

    const-string v0, "PowerStatusReceiver was already registered?"

    .line 76
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1b

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/king/zxing/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/king/zxing/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/king/zxing/InactivityTimer;->registered:Z

    .line 81
    :goto_1b
    invoke-virtual {p0}, Lcom/king/zxing/InactivityTimer;->onActivity()V

    return-void
.end method

.method shutdown()V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/king/zxing/InactivityTimer;->cancel()V

    return-void
.end method
