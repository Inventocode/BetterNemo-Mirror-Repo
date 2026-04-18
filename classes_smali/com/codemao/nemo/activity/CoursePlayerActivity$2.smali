.class Lcom/codemao/nemo/activity/CoursePlayerActivity$2;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CoursePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CoursePlayerActivity;->fetchCoursePackage(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

.field final synthetic val$course:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V
    .registers 3

    .line 258
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->val$course:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V
    .registers 9

    const-string/jumbo v0, "当前课程数据异常，请重试！"

    if-eqz p1, :cond_8d

    .line 262
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_24

    goto :goto_8d

    .line 266
    :cond_24
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v1, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$102(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CoursePackageData;)Lcom/codemao/nemo/bean/CoursePackageData;

    const/4 v1, 0x0

    .line 267
    :goto_2a
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 268
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 269
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->val$course:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_59

    .line 270
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v2, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$202(Lcom/codemao/nemo/activity/CoursePlayerActivity;I)I

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 273
    :cond_5c
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-static {p1, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$302(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object p1

    if-nez p1, :cond_87

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 279
    :cond_87
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$500(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    return-void

    .line 263
    :cond_8d
    :goto_8d
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 258
    check-cast p1, Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;->onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V

    return-void
.end method
