.class public Lcom/codemao/creativestore/bean/ApiVO;
.super Ljava/lang/Object;
.source "ApiVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private host:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ApiVO;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ApiVO;->port:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ApiVO;->host:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ApiVO;->port:Ljava/lang/String;

    return-void
.end method
