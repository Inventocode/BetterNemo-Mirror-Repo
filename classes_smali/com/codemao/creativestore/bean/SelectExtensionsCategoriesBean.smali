.class public Lcom/codemao/creativestore/bean/SelectExtensionsCategoriesBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "SelectExtensionsCategoriesBean.java"


# instance fields
.field private locked_categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected_categories:Ljava/util/List;
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

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocked_categories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SelectExtensionsCategoriesBean;->locked_categories:Ljava/util/List;

    return-object v0
.end method

.method public getSelected_categories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SelectExtensionsCategoriesBean;->selected_categories:Ljava/util/List;

    return-object v0
.end method

.method public setLocked_categories(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SelectExtensionsCategoriesBean;->locked_categories:Ljava/util/List;

    return-void
.end method

.method public setSelected_categories(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SelectExtensionsCategoriesBean;->selected_categories:Ljava/util/List;

    return-void
.end method
