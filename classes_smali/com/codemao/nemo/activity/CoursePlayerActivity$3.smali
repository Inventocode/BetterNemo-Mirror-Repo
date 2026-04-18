.class Lcom/codemao/nemo/activity/CoursePlayerActivity$3;
.super Ljava/lang/Object;
.source "CoursePlayerActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/CoursePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 2

    .line 377
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(I)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$800(Lcom/codemao/nemo/activity/CoursePlayerActivity;I)V

    return-void
.end method

.method public onFinish()V
    .registers 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击返回"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->getViewExtraInfo()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 381
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->onBackPressed()V

    return-void
.end method

.method public onNext()V
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$600(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Z

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    if-eqz v0, :cond_bf

    .line 395
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_36

    goto/16 :goto_bf

    .line 398
    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_c4

    .line 399
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$208(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    .line 400
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$302(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 401
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$702(Lcom/codemao/nemo/activity/CoursePlayerActivity;J)J

    .line 402
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v0

    if-nez v0, :cond_89

    return-void

    .line 405
    :cond_89
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v1

    .line 407
    iget-object v3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/codemao/nemo/view/CourseVideoContainer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    iget-object v0, v0, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    invoke-static {v1, v0, v4, v4}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 409
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->preparedStartVideo()V

    .line 410
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$500(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    goto :goto_c4

    .line 396
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    const/16 p1, 0x4b

    if-lt p2, p1, :cond_9

    .line 428
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$900(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    :cond_9
    return-void
.end method

.method public onReset()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    return-void
.end method

.method public onStartPrepare()V
    .registers 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-首次播放视频"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-virtual {v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->getViewExtraInfo()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
