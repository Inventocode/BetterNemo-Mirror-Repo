.class public Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
.super Ljava/lang/Object;
.source "AbstractRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private clientKeyArgument:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->params:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/util/Map;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKeyArgument:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method checkNotNull()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKey:Ljava/lang/String;

    const-string v1, "clientKey"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKeyArgument:Ljava/lang/String;

    const-string v1, "clientKeyArgument"

    invoke-static {v0, v1}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public setClientKey(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKey:Ljava/lang/String;

    return-object p0
.end method

.method public setClientKeyArgument(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->clientKeyArgument:Ljava/lang/String;

    return-object p0
.end method
