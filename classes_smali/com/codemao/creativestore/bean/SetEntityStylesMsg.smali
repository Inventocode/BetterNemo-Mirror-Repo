.class public Lcom/codemao/creativestore/bean/SetEntityStylesMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "SetEntityStylesMsg.java"


# instance fields
.field current_style_id:Ljava/lang/String;

.field entity_id:Ljava/lang/String;

.field styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->entity_id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->current_style_id:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->styles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrent_style_id()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->current_style_id:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity_id()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->entity_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->styles:Ljava/util/List;

    return-object v0
.end method

.method public setCurrent_style_id(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->current_style_id:Ljava/lang/String;

    return-void
.end method

.method public setEntity_id(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->entity_id:Ljava/lang/String;

    return-void
.end method

.method public setStyles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;->styles:Ljava/util/List;

    return-void
.end method
