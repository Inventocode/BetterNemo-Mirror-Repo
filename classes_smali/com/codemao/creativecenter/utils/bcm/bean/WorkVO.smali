.class public Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;
.super Ljava/lang/Object;
.source "WorkVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bcm_version:Ljava/lang/String;

.field private cloud_variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;"
        }
    .end annotation
.end field

.field private n_blocks:I

.field private n_roles:I

.field private name:Ljava/lang/String;

.field private orientation:I

.field private preview:Ljava/lang/String;

.field private root_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private template_id:Ljava/lang/String;

.field private template_type:I

.field private work_id:Ljava/lang/String;

.field private work_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->orientation:I

    return-void
.end method


# virtual methods
.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCloud_variables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->cloud_variables:Ljava/util/List;

    return-object v0
.end method

.method public getN_blocks()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->n_blocks:I

    return v0
.end method

.method public getN_roles()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->n_roles:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->orientation:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot_ids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->root_ids:Ljava/util/List;

    return-object v0
.end method

.method public getTemplate_id()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->template_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate_type()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->template_type:I

    return v0
.end method

.method public getWork_id()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->work_id:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_url()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->work_url:Ljava/lang/String;

    return-object v0
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setCloud_variables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->cloud_variables:Ljava/util/List;

    return-void
.end method

.method public setN_blocks(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->n_blocks:I

    return-void
.end method

.method public setN_roles(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->n_roles:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->orientation:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->preview:Ljava/lang/String;

    return-void
.end method

.method public setRoot_ids(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->root_ids:Ljava/util/List;

    return-void
.end method

.method public setTemplate_id(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->template_id:Ljava/lang/String;

    return-void
.end method

.method public setTemplate_type(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->template_type:I

    return-void
.end method

.method public setWork_id(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->work_id:Ljava/lang/String;

    return-void
.end method

.method public setWork_url(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->work_url:Ljava/lang/String;

    return-void
.end method
