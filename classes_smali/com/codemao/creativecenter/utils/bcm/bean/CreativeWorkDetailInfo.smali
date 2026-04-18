.class public Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
.super Ljava/lang/Object;
.source "CreativeWorkDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COMMON_WORK:Ljava/lang/String; = "COMMON_WORK"

.field public static final NEW_WORK_MIAOMIAO_KAN:Ljava/lang/String; = "NEW_RECOMMEND_WORK"

.field public static final OFFICIAL_COURSE_WORK:Ljava/lang/String; = "OFFICIAL_COURSE_WORK"

.field public static final SUBJECT_WORK:Ljava/lang/String; = "SUBJECT_WORK"

.field public static final USER_COURSE_WORK:Ljava/lang/String; = "USER_COURSE_WORK"

.field public static final WORK_SCREEN_HORIZONTAL_16_9:I = 0x3

.field public static final WORK_SCREEN_HORIZONTAL_4_3:I = 0x2

.field public static final WORK_SCREEN_VERTICAL:I = 0x1

.field public static final WORK_SOURCE_KITTEN:Ljava/lang/String; = "KITTEN"

.field public static final WORK_SOURCE_KITTEN3:Ljava/lang/String; = "KITTEN3"

.field public static final WORK_SOURCE_KITTEN4:Ljava/lang/String; = "KITTEN4"

.field public static final WORK_SOURCE_NEMO:Ljava/lang/String; = "NEMO"


# instance fields
.field private abilities:Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

.field private base64Str:Ljava/lang/String;

.field private bcm_url:Ljava/lang/String;

.field private bcm_version:Ljava/lang/String;

.field private collect_times:I

.field private comment_times:I

.field private description:Ljava/lang/String;

.field private fork_enable:Z

.field private id:J

.field private ide_type:Ljava/lang/String;

.field private introduction:Ljava/lang/String;

.field private n_brick:I

.field private n_roles:I

.field private n_tree_nodes:I

.field private operation:Ljava/lang/String;

.field private orientation:I

.field private parent_id:J

.field private parent_user_name:Ljava/lang/String;

.field private player_url:Ljava/lang/String;

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private screenshot_cover_url:Ljava/lang/String;

.field private share_times:I

.field private share_url:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private unify_share_url:Ljava/lang/String;

.field private user_info:Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

.field private view_times:I

.field private work_label_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;"
        }
    .end annotation
.end field

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->abilities:Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    return-object v0
.end method

.method public getBase64Str()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->base64Str:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_url()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBcm_version()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCollect_times()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->collect_times:I

    return v0
.end method

.method public getCombDesCription()Ljava/lang/String;
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->type:Ljava/lang/String;

    const-string v1, "NEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    return-object v0

    .line 239
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 240
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "喜欢我的作品吗？点个赞再走吧"

    return-object v0

    .line 243
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "操作说明："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_36
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 246
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    return-object v0

    .line 248
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n操作说明："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment_times()I
    .registers 2

    .line 224
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->comment_times:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->id:J

    return-wide v0
.end method

.method public getIde_type()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->ide_type:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getN_brick()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_brick:I

    return v0
.end method

.method public getN_roles()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_roles:I

    return v0
.end method

.method public getN_tree_nodes()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_tree_nodes:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->orientation:I

    return v0
.end method

.method public getParent_id()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->parent_id:J

    return-wide v0
.end method

.method public getParent_user_name()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->parent_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer_url()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->player_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->publish_time:J

    return-wide v0
.end method

.method public getScreenshot_cover_url()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->screenshot_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_times()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->share_times:I

    return v0
.end method

.method public getShare_url()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnify_share_url()Ljava/lang/String;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->unify_share_url:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 289
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->unify_share_url:Ljava/lang/String;

    return-object v0

    .line 287
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getShare_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->user_info:Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    return-object v0
.end method

.method public getView_times()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->view_times:I

    return v0
.end method

.method public getWork_label_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->work_label_list:Ljava/util/List;

    return-object v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isFork_enable()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->fork_enable:Z

    return v0
.end method

.method public setAbilities(Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->abilities:Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    return-void
.end method

.method public setBase64Str(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->base64Str:Ljava/lang/String;

    return-void
.end method

.method public setBcm_url(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->bcm_url:Ljava/lang/String;

    return-void
.end method

.method public setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setCollect_times(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->collect_times:I

    return-void
.end method

.method public setComment_times(I)V
    .registers 2

    .line 220
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->comment_times:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setFork_enable(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->fork_enable:Z

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 77
    iput-wide p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->id:J

    return-void
.end method

.method public setIde_type(Ljava/lang/String;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->ide_type:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setN_brick(I)V
    .registers 2

    .line 212
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_brick:I

    return-void
.end method

.method public setN_roles(I)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_roles:I

    return-void
.end method

.method public setN_tree_nodes(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->n_tree_nodes:I

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->operation:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 200
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->orientation:I

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 93
    iput-wide p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->parent_id:J

    return-void
.end method

.method public setParent_user_name(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->parent_user_name:Ljava/lang/String;

    return-void
.end method

.method public setPlayer_url(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->player_url:Ljava/lang/String;

    return-void
.end method

.method public setPraise_times(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->praise_times:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 138
    iput-wide p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->publish_time:J

    return-void
.end method

.method public setScreenshot_cover_url(Ljava/lang/String;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->screenshot_cover_url:Ljava/lang/String;

    return-void
.end method

.method public setShare_times(I)V
    .registers 2

    .line 171
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->share_times:I

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->share_url:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnify_share_url(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->unify_share_url:Ljava/lang/String;

    return-void
.end method

.method public setUser_info(Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->user_info:Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->view_times:I

    return-void
.end method

.method public setWork_label_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->work_label_list:Ljava/util/List;

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->work_name:Ljava/lang/String;

    return-void
.end method
