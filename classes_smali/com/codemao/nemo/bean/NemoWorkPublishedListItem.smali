.class public final Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;
.super Lcom/codemao/nemo/bean/UserPublishedWorkInfo;
.source "NemoWorkListItem.kt"


# instance fields
.field private final unify_share_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;-><init>()V

    const-string v0, ""

    .line 112
    iput-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->unify_share_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCommentTimes()Ljava/lang/String;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getCollect_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getForkTimes()Ljava/lang/String;
    .registers 2

    .line 127
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getFork_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLikeTimes()Ljava/lang/String;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPraise_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOpenSource()Z
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->isFork_enable()Z

    move-result v0

    return v0
.end method

.method public final getRecreate()Z
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getParent_id()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final getShareUrl()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->unify_share_url:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public final getShowTime()Ljava/lang/String;
    .registers 4

    .line 115
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPublish_time()J

    move-result-wide v0

    sget v2, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater2(JI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDateFormater2(publish…me, TimeUtil.TIME_SECOND)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnify_share_url()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->unify_share_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewTimes()Ljava/lang/String;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getView_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkTag()I
    .registers 4

    .line 137
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getRecommend_type()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_14

    return v1

    .line 140
    :cond_14
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getRecommend_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_56

    goto :goto_55

    :sswitch_22
    const-string v2, "SYSTEM_RECOMMEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_55

    :cond_2b
    const v1, 0x7f0e0176

    goto :goto_55

    :sswitch_2f
    const-string v2, "SUBJECT_RECOMMEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_55

    :cond_38
    const v1, 0x7f0e0174

    goto :goto_55

    :sswitch_3c
    const-string v2, "USER_COURSE_RECOMMEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_55

    :cond_45
    const v1, 0x7f0e0173

    goto :goto_55

    :sswitch_49
    const-string v2, "NEW_RECOMMEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_55

    :cond_52
    const v1, 0x7f0e0175

    :cond_55
    :goto_55
    return v1

    :sswitch_data_56
    .sparse-switch
        -0x1f2a9763 -> :sswitch_49
        -0x12030894 -> :sswitch_3c
        0x31581d29 -> :sswitch_2f
        0x4173d28c -> :sswitch_22
    .end sparse-switch
.end method
