.class public final Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;
.super Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;
.source "AuthorizeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;
    }
.end annotation


# instance fields
.field private display:Ljava/lang/String;

.field private responseType:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;-><init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)V

    .line 21
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->access$000(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->scope:Ljava/lang/String;

    .line 22
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->access$100(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->state:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->access$200(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->display:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->access$300(Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->responseType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$1;)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;-><init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;)V

    return-void
.end method


# virtual methods
.method getParams(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->scope:Ljava/lang/String;

    const-string v0, "scope"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->state:Ljava/lang/String;

    const-string v0, "state"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->display:Ljava/lang/String;

    const-string v0, "display"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;->responseType:Ljava/lang/String;

    const-string v0, "responseType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
