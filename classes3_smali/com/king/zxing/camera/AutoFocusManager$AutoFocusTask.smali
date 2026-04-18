.class Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoFocusTask"
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
            "Lcom/king/zxing/camera/AutoFocusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/king/zxing/camera/AutoFocusManager;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-wide/16 v0, 0x4b0

    .line 128
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    nop

    .line 132
    :goto_7
    iget-object p1, p0, Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/king/zxing/camera/AutoFocusManager;

    if-eqz p1, :cond_14

    .line 134
    invoke-virtual {p1}, Lcom/king/zxing/camera/AutoFocusManager;->start()V

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method
