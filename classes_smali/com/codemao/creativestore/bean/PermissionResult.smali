.class public Lcom/codemao/creativestore/bean/PermissionResult;
.super Ljava/lang/Object;
.source "PermissionResult.java"


# instance fields
.field private result:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/codemao/creativestore/bean/PermissionResult;->result:I

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/creativestore/bean/PermissionResult;->result:I

    return v0
.end method

.method public setResult(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/codemao/creativestore/bean/PermissionResult;->result:I

    return-void
.end method
