.class public Lcom/codemao/nemo/bean/ConfigVO;
.super Ljava/lang/Object;
.source "ConfigVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private api:Lcom/codemao/nemo/bean/ApiVO;

.field private env:Ljava/lang/String;

.field private player_path:Ljava/lang/String;

.field private user_db_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/codemao/nemo/bean/ConfigVO;
    .registers 4

    .line 50
    new-instance v0, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/ConfigVO;-><init>()V

    const-string v1, "release"

    .line 51
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ConfigVO;->setEnv(Ljava/lang/String;)V

    const-string v1, "https://nemo.codemao.cn/work_detail/"

    .line 52
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ConfigVO;->setPlayer_path(Ljava/lang/String;)V

    const-string v1, "1"

    .line 53
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ConfigVO;->setUser_db_version(Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/codemao/nemo/bean/ApiVO;

    const-string v2, "https://api.codemao.cn"

    const-string v3, "443"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/ApiVO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ConfigVO;->setApi(Lcom/codemao/nemo/bean/ApiVO;)V

    .line 55
    new-instance v0, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/ConfigVO;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getApi()Lcom/codemao/nemo/bean/ApiVO;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/ConfigVO;->api:Lcom/codemao/nemo/bean/ApiVO;

    return-object v0
.end method

.method public getEnv()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/ConfigVO;->env:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer_path()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/ConfigVO;->player_path:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_db_version()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/ConfigVO;->user_db_version:Ljava/lang/String;

    return-object v0
.end method

.method public setApi(Lcom/codemao/nemo/bean/ApiVO;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/ConfigVO;->api:Lcom/codemao/nemo/bean/ApiVO;

    return-void
.end method

.method public setEnv(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/ConfigVO;->env:Ljava/lang/String;

    return-void
.end method

.method public setPlayer_path(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/ConfigVO;->player_path:Ljava/lang/String;

    return-void
.end method

.method public setUser_db_version(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/ConfigVO;->user_db_version:Ljava/lang/String;

    return-void
.end method
