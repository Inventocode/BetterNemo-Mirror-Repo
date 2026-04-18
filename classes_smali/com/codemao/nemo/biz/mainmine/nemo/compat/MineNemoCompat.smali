.class public Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;
.super Ljava/lang/Object;
.source "MineNemoCompat.java"


# instance fields
.field protected context:Landroid/content/Context;

.field private hasEnterTimeOut:Z


# direct methods
.method public static synthetic $r8$lambda$AwdNBT2nZOnzjigL7tg1ee-xDsw(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->lambda$goCreatePage$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;)Z
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method private enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 107
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 108
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 109
    iput v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 110
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    goto :goto_22

    .line 113
    :cond_1c
    iput v3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 114
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 116
    :goto_22
    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    iput-boolean v3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    .line 117
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 118
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 120
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    return-void
.end method

.method private hasEnterTimeout()Z
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeOut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 128
    iput-boolean v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeOut:Z

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    return v1
.end method

.method private synthetic lambda$goCreatePage$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeOut:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeOut:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public goCreatePage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 36
    iget v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const-string/jumbo v3, "已发布"

    const-string/jumbo v4, "未发布"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_10

    move-object v2, v3

    goto :goto_11

    :cond_10
    move-object v2, v4

    :goto_11
    const/4 v6, 0x0

    aput-object v2, v1, v6

    const-string/jumbo v2, "我的-点击作品卡片"

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    iget v6, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v6, v5, :cond_23

    goto :goto_24

    :cond_23
    move-object v3, v4

    :goto_24
    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->hasEnterTimeOut:Z

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v0, v5, :cond_68

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    new-instance v2, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>()V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/util/List;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_6b

    .line 101
    :cond_68
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :goto_6b
    return-void
.end method
