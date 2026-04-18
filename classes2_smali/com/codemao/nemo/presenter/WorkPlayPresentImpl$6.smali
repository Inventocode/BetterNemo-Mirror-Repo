.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;
.super Ljava/lang/Object;
.source "WorkPlayPresentImpl.java"

# interfaces
.implements Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initJsCallNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;


# direct methods
.method public static synthetic $r8$lambda$3iFsn_rXz5D0ZRi5W2d4FsiuqjA(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->lambda$hasCloudVariable$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWQEO_N2Qs4EoEkl4tLbDc9-QfE(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->lambda$onLoadFinished$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nh2Zby7lxO-C1hVrZm0SyCSkGsk(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->lambda$onLoadFailed$1()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$hasCloudVariable$2(Z)V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->cloudStatus(Z)V

    return-void
.end method

.method private synthetic lambda$onLoadFailed$1()V
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onLoadFail()V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Ljava/lang/String;)V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onLoadFinish(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasCloudVariable(Z)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$1;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->setPlayerUI(Z)V

    return-void
.end method

.method public onLoadFailed()V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->setPlayerUI(Z)V

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->startPlayer()V

    return-void
.end method

.method public onPlayerStart()V
    .registers 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v1

    invoke-interface {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getPlayViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击运行"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public toggleAccelerometer(Z)V
    .registers 3

    if-eqz p1, :cond_26

    .line 368
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$300(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    const/16 v0, 0x190

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setUpdateInterval(I)V

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/Accelerometer;->startUpdates()V

    goto :goto_39

    .line 372
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/Accelerometer;->stopUpdates()V

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    :goto_39
    return-void
.end method

.method public toggleRecorder(Z)V
    .registers 3

    if-nez p1, :cond_c

    .line 393
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    return-void

    .line 396
    :cond_c
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    .line 397
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$300(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    .line 398
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->requestAuthorization(Landroid/app/Activity;)V

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->prepareRecording()V

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    const v0, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->startRecording(F)V

    return-void
.end method
