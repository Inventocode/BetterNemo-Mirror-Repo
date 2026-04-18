.class public Lcom/codemao/creativestore/bean/ThemeMaterialDetail;
.super Ljava/lang/Object;
.source "ThemeMaterialDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private material_name:Ljava/lang/String;

.field private material_type:I

.field private resources_url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAnim()Z
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->resources_url_list:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getId()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->id:J

    return-wide v0
.end method

.method public getMaterial_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->material_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterial_type()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->material_type:I

    return v0
.end method

.method public getResources_url_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->resources_url_list:Ljava/util/List;

    return-object v0
.end method

.method public setId(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->id:J

    return-void
.end method

.method public setMaterial_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->material_name:Ljava/lang/String;

    return-void
.end method

.method public setMaterial_type(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->material_type:I

    return-void
.end method

.method public setResources_url_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->resources_url_list:Ljava/util/List;

    return-void
.end method
