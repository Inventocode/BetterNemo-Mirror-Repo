.class public Lcom/codemao/nemo/bean/BroadcastVO;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "BroadcastVO.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private scene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/bean/BroadcastVO;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/codemao/nemo/bean/BroadcastVO;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/codemao/nemo/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/BroadcastVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/BroadcastVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/BroadcastVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/BroadcastVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/BroadcastVO;->scene:Ljava/lang/String;

    return-void
.end method
