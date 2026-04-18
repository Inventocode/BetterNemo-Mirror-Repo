.class Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;
.super Ljava/lang/Object;
.source "KNWorkPlayPresentImpl.java"

# interfaces
.implements Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->initJsCallNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;


# direct methods
.method public static synthetic $r8$lambda$Az_1NkgFT57lN36kM1B0it_jRRg(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->lambda$onLoadFailed$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BQnUK7l4fRmnmALlVGJSEkZtKxc(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->lambda$onLoadFinished$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UEubg0I5x-dD5QKNQLsM_kRlW8Y(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->lambda$hasCloudVariable$2(Z)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$hasCloudVariable$2(Z)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->cloudStatus(Z)V

    return-void
.end method

.method private synthetic lambda$onLoadFailed$1()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->onLoadFail()V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$0(Ljava/lang/String;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->onLoadFinish(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasCloudVariable(Z)V
    .registers 4

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:hasCloudVariable"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:onInitSuccess"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$1;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setPlayerUI(Z)V

    return-void
.end method

.method public onLoadFailed()V
    .registers 3

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:onLoadFail"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .registers 4

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:onLoadFinished"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setPlayerUI(Z)V

    return-void
.end method

.method public onPlayerStart()V
    .registers 3

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:onPlayerStart"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v1

    invoke-interface {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getPlayViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击运行"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-virtual {v1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public toggleAccelerometer(Z)V
    .registers 4

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:toggleAccelerometer"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2d

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$300(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    const/16 v0, 0x190

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setUpdateInterval(I)V

    .line 267
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/Accelerometer;->startUpdates()V

    goto :goto_40

    .line 269
    :cond_2d
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/Accelerometer;->stopUpdates()V

    .line 270
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/Accelerometer;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    :goto_40
    return-void
.end method

.method public toggleRecorder(Z)V
    .registers 4

    const-string v0, "process-player-kn"

    const-string v1, "old-jsCallNative:toggleRecorder"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_13

    .line 293
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    return-void

    .line 296
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    .line 297
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$300(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V

    .line 298
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->requestAuthorization(Landroid/app/Activity;)V

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->prepareRecording()V

    .line 300
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;

    move-result-object p1

    const v0, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->startRecording(F)V

    return-void
.end method
