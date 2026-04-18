.class Lcom/codemao/nemo/activity/CourseActivity$6;
.super Ljava/lang/Object;
.source "CourseActivity.java"

# interfaces
.implements Lcom/codemao/nemo/listener/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CourseActivity;->initTemp()V
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

    .line 285
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5

    .line 289
    new-instance v0, Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CoursePackageData;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/CoursePackageData;->setId(J)V

    .line 291
    new-instance v1, Lcom/codemao/nemo/bean/CourseListDate;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/CourseListDate;-><init>()V

    .line 292
    iget-object v2, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/CourseListDate;->setItems(Ljava/util/List;)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CoursePackageData;->setCourse_page(Lcom/codemao/nemo/bean/CourseListDate;)V

    .line 294
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getBanner_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CoursePackageData;->setBanner_url(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CoursePackageData;->setTitle(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CoursePackageData;->setSubtitle(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CourseActivity;->access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPackage_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CoursePackageData;->setPackage_type(I)V

    .line 300
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity$6;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v1, v0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->start(Landroid/content/Context;Lcom/codemao/nemo/bean/CoursePackageData;I)V

    return-void
.end method
