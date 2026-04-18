.class public Lcom/codemao/creativestore/bean/MaterialSoundBean;
.super Ljava/lang/Object;
.source "MaterialSoundBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialSoundBean;->url:Ljava/lang/String;

    return-void
.end method
