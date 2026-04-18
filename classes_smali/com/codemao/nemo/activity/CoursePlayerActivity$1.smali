.class Lcom/codemao/nemo/activity/CoursePlayerActivity$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CoursePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CoursePlayerActivity;->fetchCoursePackage(Ljava/lang/Long;Ljava/lang/Long;Z)V
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

.field final synthetic val$courseId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Ljava/lang/Long;)V
    .registers 3

    .line 208
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->val$courseId:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 234
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$000(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$000(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    .line 241
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V
    .registers 9

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$000(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    const-string/jumbo v0, "当前课程数据异常，请重试！"

    if-eqz p1, :cond_97

    .line 212
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_29

    goto :goto_97

    .line 216
    :cond_29
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v1, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$102(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CoursePackageData;)Lcom/codemao/nemo/bean/CoursePackageData;

    const/4 v1, 0x0

    .line 217
    :goto_2f
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 218
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 219
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->val$courseId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_5e

    .line 220
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v2, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$202(Lcom/codemao/nemo/activity/CoursePlayerActivity;I)I

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 223
    :cond_61
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-static {p1, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$302(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object p1

    if-nez p1, :cond_8c

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 228
    :cond_8c
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$400(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->access$500(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    return-void

    .line 213
    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->this$0:Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 208
    check-cast p1, Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;->onSuccess(Lcom/codemao/nemo/bean/CoursePackageData;)V

    return-void
.end method
