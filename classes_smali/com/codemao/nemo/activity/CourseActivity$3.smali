.class Lcom/codemao/nemo/activity/CourseActivity$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CourseActivity.java"


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

.field final synthetic val$spanNum:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CourseActivity;I)V
    .registers 3

    .line 213
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->val$spanNum:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_46

    if-gez p1, :cond_11

    goto :goto_46

    .line 219
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    if-eqz v0, :cond_29

    return v1

    .line 222
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-ltz p1, :cond_43

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->this$0:Lcom/codemao/nemo/activity/CourseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CourseActivity;->access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_43

    .line 223
    iget p1, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->val$spanNum:I

    div-int/2addr p1, v1

    return p1

    .line 226
    :cond_43
    iget p1, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->val$spanNum:I

    return p1

    .line 217
    :cond_46
    :goto_46
    iget p1, p0, Lcom/codemao/nemo/activity/CourseActivity$3;->val$spanNum:I

    return p1
.end method
