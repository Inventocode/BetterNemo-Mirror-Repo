.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private bcmEncryptUrl:Ljava/lang/String;

.field private final checkCoverResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final checkPicturesResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private forbidPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private isAITag:Ljava/lang/Boolean;

.field private final netError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final publishResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final publishStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private submitId:Ljava/lang/String;

.field private final workPublishInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PrJgRLcypw9pc92YD8V4UwI86NY(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->showPublishForbid$lambda$1(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWnoLO9Lz2UcSLDz5xocoVY3PYY(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->showPublishForbid$lambda$2(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishStatus:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkCoverResult:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPicturesResult:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishResult:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->workPublishInfo:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->netError:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$executeCheckPictures(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;JLjava/util/List;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->executeCheckPictures(JLjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$publishFail(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/Integer;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishFail(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$setAITag$p(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/Boolean;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->isAITag:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$setBcmEncryptUrl$p(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->bcmEncryptUrl:Ljava/lang/String;

    return-void
.end method

.method private final executeCheckPictures(JLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 135
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V

    .line 134
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->checkPictures(JLjava/util/List;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method private final publishFail(Ljava/lang/Integer;)V
    .registers 10

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Lcom/ljwx/baseapp/response/DataResult$Fail;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-nez p1, :cond_14

    goto :goto_26

    .line 228
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x263e0a1

    if-ne v1, v2, :cond_26

    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const-string/jumbo v1, "作品不存在,请检查确认"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_50

    :cond_26
    :goto_26
    const v1, 0x54501

    if-nez p1, :cond_2c

    goto :goto_3c

    .line 233
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3c

    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x3

    const-string/jumbo v1, "作品审核中，暂时无法更新"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_50

    :cond_3c
    :goto_3c
    const v1, 0x2656b2a

    if-nez p1, :cond_42

    goto :goto_50

    .line 238
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_50

    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const-string/jumbo v1, "操作过于频繁，请稍后再试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private static final showPublishForbid$lambda$1(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    const-string p2, "$context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goLocalWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final showPublishForbid$lambda$2(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->forbidPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final checkCover(Ljava/lang/String;)V
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "发起封面图片检测:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "流程-发布"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 52
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkCover$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkCover$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V

    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->checkCover(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final checkCoverNow(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "发起封面图片检测:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "流程-发布"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 75
    new-instance v2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkCoverNow$1;

    invoke-direct {v2, v0, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkCoverNow$1;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V

    .line 73
    invoke-virtual {v1, p1, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->checkCover(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final checkPictures(JLandroid/content/Intent;)V
    .registers 7

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publish_work_pictures"

    .line 95
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 96
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_2d

    .line 97
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo p2, "图片json链接为空,直接返回成功"

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPicturesResult:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Success;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_2d
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "图片json链接:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 104
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;J)V

    .line 102
    invoke-virtual {v0, p3, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->readPicturesJson(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public createRepository()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;
    .registers 2

    .line 45
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->createRepository()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    move-result-object v0

    return-object v0
.end method

.method public final getAITag()Ljava/lang/Boolean;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->isAITag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCheckCoverResult()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkCoverResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCheckPicturesResult()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPicturesResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getNetError()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->netError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPublishInfo(J)V
    .registers 5

    .line 157
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 159
    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V

    .line 157
    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->getPublishInfo(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final getPublishResult()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPublishStatus()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPublishStatus(J)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 247
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    .line 249
    new-instance v2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroidx/lifecycle/MutableLiveData;)V

    .line 247
    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->getPublishStatus(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final getWorkPublishInfo()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->workPublishInfo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final publishWork(JLandroid/util/ArrayMap;Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->bcmEncryptUrl:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v1, "bcmc_url"

    .line 181
    invoke-virtual {p3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->submitId:Ljava/lang/String;

    const-string v1, "submit_id"

    invoke-virtual {p3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "发起发布,workId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",参数:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "流程-发布"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;

    invoke-direct {v1, p0, p4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->publishWork(JLjava/util/Map;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final showPublishForbid(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    .line 214
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\$&@"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v1

    :goto_16
    if-eqz p2, :cond_1f

    .line 215
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    if-eqz p2, :cond_2a

    const/4 v1, 0x1

    .line 216
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 217
    :cond_2a
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 218
    new-instance v2, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;

    new-instance v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V

    invoke-direct {v2, p1, v0, v3, v1}, Lcom/codemao/nemo/dialog/pop/PublishForbidTipsPop;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 217
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->forbidPop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
