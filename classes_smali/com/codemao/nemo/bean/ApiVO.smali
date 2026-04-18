.class public Lcom/codemao/nemo/bean/ApiVO;
.super Ljava/lang/Object;
.source "ApiVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private host:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/ApiVO;->host:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/bean/ApiVO;->port:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/ApiVO;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/ApiVO;->port:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/ApiVO;->host:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/ApiVO;->port:Ljava/lang/String;

    return-void
.end method
