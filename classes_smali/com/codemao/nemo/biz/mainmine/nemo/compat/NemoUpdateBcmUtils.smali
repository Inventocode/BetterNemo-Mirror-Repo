.class public Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;
.super Ljava/lang/Object;
.source "NemoUpdateBcmUtils.java"


# direct methods
.method public static synthetic $r8$lambda$I4AjCiFv5by0XGCtVKqAmEnBcpk(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->lambda$download$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V

    return-void
.end method

.method public static download(Landroid/content/Context;ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 5

    .line 57
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_b

    const p1, 0x7f1202e8

    .line 58
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 62
    :cond_b
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 63
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 67
    :cond_15
    new-instance p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2, p3, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V

    invoke-static {p0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$download$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V
    .registers 9

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz p0, :cond_7

    move-object v1, p0

    goto :goto_2b

    .line 73
    :cond_7
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    :goto_2b
    const/4 v0, 0x0

    .line 77
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    invoke-static {p2, v0, v1, p1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public static updateBcm(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2a

    .line 43
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 44
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 45
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    iget-object v5, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_27

    goto :goto_2b

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_30

    .line 52
    invoke-static {p0, v0, v2, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->download(Landroid/content/Context;ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :cond_30
    return-void
.end method

.method public static updateBcmNew(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2e

    .line 27
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    .line 28
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 29
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    iget-object v5, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    goto :goto_2f

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    if-eqz v2, :cond_34

    .line 36
    invoke-static {p0, v0, v2, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->download(Landroid/content/Context;ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :cond_34
    return-void
.end method
