.class public Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;
.super Ljava/lang/Object;
.source "CreateOptionBackgroundShow.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isVisible:Z

.field private screenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->screenId:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible:Z

    return-void
.end method


# virtual methods
.method public getActorId()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->screenId:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible:Z

    return v0
.end method

.method public setActorId(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->screenId:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible:Z

    return-void
.end method
