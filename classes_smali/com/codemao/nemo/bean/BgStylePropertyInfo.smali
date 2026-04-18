.class public Lcom/codemao/nemo/bean/BgStylePropertyInfo;
.super Ljava/lang/Object;
.source "BgStylePropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private scene_id:Ljava/lang/String;

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/StyleVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/StyleVO;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/BgStylePropertyInfo;->styles:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/codemao/nemo/bean/BgStylePropertyInfo;->scene_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActor_id()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/BgStylePropertyInfo;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public setActor_id(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/BgStylePropertyInfo;->scene_id:Ljava/lang/String;

    return-void
.end method
