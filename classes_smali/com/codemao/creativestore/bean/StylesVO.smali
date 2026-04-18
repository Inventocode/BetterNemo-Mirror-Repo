.class public Lcom/codemao/creativestore/bean/StylesVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "StylesVO.java"


# instance fields
.field private styles_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/StyleVO;",
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
.method public getStyles_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/codemao/creativestore/bean/StylesVO;->styles_dict:Ljava/util/Map;

    return-object v0
.end method

.method public setStyles_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/StylesVO;->styles_dict:Ljava/util/Map;

    return-void
.end method
