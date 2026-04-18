.class public Lcom/codemao/creativecenter/bean/CreationMode;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "CreationMode.java"


# instance fields
.field private mode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 9
    iput p1, p0, Lcom/codemao/creativecenter/bean/CreationMode;->mode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/creativecenter/bean/CreationMode;->mode:I

    return v0
.end method
