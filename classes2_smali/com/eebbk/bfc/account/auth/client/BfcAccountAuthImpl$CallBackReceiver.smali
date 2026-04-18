.class Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BfcAccountAuthImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallBackReceiver"
.end annotation


# instance fields
.field private mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 119
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    const-string p1, "bfc-account-auth"

    .line 120
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4b

    const-string p2, "bfc-account-auth-request"

    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "bfc-account-auth-response"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bfc-account-auth-type"

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BfcAccountAuth"

    invoke-static {v2, v1}, Lcom/eebbk/bfc/account/auth/client/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    invoke-interface {v1, p1, p2, v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    return-void
.end method
