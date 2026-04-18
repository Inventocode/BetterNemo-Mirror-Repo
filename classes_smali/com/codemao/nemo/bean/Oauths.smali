.class public Lcom/codemao/nemo/bean/Oauths;
.super Ljava/lang/Object;
.source "Oauths.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private is_bound:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/nemo/bean/Oauths;->id:I

    return v0
.end method

.method public getIs_bound()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/Oauths;->is_bound:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/Oauths;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 11
    iput p1, p0, Lcom/codemao/nemo/bean/Oauths;->id:I

    return-void
.end method

.method public setIs_bound(Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/Oauths;->is_bound:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/Oauths;->name:Ljava/lang/String;

    return-void
.end method
