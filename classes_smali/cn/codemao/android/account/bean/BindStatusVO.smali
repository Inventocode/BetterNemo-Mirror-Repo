.class public Lcn/codemao/android/account/bean/BindStatusVO;
.super Ljava/lang/Object;
.source "BindStatusVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private is_bound:Z

.field private name:Ljava/lang/String;

.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 16
    iget v0, p0, Lcn/codemao/android/account/bean/BindStatusVO;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindStatusVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindStatusVO;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_bound()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/BindStatusVO;->is_bound:Z

    return v0
.end method

.method public setId(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->id:I

    return-void
.end method

.method public setIs_bound(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->is_bound:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->nickname:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindStatusVO{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/BindStatusVO;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/codemao/android/account/bean/BindStatusVO;->is_bound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
