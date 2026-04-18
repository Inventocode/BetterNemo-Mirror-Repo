.class Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/king/zxing/InactivityTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/king/zxing/InactivityTimer;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 108
    iget-object p1, p0, Lcom/king/zxing/InactivityTimer$PowerStatusReceiver;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/king/zxing/InactivityTimer;

    if-eqz p1, :cond_2b

    const/4 v0, -0x1

    const-string v1, "plugged"

    .line 110
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gtz p2, :cond_21

    const/4 p2, 0x1

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    if-eqz p2, :cond_28

    .line 112
    invoke-virtual {p1}, Lcom/king/zxing/InactivityTimer;->onActivity()V

    goto :goto_2b

    .line 114
    :cond_28
    invoke-static {p1}, Lcom/king/zxing/InactivityTimer;->access$000(Lcom/king/zxing/InactivityTimer;)V

    :cond_2b
    :goto_2b
    return-void
.end method
