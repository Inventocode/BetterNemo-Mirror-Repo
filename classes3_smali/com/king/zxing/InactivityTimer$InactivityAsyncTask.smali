.class Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InactivityAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 126
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-wide/32 v0, 0x493e0

    .line 133
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string p1, "Finishing activity due to inactivity"

    .line 134
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/king/zxing/InactivityTimer$InactivityAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_18

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method
