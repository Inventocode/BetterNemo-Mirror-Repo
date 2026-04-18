.class Lcom/codemao/nemo/activity/CourseActivity$1;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Lcom/codemao/nemo/listener/OnItemClickListener;


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

    .line 177
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$1;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$1;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 181
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$1;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "课程页-点击课程"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$1;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->start(Landroid/content/Context;Lcom/codemao/nemo/bean/CoursePackageData;I)V

    :cond_31
    return-void
.end method
