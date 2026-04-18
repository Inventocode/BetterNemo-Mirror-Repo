.class public Lcom/codemao/creativestore/bean/MetaVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "MetaVO.java"


# static fields
.field public static final KEY_ALL_BLOCK_COUNTS:Ljava/lang/String; = "block_cnt"

.field public static final KEY_BLOCK_COUNTS_WITHOUT_INVISIBLE:Ljava/lang/String; = "block_cnt_without_invisible"

.field public static final KEY_IS_OPEN_ASSIST_MODE:Ljava/lang/String; = "is_open_assist_mode"

.field public static final TYPE_MODULE:I = 0x1


# instance fields
.field private bcm_count:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bcm_name:Ljava/lang/String;

.field private bcm_url:Ljava/lang/String;

.field private bcm_version:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private download_fail:Z

.field private extraDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private have_published_status:Z

.field private have_remote_resources:Z

.field private isLandscape:Z

.field private isMicroBit:Z

.field private isValid:Z

.field private material_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mcloudVariable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;"
        }
    .end annotation
.end field

.field private parent_id:Ljava/lang/Long;

.field private publish_preview:Ljava/lang/String;

.field private publish_status:I

.field private reviewState:I

.field private template_id:J

.field private term_id:J

.field private type:I

.field private upload_status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_count:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->upload_status:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->mcloudVariable:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->extraDatas:Ljava/util/Map;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape:Z

    .line 46
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativestore/bean/MetaVO;
    .registers 4

    .line 189
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/MetaVO;

    return-object v0
.end method

.method public getBcm_count()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_count:Ljava/util/Map;

    return-object v0
.end method

.method public getBcm_name()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_name:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_url()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDatas()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->extraDatas:Ljava/util/Map;

    return-object v0
.end method

.method public getMaterial_urls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->material_urls:Ljava/util/List;

    return-object v0
.end method

.method public getMcloudVariable()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->mcloudVariable:Ljava/util/List;

    return-object v0
.end method

.method public getParent_id()Ljava/lang/Long;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->parent_id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPublish_preview()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->publish_preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_status()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->publish_status:I

    return v0
.end method

.method public getReviewState()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->reviewState:I

    return v0
.end method

.method public getTemplate_id()J
    .registers 3

    .line 165
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->template_id:J

    return-wide v0
.end method

.method public getTerm_id()J
    .registers 3

    .line 209
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->term_id:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->type:I

    return v0
.end method

.method public getUpload_status()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->upload_status:Ljava/util/Map;

    return-object v0
.end method

.method public isDownload_fail()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->download_fail:Z

    return v0
.end method

.method public isHave_published_status()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->have_published_status:Z

    return v0
.end method

.method public isHave_remote_resources()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->have_remote_resources:Z

    return v0
.end method

.method public isLandscape()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape:Z

    return v0
.end method

.method public isMicroBit()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MetaVO;->isValid:Z

    return v0
.end method

.method public setBcm_count(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_count:Ljava/util/Map;

    return-void
.end method

.method public setBcm_name(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_name:Ljava/lang/String;

    return-void
.end method

.method public setBcm_url(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_url:Ljava/lang/String;

    return-void
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownload_fail(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->download_fail:Z

    return-void
.end method

.method public setExtraDatas(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->extraDatas:Ljava/util/Map;

    return-void
.end method

.method public setHave_published_status(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->have_published_status:Z

    return-void
.end method

.method public setHave_remote_resources(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->have_remote_resources:Z

    return-void
.end method

.method public setLandscape(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape:Z

    return-void
.end method

.method public setMaterial_urls(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->material_urls:Ljava/util/List;

    return-void
.end method

.method public setMcloudVariable(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/CloudVariable;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->mcloudVariable:Ljava/util/List;

    return-void
.end method

.method public setMicroBit(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit:Z

    return-void
.end method

.method public setParent_id(Ljava/lang/Long;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->parent_id:Ljava/lang/Long;

    return-void
.end method

.method public setPublish_preview(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->publish_preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_status(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->publish_status:I

    return-void
.end method

.method public setReviewState(I)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->reviewState:I

    return-void
.end method

.method public setTemplate_id(J)V
    .registers 3

    .line 169
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->template_id:J

    return-void
.end method

.method public setTerm_id(J)V
    .registers 3

    .line 213
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->term_id:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->type:I

    return-void
.end method

.method public setUpload_status(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->upload_status:Ljava/util/Map;

    return-void
.end method

.method public setValid(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MetaVO;->isValid:Z

    return-void
.end method
