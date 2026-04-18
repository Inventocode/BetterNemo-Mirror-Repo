.class Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;
.super Ljava/lang/Object;
.source "BfcAccountAuthImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->enqueue(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/eebbk/bfc/account/auth/client/request/IRequest;


# direct methods
.method constructor <init>(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V
    .registers 4

    .line 74
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->this$0:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;

    iput-object p2, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->val$request:Lcom/eebbk/bfc/account/auth/client/request/IRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->this$0:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;

    invoke-static {v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->access$000(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;)Lcom/eebbk/bfc/account/auth/client/AidlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;->val$request:Lcom/eebbk/bfc/account/auth/client/request/IRequest;

    invoke-virtual {v0, v1, v2}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->request(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V

    return-void
.end method
