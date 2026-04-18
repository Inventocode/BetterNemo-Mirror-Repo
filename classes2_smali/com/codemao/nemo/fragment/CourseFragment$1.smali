.class Lcom/codemao/nemo/fragment/CourseFragment$1;
.super Ljava/lang/Object;
.source "CourseFragment.java"

# interfaces
.implements Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseFragment;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubjectModelClickListener(ILcom/codemao/nemo/bean/viewmodel/SubjectItem;)V
    .registers 7

    .line 144
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getResponse()Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 145
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getCourseDetail()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 146
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getCourseDetail()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setLessonId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "教程页-点击进入课程"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->getCourseDetail()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->start(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V

    .line 149
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p2, v2, v0

    if-nez p2, :cond_64

    sget-object p2, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {p2}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->checkShowPop()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserHasShowDot(Ljava/lang/String;Z)V

    .line 153
    :cond_64
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    new-instance v0, Lcom/codemao/nemo/event/CourseDotChangeEvent;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/event/CourseDotChangeEvent;-><init>(J)V

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/fragment/CourseFragment;->courseDotChange(Lcom/codemao/nemo/event/CourseDotChangeEvent;)V

    :cond_72
    return-void
.end method

.method public onSubjectMoreClickListener(IJZ)V
    .registers 8

    const-wide/16 v0, 0x3

    cmp-long v2, v0, p2

    if-nez v2, :cond_16

    .line 130
    sget-object v2, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {v2}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->checkShowPop()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 131
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserHasShowDot(Ljava/lang/String;Z)V

    :cond_16
    const/4 v0, 0x0

    if-eqz p4, :cond_1f

    const-string p4, "教程页-点击左滑全部"

    .line 134
    invoke-static {p4, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_24

    :cond_1f
    const-string p4, "教程页-点击“查看全部”"

    .line 136
    invoke-static {p4, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    :goto_24
    iget-object p4, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CourseFragment;->access$000(Lcom/codemao/nemo/fragment/CourseFragment;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object v0

    invoke-static {p4, v0, p2, p3}, Lcom/codemao/nemo/activity/CourseActivity;->startActivity(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseModel;J)V

    .line 139
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
