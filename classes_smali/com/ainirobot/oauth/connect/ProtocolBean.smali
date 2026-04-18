.class public Lcom/ainirobot/oauth/connect/ProtocolBean;
.super Ljava/lang/Object;
.source "ProtocolBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;

.field private msg:Ljava/lang/String;

.field private ret:I

.field private stime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->data:Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->ret:I

    return v0
.end method

.method public getStime()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->stime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->data:Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRet(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->ret:I

    return-void
.end method

.method public setStime(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/ainirobot/oauth/connect/ProtocolBean;->stime:Ljava/lang/String;

    return-void
.end method
