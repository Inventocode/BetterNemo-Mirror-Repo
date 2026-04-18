.class public Lcom/codemao/creativestore/bean/BroadcastVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "BroadcastVO.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private scene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-void
.end method
