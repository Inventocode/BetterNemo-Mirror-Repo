.class public Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;
.super Ljava/lang/Object;
.source "CurrentProjectBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;
    }
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;",
            ">;"
        }
    .end annotation
.end field

.field private language_type:I

.field private update_time:Ljava/lang/Double;

.field private work_id:I

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage_type()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->language_type:I

    return v0
.end method

.method public getUpdate_time()Ljava/lang/Double;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->update_time:Ljava/lang/Double;

    return-object v0
.end method

.method public getWork_id()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->work_id:I

    return v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean$ContentDTO;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->content:Ljava/util/List;

    return-void
.end method

.method public setLanguage_type(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->language_type:I

    return-void
.end method

.method public setUpdate_time(Ljava/lang/Double;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->update_time:Ljava/lang/Double;

    return-void
.end method

.method public setWork_id(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->work_id:I

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/CurrentProjectBean;->work_name:Ljava/lang/String;

    return-void
.end method
