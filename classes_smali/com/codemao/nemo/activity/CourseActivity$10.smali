.class Lcom/codemao/nemo/activity/CourseActivity$10;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CourseActivity;->doNetCourses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/CoursePackageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CourseActivity;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 430
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 431
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_1b

    .line 433
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_1b
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/CourseActivity$10;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 409
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$002(Lcom/codemao/nemo/activity/CourseActivity;Lcom/codemao/nemo/bean/CoursePackageData;)Lcom/codemao/nemo/bean/CoursePackageData;

    if-eqz p1, :cond_17

    .line 411
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/CourseActivity;->access$602(Lcom/codemao/nemo/activity/CourseActivity;J)J

    :cond_17
    if-eqz p1, :cond_a7

    .line 413
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_38

    goto :goto_a7

    .line 418
    :cond_38
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getPad_banner_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_45
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getBanner_url()Ljava/lang/String;

    move-result-object v0

    :goto_49
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CourseActivity;->ivBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 419
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$700(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$700(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$700(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9d

    .line 422
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$700(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_9d
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$800(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 414
    :cond_a7
    :goto_a7
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$10;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 404
    check-cast p1, Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CourseActivity$10;->onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V

    return-void
.end method
