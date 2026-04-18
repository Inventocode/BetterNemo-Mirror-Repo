.class public Lcom/codemao/creativestore/bean/ThemeMaterialInfo;
.super Ljava/lang/Object;
.source "ThemeMaterialInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private material_info_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;"
        }
    .end annotation
.end field

.field private material_package:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterial_info_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->material_info_list:Ljava/util/List;

    return-object v0
.end method

.method public getMaterial_package()Lcom/codemao/creativestore/bean/ThemeMaterialListItem;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->material_package:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    return-object v0
.end method

.method public setMaterial_info_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->material_info_list:Ljava/util/List;

    return-void
.end method

.method public setMaterial_package(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialInfo;->material_package:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    return-void
.end method
