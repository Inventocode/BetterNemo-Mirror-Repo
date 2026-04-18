.class public Lcom/codemao/creativestore/bean/PhotoRenderDataResualtBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "PhotoRenderDataResualtBean.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/creativestore/bean/PhotoRenderDataResualtBean;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/PhotoRenderDataResualtBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/creativestore/bean/PhotoRenderDataResualtBean;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/PhotoRenderDataResualtBean;->message:Ljava/lang/String;

    return-void
.end method
