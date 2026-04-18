.class public Lcom/codemao/nemo/fragment/NewBcmFragmentV2;
.super Lcom/codemao/creativecenter/NewBcmFragment;
.source "NewBcmFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;
    }
.end annotation


# instance fields
.field private coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

.field private courseID:J

.field private curCreateData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private curType:I

.field private dialog:Lcom/codemao/nemo/view/ReactUploadDialog;

.field private initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

.field private isNetting:Z

.field private isNewBeeGuiding:Z

.field private isNewbee:Z

.field private isUserInfoChange:Z

.field private topMenu:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private typeWorkId:J

.field private unLoginFrom:I

.field private unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

.field private videoController:Lcom/codemao/nemo/util/VideoControllerV2;


# direct methods
.method public static synthetic $r8$lambda$88n7IDSKhX3wVEBsZNa3yJMANxE(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Ljava/lang/String;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->lambda$showLoginTipsDialogForQuit$1(Ljava/lang/String;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMCgBJfPMx2q_6b6I1qNum8uYaM(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;ILcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->lambda$showLoginTipsDialogForUpload$3(ILcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OmNdlKfh7nFkTe_SBUB8Th_dFJ8(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->lambda$showLoginTipsDialogForQuit$0(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XBCaYIJuK4GAYHyO9WXRDr0YH6w(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->lambda$showLoginTipsDialogForUpload$2(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 99
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginFrom:I

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const/4 v2, 0x0

    .line 112
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    .line 113
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    .line 115
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNetting:Z

    .line 117
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    .line 118
    iput v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curType:I

    .line 119
    iput-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curCreateData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getBcmCloudWorksHistory()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Ljava/util/Map;
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getExraMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curCreateData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)I
    .registers 1

    .line 99
    iget p0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginFrom:I

    return p0
.end method

.method static synthetic access$1202(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showLoginTipsDialogForQuit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->saveDone()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->topMenu:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNetting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->doNet()V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->dialog:Lcom/codemao/nemo/view/ReactUploadDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/nemo/view/ReactUploadDialog;)Lcom/codemao/nemo/view/ReactUploadDialog;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->dialog:Lcom/codemao/nemo/view/ReactUploadDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;I)I
    .registers 2

    .line 99
    iput p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curType:I

    return p1
.end method

.method private doNet()V
    .registers 6

    .line 260
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->courseID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_32

    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNetting:Z

    if-eqz v0, :cond_d

    goto :goto_32

    :cond_d
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNetting:Z

    .line 264
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->courseID:J

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/retrofit/api/CourseService;->putPlayers(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    .line 266
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private getBcmCloudWorksHistory()V
    .registers 3

    .line 971
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcmCloudHistory(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;)V

    return-void
.end method

.method private getExraMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 917
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->typeWorkId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    .line 918
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->typeWorkId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setTypeWorkid(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 920
    :cond_27
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showLoginTipsDialogForQuit$0(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V
    .registers 4

    .line 670
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击继续退出"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getExraMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 671
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/bean/WorksEvent;->setUpdate(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->deleteWork()V

    .line 673
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 674
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$showLoginTipsDialogForQuit$1(Ljava/lang/String;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;Landroid/view/View;)V
    .registers 4

    .line 677
    iget-boolean p3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    if-eqz p3, :cond_21

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-点击登录保存"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getExraMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_27

    :cond_21
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    .line 680
    invoke-static {p1, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 682
    :goto_27
    sget-object p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isExitWithSave:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const/4 p1, 0x1

    .line 683
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    .line 684
    invoke-virtual {p2}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic lambda$showLoginTipsDialogForUpload$2(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V
    .registers 2

    .line 706
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showLoginTipsDialogForUpload$3(ILcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/view/View;)V
    .registers 5

    .line 710
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击前往登录（发布）"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 711
    iput p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginFrom:I

    const/4 p1, 0x1

    .line 712
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    .line 713
    sget-object p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isUnLoginFrom:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    .line 714
    invoke-virtual {p2}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method private saveDone()V
    .registers 3

    .line 439
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    .line 440
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 441
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;I)V

    .line 442
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method

.method private showLoginTipsDialogForQuit(Ljava/lang/String;)V
    .registers 5

    .line 659
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;-><init>(Landroid/content/Context;)V

    const-string v1, "你已经完成了<font color=\"#F7B500\">第一个</font>作品"

    .line 663
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const-string v2, "继续退出"

    .line 664
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const-string v2, "需要登录后才能保存哦～"

    .line 665
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setNoticeStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const v2, 0x7f080404

    .line 666
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setTopResource(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const v2, 0x7f0800a8

    .line 667
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setRightBgResource(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const-string v2, "登录保存"

    .line 668
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    .line 669
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Ljava/lang/String;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    .line 676
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    .line 687
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 690
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 691
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 692
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private showLoginTipsDialogForUpload(I)V
    .registers 5

    .line 700
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    const-string v1, "登录后才能发布作品哦~"

    .line 702
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    const-string v2, "放弃"

    .line 703
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    const-string v2, "前往登录"

    .line 704
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    .line 705
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;ILcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    .line 709
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 717
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 720
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 721
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 722
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method


# virtual methods
.method public afterDoGuideAction(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public cloudClickLogin()V
    .registers 3

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public editMetaBeforeSave(Lcom/codemao/creativestore/bean/MetaVO;)V
    .registers 2

    return-void
.end method

.method public getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;
    .registers 3

    .line 430
    new-instance v0, Lcom/codemao/creativecenter/bean/CreationMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/bean/CreationMode;-><init>(I)V

    return-object v0
.end method

.method public getLeftTopView(II)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    .line 763
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    if-eqz v0, :cond_7

    const-string v0, "新人创作页"

    goto :goto_9

    :cond_7
    const-string v0, "创作页"

    :goto_9
    return-object v0
.end method

.method public goPublishPage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    .line 767
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 768
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 769
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v2, "defaultImagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    const-string v2, "des"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2d
    const-string p1, "workId"

    .line 774
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 776
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    const/4 p1, 0x1

    const-string v1, "type"

    .line 778
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->closeAutoSave()V

    .line 780
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 781
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method public hasVideo()Z
    .registers 2

    .line 354
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideVideo()V
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->videoController:Lcom/codemao/nemo/util/VideoControllerV2;

    if-eqz v0, :cond_7

    .line 369
    invoke-virtual {v0}, Lcom/codemao/nemo/util/VideoControllerV2;->hide()V

    :cond_7
    return-void
.end method

.method public initMBcm()V
    .registers 4

    .line 931
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initMBcm()V

    .line 932
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 933
    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->getWorksName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 934
    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 935
    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->getCourseID()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 936
    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 937
    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    const/4 v1, 0x1

    .line 938
    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 939
    sput-boolean v1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 940
    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;
    .registers 9

    .line 418
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-nez v0, :cond_19

    .line 419
    new-instance v0, Lcom/codemao/creativestore/bean/WebUserInfo;

    const/4 v6, -0x1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativestore/bean/WebUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 420
    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WebUserInfo;->isLogin:Z

    return-object v0

    .line 423
    :cond_19
    new-instance v0, Lcom/codemao/creativestore/bean/WebUserInfo;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/codemao/creativestore/bean/WebUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public initVideoView(Landroid/widget/FrameLayout;I)V
    .registers 5

    .line 286
    new-instance p2, Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;)V

    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance p1, Lcom/codemao/nemo/util/VideoControllerV2;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/codemao/nemo/util/VideoControllerV2;-><init>(Lcom/codemao/nemo/view/JZVideoContainer2;Lcom/codemao/creativestore/bean/WorksEvent;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->videoController:Lcom/codemao/nemo/util/VideoControllerV2;

    return-void
.end method

.method public loadBcmDone()V
    .registers 5

    .line 318
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->loadBcmDone()V

    .line 319
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    if-eqz v0, :cond_77

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->getNewbeeGuideInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->getNewbeeGuideInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->getNewbeeGuideInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;

    .line 322
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data:image/png;base64,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/CommonUtil;->imageToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->setMsg(Ljava/lang/String;)V

    goto :goto_27

    .line 326
    :cond_5c
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showSideBarCover()V

    .line 327
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->getNewbeeGuideInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->showNewBeeGuide(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeToBlock()V

    const/4 v0, 0x1

    .line 329
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->putIsNewbeeGuideShowed(Z)V

    :cond_77
    return-void
.end method

.method public needGuideView()Z
    .registers 2

    .line 359
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public needToInitBcm()Z
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 859
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_22

    .line 863
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isRuning()Z

    move-result p1

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    if-eqz p1, :cond_22

    .line 864
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showAfterNewbeeGuide()V

    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v1, "course_info"

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    iput-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->coursInfo:Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    const-string v1, "newbeetypewokrid"

    const-wide/16 v2, -0x1

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->typeWorkId:J

    .line 133
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "course_id"

    .line 134
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->courseID:J

    const-string p1, "newbeeGuideList"

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initNewbeeMsg:Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 136
    :goto_34
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    :cond_36
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 142
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->dialog:Lcom/codemao/nemo/view/ReactUploadDialog;

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 960
    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    if-nez v0, :cond_1a

    iget v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    iget v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curType:I

    if-ne v0, v1, :cond_1a

    .line 961
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    iget-object v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->curCreateData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    :cond_1a
    return-void
.end method

.method public onLoadBcmError(Ljava/lang/Exception;)V
    .registers 5

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 337
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 341
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/dialog/pop/FullScreenLoadErroePop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_34
    return-void
.end method

.method public onMCreate()V
    .registers 1

    return-void
.end method

.method public onMDestroy()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->videoController:Lcom/codemao/nemo/util/VideoControllerV2;

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {v0}, Lcom/codemao/nemo/util/VideoControllerV2;->onDestroy()V

    :cond_7
    return-void
.end method

.method public onMPause()V
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->videoController:Lcom/codemao/nemo/util/VideoControllerV2;

    if-eqz v0, :cond_7

    .line 390
    invoke-virtual {v0}, Lcom/codemao/nemo/util/VideoControllerV2;->onPause()V

    :cond_7
    return-void
.end method

.method public onMResume()V
    .registers 1

    return-void
.end method

.method public onMStop()V
    .registers 1

    return-void
.end method

.method public onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V
    .registers 3

    return-void
.end method

.method public onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 799
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onResume()V

    .line 800
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    .line 802
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onUserInfoChange()V

    :cond_d
    return-void
.end method

.method public onStatusChangeFromRun()V
    .registers 3

    .line 870
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    if-eqz v0, :cond_14

    .line 871
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 873
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showAfterNewbeeGuide()V

    :cond_14
    return-void
.end method

.method public onTopMenuClick()V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->topMenu:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 151
    :cond_b
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewbee:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;Z)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->topMenu:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public onUploadButtonClick(I)V
    .registers 4

    .line 728
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 729
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 733
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击发布"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getExraMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 734
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_38

    .line 735
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showLoginTipsDialogForUpload(I)V

    return-void

    .line 738
    :cond_38
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 740
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isHavePublishStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$10;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;I)V

    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    goto :goto_50

    .line 753
    :cond_4d
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    :goto_50
    return-void
.end method

.method public onUploadPorgressEvent(Lcom/codemao/nemo/event/UploadPorgressEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 787
    throw p1
.end method

.method public onUserInfoChange()V
    .registers 5

    .line 808
    invoke-super {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onUserInfoChange()V

    .line 809
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserId(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    .line 810
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    sget-object v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isUnLoginFrom:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4a

    .line 811
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_47

    .line 812
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->reloadBcm()V

    .line 813
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isHavePublishStatus()Z

    move-result v0

    xor-int/2addr v0, v2

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$11;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    goto :goto_5e

    .line 826
    :cond_47
    iput-object v3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    goto :goto_5e

    .line 828
    :cond_4a
    sget-object v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isExitWithSave:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    if-ne v0, v1, :cond_5e

    .line 829
    iput-object v3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    .line 830
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 831
    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$12;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    invoke-virtual {p0, v2, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public publishWork(Ljava/lang/String;I)V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    sget-object v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;->isUnLoginFrom:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->unLoginToAction:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$UnLoginToAction;

    .line 534
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->moveUnLoginDirToUserDir(Ljava/lang/Long;)V

    .line 537
    :cond_18
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcmByUuid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserInfoChange(Z)V
    .registers 2

    .line 794
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isUserInfoChange:Z

    return-void
.end method

.method public showAfterNewbeeGuide()V
    .registers 7

    .line 897
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadWhenNeed()V

    .line 898
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    if-nez v0, :cond_8

    return-void

    .line 901
    :cond_8
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showGuideVideo()V

    const/4 v0, 0x0

    .line 902
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->isNewBeeGuiding:Z

    .line 903
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 905
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    .line 906
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$14;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$14;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    const/4 v4, 0x1

    const-string v5, "点击这里\n可以观看讲解视频哦～"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showModuleConfirm()V
    .registers 4

    .line 447
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;-><init>(Landroid/content/Context;)V

    .line 448
    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    .line 456
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    .line 473
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 476
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 477
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 478
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showNewBeeRunGuide(Ljava/lang/String;)V
    .registers 7

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-成功拼接预制积木"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getExraMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 881
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 882
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 883
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    .line 884
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$13;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZZ)V

    .line 892
    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->setNoticeContent(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    move-result-object p1

    .line 884
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showUpdateConfirm()V
    .registers 4

    .line 484
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;-><init>(Landroid/content/Context;)V

    const-string v1, "更新"

    .line 485
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const-string v2, "保存到本地"

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    const-string v2, "当前作品修改是否更新到发布状态?"

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$7;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$7;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    .line 502
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    .line 522
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 526
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showVideo()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->videoController:Lcom/codemao/nemo/util/VideoControllerV2;

    if-eqz v0, :cond_7

    .line 377
    invoke-virtual {v0}, Lcom/codemao/nemo/util/VideoControllerV2;->show()V

    :cond_7
    return-void
.end method
