.class Lcom/codemao/nemo/activity/CourseActivity$2;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CourseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CourseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CourseActivity;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V
    .registers 6

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 191
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "课程页-点击课程"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getCourseDetail()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getResponse()Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->start(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V

    :cond_3d
    return-void
.end method

.method public onSubjectMoreClickListener(IJZ)V
    .registers 5

    const/4 p1, 0x0

    if-eqz p4, :cond_a

    const-string/jumbo p4, "课程页-点击左滑全部"

    .line 200
    invoke-static {p4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_10

    :cond_a
    const-string/jumbo p4, "课程页-点击“查看全部”"

    .line 202
    invoke-static {p4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    :goto_10
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$100(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CourseActivity;->access$100(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lcom/codemao/nemo/activity/CourseActivity;->startActivity(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseModel;J)V

    .line 206
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$2;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_26
    return-void
.end method
