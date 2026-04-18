.class Lcom/eebbk/bfc/account/auth/client/AidlManager$1;
.super Ljava/lang/Object;
.source "AidlManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/AidlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;


# direct methods
.method constructor <init>(Lcom/eebbk/bfc/account/auth/client/AidlManager;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$002(Lcom/eebbk/bfc/account/auth/client/AidlManager;Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;)Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    const-string p1, "AidlManager"

    const-string p2, "bind success"

    .line 90
    invoke-static {p1, p2}, Lcom/eebbk/bfc/account/auth/client/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$100(Lcom/eebbk/bfc/account/auth/client/AidlManager;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 92
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$100(Lcom/eebbk/bfc/account/auth/client/AidlManager;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;->onConnected()V

    :cond_21
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 98
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$002(Lcom/eebbk/bfc/account/auth/client/AidlManager;Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;)Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    const-string p1, "AidlManager"

    const-string v0, "bind disconnected"

    .line 99
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$100(Lcom/eebbk/bfc/account/auth/client/AidlManager;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 101
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;->this$0:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->access$100(Lcom/eebbk/bfc/account/auth/client/AidlManager;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;->onDisconnected()V

    :cond_1e
    return-void
.end method
