.class public Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;
.super Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
.source "AuthorizeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder<",
        "Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private display:Ljava/lang/String;

.field private responseType:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;-><init>()V

    const-string v0, "mobile"

    .line 44
    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->display:Ljava/lang/String;

    const-string v0, "code"

    .line 45
    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->responseType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->display:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->responseType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;
    .registers 4

    .line 68
    invoke-virtual {p0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->checkNotNull()V

    const-string v0, "context == null"

    .line 69
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->responseType:Ljava/lang/String;

    const-string v1, "responseType"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->scope:Ljava/lang/String;

    const-string v1, "scope"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->state:Ljava/lang/String;

    const-string v1, "state"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;-><init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$1;)V

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->state:Ljava/lang/String;

    return-object p0
.end method
