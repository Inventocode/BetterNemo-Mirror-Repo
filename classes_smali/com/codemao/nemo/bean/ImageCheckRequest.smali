.class public Lcom/codemao/nemo/bean/ImageCheckRequest;
.super Ljava/lang/Object;
.source "ImageCheckRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private businessCode:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nemo"

    .line 7
    iput-object v0, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->businessCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBusinessCode()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->businessCode:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessCode(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->businessCode:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->params:Ljava/util/List;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImageCheckRequest;->uri:Ljava/lang/String;

    return-void
.end method
