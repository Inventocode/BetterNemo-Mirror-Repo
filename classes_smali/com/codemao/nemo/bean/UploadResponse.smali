.class public Lcom/codemao/nemo/bean/UploadResponse;
.super Ljava/lang/Object;
.source "UploadResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadResponse;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadResponse;->work_name:Ljava/lang/String;

    return-void
.end method
