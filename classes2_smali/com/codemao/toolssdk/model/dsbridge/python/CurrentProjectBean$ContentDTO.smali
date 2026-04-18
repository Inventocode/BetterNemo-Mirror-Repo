.class public Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;
.super Ljava/lang/Object;
.source "CurrentProjectBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDTO"
.end annotation


# instance fields
.field private file_id:I

.field private file_name:Ljava/lang/String;

.field private file_type:I

.field private open:Z

.field private pid:I

.field private source:Ljava/lang/String;

.field private update_time:Ljava/lang/Double;

.field private work_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_id()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_id:I

    return v0
.end method

.method public getFile_name()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_type()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_type:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->pid:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/Double;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->update_time:Ljava/lang/Double;

    return-object v0
.end method

.method public getWork_id()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->work_id:I

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->open:Z

    return v0
.end method

.method public setFile_id(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_id:I

    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setFile_type(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->file_type:I

    return-void
.end method

.method public setOpen(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->open:Z

    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->pid:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->source:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/Double;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->update_time:Ljava/lang/Double;

    return-void
.end method

.method public setWork_id(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;->work_id:I

    return-void
.end method
