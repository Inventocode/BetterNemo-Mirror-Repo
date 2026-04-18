.class public abstract Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;
.super Ljava/lang/Object;
.source "AbstractRequest.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/request/IRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;
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
.method constructor <init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->access$000(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->params:Ljava/util/Map;

    .line 22
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->access$100(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientKey:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->access$200(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientId:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->access$300(Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientKeyArgument:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "context == null"

    .line 29
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->params:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->getParams(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientKey:Ljava/lang/String;

    const-string v2, "clientKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientId:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest;->clientKeyArgument:Ljava/lang/String;

    const-string v2, "clientKeyArgument"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "versionCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "authClientSettings"

    .line 38
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_4a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract getParams(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
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
.end method
