.class public Lcom/codemao/nemo/bean/NemoEnvSwitchVO;
.super Ljava/lang/Object;
.source "NemoEnvSwitchVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private env:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnv()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;->env:Ljava/lang/String;

    return-object v0
.end method

.method public setEnv(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;->env:Ljava/lang/String;

    return-void
.end method
