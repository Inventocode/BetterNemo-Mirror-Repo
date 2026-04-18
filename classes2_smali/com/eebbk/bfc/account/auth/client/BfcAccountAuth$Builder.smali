.class public Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;
.super Ljava/lang/Object;
.source "BfcAccountAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private settings:Lcom/eebbk/bfc/account/auth/client/Settings;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/Settings;

    invoke-direct {v0}, Lcom/eebbk/bfc/account/auth/client/Settings;-><init>()V

    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->settings:Lcom/eebbk/bfc/account/auth/client/Settings;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;
    .registers 4

    const-string v0, "context cannot be null!!!"

    .line 53
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->settings:Lcom/eebbk/bfc/account/auth/client/Settings;

    invoke-direct {v0, p1, v1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;-><init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/Settings;)V

    return-object v0
.end method

.method public setDebug(Z)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->settings:Lcom/eebbk/bfc/account/auth/client/Settings;

    invoke-virtual {v0, p1}, Lcom/eebbk/bfc/account/auth/client/Settings;->setDebug(Z)Lcom/eebbk/bfc/account/auth/client/Settings;

    return-object p0
.end method
