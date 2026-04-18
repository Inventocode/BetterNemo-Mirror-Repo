.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "CreativeBcmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->saveWork(ILjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$workId:Ljava/lang/String;

.field final synthetic val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;


# direct methods
.method public static synthetic $r8$lambda$FDaUWExy-9Q-vioQV5T9DBhhoD0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFLTWUNW2USzzCS95iNOieiSLsE(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->lambda$onFailure$3(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDP6jMTqGVYSDV6KO6vi784aduU(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->lambda$onSuccess$1(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxDKrJm9L1Axx3fMdyUqhNB6nYQ(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->lambda$onFailure$4(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHsMj4R7y0DmFq-WHtndDcrIhrk(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->lambda$onFailure$2(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 5

    .line 2025
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workId:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onFailure$2(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 2052
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->needUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$3(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 2055
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$4(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 2059
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V
    .registers 4

    .line 2034
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onSuccess$1(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 2

    const-string/jumbo v0, "网络错误，请确认后再试"

    .line 2038
    invoke-interface {p0, v0}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2045
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1900()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "40101008"

    .line 2047
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2048
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    .line 2050
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-interface {p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onIlleagal()V

    goto :goto_69

    .line 2051
    :cond_22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "402"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2052
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    goto :goto_69

    .line 2054
    :cond_3b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "401"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2055
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    .line 2057
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 2059
    :cond_5f
    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    :goto_69
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2066
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    const-string/jumbo p2, "网络错误，请确认后再试"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V
    .registers 5

    .line 2028
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setWork_id(Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2030
    :cond_1b
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->bindUrlWorkId(Ljava/lang/String;)V

    .line 2033
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$filePath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$2000(Ljava/lang/String;ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    .line 2034
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_3f

    .line 2038
    :catch_35
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    :goto_3f
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 2025
    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V

    return-void
.end method
